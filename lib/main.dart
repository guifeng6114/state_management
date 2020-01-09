import 'package:flutter/material.dart';
import 'package:state_management/router/router.dart';

import 'containers/catelogue/catelogue_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter state management',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: CateloguePage(),
      routes: router(context),
    );
  }
}
