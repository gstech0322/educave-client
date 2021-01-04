class AccountCommentDataDto {
  final String _id;
  final String _profilePic;
  final String _name;

  AccountCommentDataDto(this._id, this._profilePic, this._name);

  String get id => _id;
  String get profilePic => _profilePic;
  String get name => _name;
}
