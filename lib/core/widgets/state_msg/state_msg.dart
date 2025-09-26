// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../image_icons/image_icons_app.dart';
import '../mixin/padding_app/padding_app.dart';

class StateMsg extends StatelessWidget with PaddingApp {
  StateMsg({super.key, required this.icon, required this.title, required this.msg, required this.buttons});
  final IconImage icon;
  final String title;
  final String msg;
  final List<Widget> buttons;

  static StateMsg success(String msg, {String? title, required List<Widget> buttons, Key? key}) =>
      StateMsg(icon: IconImage.success, title: title ?? "Sucesso!", msg: msg, buttons: buttons, key: key);

  static StateMsg empty(String msg, {String? title, required List<Widget> buttons, Key? key}) =>
      StateMsg(icon: IconImage.empty, title: title ?? "Sua lista está vazia", msg: msg, buttons: buttons, key: key);

  static StateMsg error(String msg, {String? title, required List<Widget> buttons, Key? key}) =>
      StateMsg(icon: IconImage.fail, title: title ?? "Erro!", msg: msg, buttons: buttons, key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: paddingScrollDefault,
      child: Center(
        child: Column(
          spacing: spacingColumnItensField,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageIconsApp(icon: icon),
            Text(title, style: textTheme.headlineMedium),
            Text(msg, style: textTheme.bodyMedium, textAlign: TextAlign.center),
            Column(children: buttons),
          ],
        ),
      ),
    );
  }
}
