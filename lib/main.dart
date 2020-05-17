import 'package:flutter/material.dart';

import 'desc_order_screen.dart';
import 'first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Dribble challenge',
      initialRoute: '/',
      routes: {
         '/': (context) => FirstScreen(), //here i will use pushnamed to do it
         DescOrderScreen.routeName: (context) => DescOrderScreen(),
      },
    );
  }
}
