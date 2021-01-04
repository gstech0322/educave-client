import 'package:graphql/client.dart';

import '../../core/config.dart';
import '../../core/util/error.dart';
import 'api_provider_interface.dart';

class ApiProvider implements IApiProvider {
  static final ApiProvider _singleton = ApiProvider._internal();
  static final GraphQLClient _client = GraphQLClient(
    cache: GraphQLCache(),
    link: HttpLink(
      Config.baseApiPath,
    ),
  );

  factory ApiProvider() {
    return _singleton;
  }

  ApiProvider._internal();

  @override
  Future<Map<String, dynamic>> query(
    String rawQuery, {
    Map<String, dynamic>? variables,
  }) async {
    final options = QueryOptions(
      document: gql(rawQuery),
      variables: variables ?? {},
    );

    final response = await _client.query(options);
    if (response.hasException) {
      throw CustomException(response.exception!.graphqlErrors[0].message);
    }

    return response.data!;
  }

  @override
  Future<Map<String, dynamic>> mutate(String rawQuery,
      {Map<String, dynamic>? variables}) async {
    final options = MutationOptions(
      document: gql(rawQuery),
      variables: variables ?? {},
    );

    final response = await _client.mutate(options);
    if (response.hasException) {
      throw CustomException(response.exception!.graphqlErrors[0].message);
    }

    return response.data!;
  }
}
