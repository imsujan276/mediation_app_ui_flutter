/// password validator
String? validatePassword({required String string}) {
  if (string.isEmpty) {
    return "* Required";
  } else if (string.length < 6) {
    return "Password should be atleast 6 characters";
  } else if (string.length > 15) {
    return "Password should not be greater than 15 characters";
  } else
    return null;
}

String? confirmPassword({required String password, required String cPassword}) {
  if (password == cPassword) {
    return null;
  } else
    return "Passwords do not match.";
}
