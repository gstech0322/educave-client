abstract class IApiProvider {
  Future<Map<String, dynamic>> query(
    String rawQuery, {
    Map<String, dynamic>? variables,
  });

  Future<Map<String, dynamic>> mutate(
    String rawQuery, {
    Map<String, dynamic>? variables,
  });
}
