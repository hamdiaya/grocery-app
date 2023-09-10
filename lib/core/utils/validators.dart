String? passwordValidator( password) {
  if (password == null|| password.isEmpty) {
    return 'filed required';
  } else {
    if (password.length < 10) {
      return 'invalid password (<10)';
    } else {
      return null;
    }
  }
}
String? emailValidator( email) {
  if (email == null||email.isEmpty) {
    return 'filed required';
  } else {
    if (email.length < 5 || !email.contains('@')) {
      return 'invalid email';
    } else {
      return null;
    }
  }
}

String? userNameValidator(name) {
  if (name == null||name.isEmpty) {
    return 'filed required';
  } else {
    if (name.length < 3) {
      return 'invalid name';
    } else {
      return null;
    }
  }
}