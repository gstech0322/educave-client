import 'package:flutter/material.dart';

import '../../widgets/persistent_tab.dart';
import '../account/account_page.dart';
import '../calendar/calendar_page.dart';
import '../home/home_screen.dart';
import '../search/search_control.dart';
import '../user/user_screen.dart';
import 'app_bars/app_bars.dart';

class AppControl extends StatefulWidget {
  const AppControl({Key? key}) : super(key: key);

  @override
  State<AppControl> createState() => _AppControlState();
}

class _AppControlState extends State<AppControl> {
  final PageController _myPage = PageController(initialPage: 0);

  @override
  void dispose() {
    _myPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int page = 0;
    if (_myPage.hasClients) page = _myPage.page!.toInt();

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: appBars[page],
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: PageView(
          controller: _myPage,
          children: const <Widget>[
            PersistentTab(child: Home()),
            PersistentTab(child: SearchControl()),
            PersistentTab(child: Calendar()),
            PersistentTab(child: Account()),
          ],
          physics: const NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 50,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: IconButton(
                    iconSize: 34,
                    icon: Icon(
                      page == 0 ? Icons.home : Icons.home_outlined,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _myPage.jumpToPage(0);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    iconSize: 35,
                    icon: Icon(page == 1 ? Icons.people : Icons.people_outline),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _myPage.jumpToPage(1);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      iconSize: 0,
                      icon: const Icon(null),
                      onPressed: () {}),
                ),
                Expanded(
                  child: IconButton(
                    iconSize: 27,
                    icon: Icon(page == 2
                        ? Icons.calendar_today
                        : Icons.calendar_today_outlined),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _myPage.jumpToPage(2);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    iconSize: 28,
                    icon:
                        Icon(page == 3 ? Icons.circle : Icons.circle_outlined),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _myPage.jumpToPage(3);
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: Theme.of(context).colorScheme.primary,
            splashColor: Colors.transparent,
            highlightElevation: 3,
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 33,
            ),
          ),
        ),
      ),
    );
  }
}
