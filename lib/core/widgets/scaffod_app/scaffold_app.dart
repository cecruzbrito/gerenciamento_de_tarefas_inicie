// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ScaffoldApp extends StatelessWidget {
  const ScaffoldApp({super.key, required this.body, this.appbar, this.floatingActionButton});
  final Widget body;
  final PreferredSizeWidget? appbar;
  final Widget? floatingActionButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      body: SafeArea(child: body),
      appBar: appbar ?? AppBar(),
    );
  }
}
