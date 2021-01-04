bool errorsAreEmpty(Map<String, String?> errors) {
  for (String? error in errors.values) {
    if (error != null) return false;
  }

  return true;
}
