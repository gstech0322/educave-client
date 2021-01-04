import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/util/error.dart';
import '../../../routes/routes.dart';
import '../../../widgets/cta_button.dart';
import '../../../widgets/error_text.dart';
import '../../account/account_entity.dart';
import '../../account/account_provider.dart';
import '../widgets/auth_text_input.dart';
import 'login_vm.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? error;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<LoginViewModel>(context);
    final accountProvider =
        Provider.of<AccountProvider>(context, listen: false);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: MediaQuery.of(context).size.width * 0.3,
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Educave',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 60,
            ),
            Form(
              child: Column(
                children: <Widget>[
                  AuthTextInput(
                    controller: emailController,
                    hintText: 'Email',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AuthTextInput(
                    controller: passwordController,
                    hintText: 'Password',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CtaButton(
                    onPressed: () async {
                      AccountEntity account;
                      try {
                        account = await vm.login(
                          emailController.text,
                          passwordController.text,
                        );
                      } on CustomException catch (e) {
                        setState(() {
                          error = e.cause;
                        });
                        return;
                      }

                      accountProvider.setAccount(account);
                      Navigator.pushReplacementNamed(
                        context,
                        AppRouteNames.app,
                      );
                    },
                    text: 'Login',
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                  ),
                  ErrorText(text: error)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
