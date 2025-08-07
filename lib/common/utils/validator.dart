class Validator {
  Validator._();

  static String? validateName(String? value) {
    final condition =
        RegExp(r"^([a-zà-ÿA-ZÀ-Ÿ'.,\- ]+)$", caseSensitive: false);
    if (value != null && value.isEmpty) {
      return ('*Esse campo não pode ser vazio.');
    }
    if (value != null && !condition.hasMatch(value)) {
      return ('Digite uma informação válida.');
    }
    return null;
  }

  static String? validateEmail(String? value) {
    final condition =
        RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    if (value != null && value.isEmpty) {
      return ('*Esse campo não pode ser vazio.');
    }
    if (value != null && !condition.hasMatch(value)) {
      return ('Digite um email válido.');
    }
    return null;
  }

  static String? validatePassword(String? value) {
    final condition = RegExp(r'^(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}$');
    if (value != null && value.isEmpty) {
      return ('*Esse campo não pode ser vazio.');
    }
    if (value != null && !condition.hasMatch(value)) {
      return ('Formato de senha inválido.');
    }
    return null;
  }

  static String? validateConfirmPassword(String? first, String? second) {
    if (first != second) {
      return ("As senhas são diferentes. Tente novamente.");
    }
    return null;
  }
}
