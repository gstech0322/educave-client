abstract class Config {
  static const bool debug = true;

  static String get baseApiPath {
    return debug ? 'http://localhost:3002/gql' : '';
  }
}
