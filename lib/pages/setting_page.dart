import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  static const id = "/setting_page";

  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.square_arrow_right,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                alignment: const Alignment(-0.85, 0.2),
                child: const Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, right: 55),
            child: const Text(
              "Saved media",
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35, right: 50),
            child: const Text(
              "Notfilications",
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35, right: 115),
            child: const Text(
              "Profile",
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35, left: 22),
            child: const Text(
              "Privacy and security",
              style: TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,

        // tanlangan iconlar
        selectedIconTheme: const IconThemeData(size: 27),
        selectedItemColor: Colors.black,

        // tanlanmagan iconlar
        unselectedIconTheme: const IconThemeData(size: 24),
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: false,

        //  bu telefon yon tomini bn turganda icon va yozubvini to'g'rlab beradi
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,

        // bu qaysi button bosilganini ko'rsatadi
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        // bu iconlar korinishi uchun
        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.gear_solid),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
