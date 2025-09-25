import 'package:flutter/material.dart';
import 'package:gerenciamento_de_tarefas/core/cache/cache_binding.dart';
import 'package:get/route_manager.dart';

import 'core/core_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: CoreBinding(),
      getPages: [GetPage(name: "/", page: () => Home())],
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
