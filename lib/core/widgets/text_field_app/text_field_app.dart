import 'package:flutter/material.dart';

class TextFieldApp extends StatelessWidget {
  const TextFieldApp({
    super.key,
    this.ctr,
    this.label,
    this.hint,
    this.suffix,
    this.prefix,
    this.hasObscureTxt = false,
    this.validator,
    this.type,
    this.minLines,
    this.onChangeTxt,
    this.onTapEnter,
    this.maxLines,
    this.autoFocus,
    this.textInputAction,
  });
  final TextEditingController? ctr;
  final String? label;
  final String? hint;
  final Widget? suffix;
  final Widget? prefix;
  final bool hasObscureTxt;
  final String? Function(String?)? validator;
  final TextInputType? type;
  final int? minLines;
  final int? maxLines;
  final Function(String?)? onChangeTxt;
  final Function(String?)? onTapEnter;
  final bool? autoFocus;
  final TextInputAction? textInputAction;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus ?? false,
      textInputAction: textInputAction,
      keyboardType: type,
      minLines: minLines,
      maxLines: maxLines,
      controller: ctr,
      validator: validator,
      obscureText: hasObscureTxt,
      onChanged: onChangeTxt,
      onFieldSubmitted: onTapEnter,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        labelText: label,
        hintText: hint,
        alignLabelWithHint: true,
        suffixIcon: suffix,
        prefixIcon: prefix,
      ),
    );
  }
}
