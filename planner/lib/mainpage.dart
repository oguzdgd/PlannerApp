import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Main(),
      ),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _Main createState() => _Main();
}

class _Main extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planner"),
        centerTitle: true, //Appbar olmadan drawer menü gözükmüyor.
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Oğuzhan Doğdu"),
              accountEmail: Text("oguzhn.dgd@gmail.com"),
              currentAccountPicture: Image.asset("images/mine.jpeg"),
            ),
            Expanded(
              child: ListView(
                children: [
                  buildDrawer(
                    clickedmenu: "Clicked on Home Page",
                    menu: "Home",
                    avatar: Icons.home,
                  ),
                  buildDrawer(
                      clickedmenu: "Clicked on Profile Page",
                      menu: "Profile",
                      avatar: Icons.account_box),
                  buildDrawer(
                      clickedmenu: "Clicked on Contact",
                      menu: "Contact",
                      avatar: Icons.phone),
                  buildDrawer(
                      clickedmenu: "Clicked on About Page",
                      menu: "About",
                      avatar: Icons.favorite),
                  buildDrawer(
                      clickedmenu: "Clicked on Settings",
                      menu: "Settings",
                      avatar: Icons.settings),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.horizontal, //for left right scroolling
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(130),
                margin: EdgeInsets.all(70),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.yellow,
                padding: EdgeInsets.all(130),
                margin: EdgeInsets.all(70),
                child: Text("Aaaa"),

              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(130),
                margin: EdgeInsets.all(70),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.orange,
                padding: EdgeInsets.all(130),
                margin: EdgeInsets.all(70),
              ),
            ],
          )),
    );
  }

  Widget buildDrawer(
      {required String clickedmenu,
      required String menu,
      required IconData avatar}) {
    return InkWell(
      onTap: () {
        print(menu);
      },
      splashColor: Colors.greenAccent, //Tıklandığında gözüken renk
      child: ListTile(
        leading: Icon(
          avatar,
          color: Colors.blue,
        ), //Listedeki satırların en basi icin
        title: Text(menu), // Yazı kısmı
        trailing: Icon(Icons.chevron_right), //Listedeki satırlarin en sonu icin
      ),
    );
  }
}

/*decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 280, horizontal: 1),
                border: OutlineInputBorder(),
              ),*/
