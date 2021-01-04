class MutualGroupEntity {
  final String _id;
  final String _name;

  MutualGroupEntity({required String id, required String name})
      : _id = id,
        _name = name;

  String get name => _name;
}
