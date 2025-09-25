import 'package:flutter/material.dart';

import '../mixin/padding_app/padding_app.dart';

class HeaderBodyApp extends StatelessWidget with PaddingApp {
  HeaderBodyApp({super.key, required this.body, required this.title, this.padding});
  final String title;
  final Widget body;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Padding(
          padding: padding ?? paddingScrollDefault,
          child: Text(title, style: TextTheme.of(context).headlineMedium),
        ),
        body,
      ],
    );
  }
}
