class CustomException implements Exception {
  String _cause;
  CustomException(this._cause);

  String get cause => _cause;
}
