mixin ValidatorFields {
  String? validatorEmpty(String? value) {
    if ((value ?? "").isEmpty) return "Campo obrigatório.";
    return null;
  }
}
