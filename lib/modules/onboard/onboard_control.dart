import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/value_objects/value_objects.dart';
import '../../data/providers/api_provider.dart';
import '../../widgets/safearea.dart';
import '../account/account_entity.dart';
import '../account/account_provider.dart';
import '../app/app_control.dart';
import '../auth/login/login_model.dart';
import '../auth/login/login_repository.dart';
import '../auth/login/login_screen.dart';
import '../auth/login/login_vm.dart';

class OnBoardControl extends StatelessWidget {
  const OnBoardControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<AccountProvider>(context, listen: false).setAccount(
      AccountEntity(
        id: '1',
        email: EmailAddress('christian@uwaterloo.ca'),
        firstName: 'Christian',
        lastName: 'Stefaniw',
        profilePic:
            'https://media-exp1.licdn.com/dms/image/C5603AQHLtS1MARQqOg/profile-displayphoto-shrink_400_400/0/1653073727247?e=1658361600&v=beta&t=NWLMe2E2VwZnFpVktFFlRbQeWS1AAyrAiZoPoPlnt8s',
      ),
    );

    /*return ChangeNotifierProvider(
      create: (_) => LoginViewModel(
        LoginModel(
          LoginRepository(
            ApiProvider(),
          ),
        ),
      ),
      child: const Login(),
    );
    */

    return const MySafeArea(
      child: AppControl(),
    );
  }
}
