class GroupEntity {
  final String id;
  final String name;
  final String summary;
  final String groupPic;
  final String backgroundPic;
  final int numPosts;

  bool _joined;
  int _numMembers;

  GroupEntity({
    required this.id,
    required this.name,
    required this.summary,
    required this.groupPic,
    required this.backgroundPic,
    required this.numPosts,
    required bool joined,
    required int numMembers,
  })  : _joined = joined,
        _numMembers = numMembers;

  GroupEntity.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        summary = json['summary'],
        groupPic = json['groupPic'],
        backgroundPic = json['backgroundPic'],
        _joined = json['joined'],
        _numMembers = json['numMembers'],
        numPosts = json['numPosts'];

  bool get joined => _joined;
  int get numMembers => _numMembers;

  void join() {
    _joined = true;
    _numMembers++;
  }

  void leave() {
    _joined = false;
    _numMembers--;
  }
}
