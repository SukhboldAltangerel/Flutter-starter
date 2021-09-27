import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes/router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:routemaster/routemaster.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('myBox');
  await Hive.openBox('chatBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: RoutemasterDelegate(routesBuilder: (_) => routes),
      routeInformationParser: RoutemasterParser(),
    );
  }
}
