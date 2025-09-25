// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:gerenciamento_de_tarefas/core/widgets/mixin/padding_app/padding_app.dart';

import '../image_icons/image_icons_app.dart';

class StateMsg extends StatelessWidget with PaddingApp {
  StateMsg({super.key, required this.icon, required this.title, required this.msg, required this.buttons});
  final IconImage icon;
  final String title;
  final String msg;
  final List<Widget> buttons;

  static StateMsg success(String msg, {String? title, required List<Widget> buttons}) =>
      StateMsg(icon: IconImage.success, title: title ?? "Sucesso!", msg: msg, buttons: buttons);

  static StateMsg empty(String msg, {String? title, required List<Widget> buttons}) =>
      StateMsg(icon: IconImage.empty, title: title ?? "Sua lista está vazia", msg: msg, buttons: buttons);

  static StateMsg error(String msg, {String? title, required List<Widget> buttons}) =>
      StateMsg(icon: IconImage.fail, title: title ?? "Erro!", msg: msg, buttons: buttons);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingScrollDefault,
      child: Center(
        child: Column(
          spacing: spacingColumnItensField,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageIconsApp(icon: icon),
            Text(title, style: Theme.of(context).textTheme.headlineMedium),
            Text(msg, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
            Column(children: buttons),
          ],
        ),
      ),
    );
  }
}
