import 'package:flutter/material.dart';
import 'package:flutter_components/pages/components/datatable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      // home: const DisplayComponents(title: 'Components'),
      home: const DatatableYetu(
        title: "Searching...",
      ),
    );
  }
}
