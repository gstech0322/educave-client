import 'package:flutter/foundation.dart';

import 'account_entity.dart';

class AccountProvider with ChangeNotifier {
  AccountEntity? _account;

  String get profilePic => _account!.profilePic;
  String get id => _account!.id;
  String get name => _account!.name;

  void setAccount(AccountEntity account) {
    _account = account;
  }
}
