import 'package:flutter/foundation.dart';

import '../../core/types/view_model.dart';
import '../group/group_model.dart';
import 'groups_model.dart';

abstract class GroupsViewModel with ViewModel {
  final GroupsModel _model;
  bool _mounted = true;

  GroupsViewModel(this._model);

  List<GroupModel>? get groups => _model.groups;
  bool get groupsLoaded => _model.groups != null;

  @protected
  Future<void> loadGroups() async {
    await _model.load();

    if (_mounted) {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _mounted = false;
    super.dispose();
  }
}
