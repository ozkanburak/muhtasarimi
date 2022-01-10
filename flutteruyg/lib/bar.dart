import 'package:flutter/material.dart';
import 'package:login_page_day_23/login.dart';
import 'package:login_page_day_23/main.dart';
import 'package:navigation_rail/navigation_rail.dart';

//başlık
class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H3S',
      theme: _theme(ThemeData.light().copyWith(
        accentColor: Colors.red,
      )),
      home: MyHomePage(title: 'H3S'),
    );
  }
  //tema renk

  ThemeData _theme(ThemeData base) {
    return ThemeData(
      primarySwatch: Colors.blue,
      appBarTheme: base.appBarTheme.copyWith(elevation: 0.0),
      floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
        elevation: 2.0,
        backgroundColor: base.accentColor,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavRail(
      drawerHeaderBuilder: (context) {
        return Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Burak Özkan(Egitmen)"),
              accountEmail: Text("ozkanburaak@gmail.com"),
            ),
            
          ],
        );
      },
      //açılır bar
      drawerFooterBuilder: (context) {
        return Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Profil"),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("Hakkımızda"),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("Çıkış"),
              onTap: () {
                 Navigator.push(
                   context,
                    MaterialPageRoute(builder: (context) => HomePage()),
        );
                },
            ),
          ],
        );
      },
      
      
      currentIndex: _currentIndex,
      onTap: (val) {
        if (mounted)
          setState(() {
            _currentIndex = val;
          });
      },
      // baslık
      title: Text(widget.title),
      body: new Center(
        child: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(10),
  crossAxisSpacing: 5,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      width: 200,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.blueAccent,
      elevation: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.info, size: 50),
            title: Text('Burak Özkan', style: TextStyle(color: Colors.white)),
            subtitle: Text('Fitness', style: TextStyle(color: Colors.white30)),
          ),
          
        ],
      ),
    ),

    ),
    Container(
      width: 200,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.blueAccent,
      elevation: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.info, size: 50),
            title: Text('Serpil YILDIRIM', style: TextStyle(color: Colors.white)),
            subtitle: Text('Diyet', style: TextStyle(color: Colors.white30)),
          ),
          
        ],
      ),
    ),

    ),
   Container(
      width: 200,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.blueAccent,
      elevation: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.info, size: 50),
            title: Text('Serpil YILDIRIM', style: TextStyle(color: Colors.white)),
            subtitle: Text('Diyet', style: TextStyle(color: Colors.white30)),
          ),
          
        ],
      ),
    ),

    ),
    Container(
      width: 200,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.blueAccent,
      elevation: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.info, size: 50),
            title: Text('Serpil YILDIRIM', style: TextStyle(color: Colors.white)),
            subtitle: Text('Diyet', style: TextStyle(color: Colors.white30)),
          ),
          
        ],
      ),
    ),

    ),
  
  ],
)

      ),
      tabs: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text("Kategori"),
          icon: Icon(Icons.folder),
          
        ),
        BottomNavigationBarItem(
          title: Text("Eğitmenler"),
          icon: Icon(Icons.history),
          
        ),
        BottomNavigationBarItem(
          title: Text("Chat"),
          icon: Icon(Icons.photo_library),
        ),
        BottomNavigationBarItem(
          title: Text("Profil"),
          icon: Icon(Icons.camera),
        ),
      ],
    );   
  }
}


