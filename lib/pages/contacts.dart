import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  static const id = "/contacts";

  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
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
              Icons.add,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                alignment: const Alignment(-0.9, 0.2),
                child: const Text(
                  "Contacts",
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

      body: ListView(
        children: const <Widget>[
          Card(
            elevation: 0,
            child: ListTile(
              subtitle: Text("Online"),
              leading: Image(
                image: AssetImage("assets/images/avatar_1.png"),
              ),
              title: Text(
                'Aspen Mango',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/avatar_2.png"),
              ),
              title: Text(
                'Livia Herwitz',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/avatar.png"),
              ),
              title: Text(
                'Emerson Herwitz',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/avatar_5.png"),
              ),
              title: Text(
                'Ruben Dias',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/avatar_3.png"),
              ),
              title: Text(
                'Diana Torff',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/avatar_4.png"),
              ),
              title: Text(
                'Dulce Bator',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/avatar_6.png"),
              ),
              title: Text(
                'Sunnatillo',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/avatar_7.png"),
              ),
              title: Text(
                'Nasibullo',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),

      // pastki qismdagi joy
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

        enableFeedback: true,

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
            icon: Icon(Icons.person),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.ellipses_bubble),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
