import 'package:contact_page/pages/contacts.dart';
import 'package:contact_page/pages/my_bottom_bar.dart';
import 'package:contact_page/pages/setting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w500)),
      ),
      home: const Contacts(),
      routes: {
        Contacts.id: (context) => const Contacts(),
        MyBottomBar.id: (context) => const MyBottomBar(),
        SettingPage.id: (context) => const SettingPage(),
      },
    );
  }
}
