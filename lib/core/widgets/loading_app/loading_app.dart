import 'package:flutter/material.dart';

class LoadingApp extends StatelessWidget {
  const LoadingApp({super.key, this.text = "Aguarde"});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [CircularProgressIndicator(), Text(text)],
      ),
    );
  }
}
