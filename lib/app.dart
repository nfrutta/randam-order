import 'package:flutter/material.dart';

import 'pages/top_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const TopPage(title: 'Flutter Demo Home Page'),
    );
  }
}
