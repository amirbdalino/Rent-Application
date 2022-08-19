import 'package:email_validator/email_validator.dart';

String? passwordValidator(String? password) {
  if (password != null && !isAlphaNumeric(password)) {
    return 'Password has to be 8 characters long with atleast one number';
  }

  return null;
}

/// Regular expression for password validation
bool isAlphaNumeric(String? value) {
  String pattern = r'^(?=.*\d)(?=.*[a-z])(?=.*[a-zA-Z]).{8,}$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value!);
}

String? emailValidator(String? email) {
  if (email != null && !EmailValidator.validate(email.trim())) {
    return "Please enter valid email";
  }

  return null;
}
String? confirmPasswordValidator(String? password) {
  if (password != null && !isAlphaNumeric(password)) {
    return 'Password has to be 8 characters long with atleast one number';
  }

  return null;
}
