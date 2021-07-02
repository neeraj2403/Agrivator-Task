import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:rider_app/order_deliver.dart';
import 'package:rider_app/order_notify.dart';
import 'package:rider_app/rider_home.dart';
import 'package:rider_app/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rider App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFFF6F8FF),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Rider App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Kochi, Kerala - 650601",style: TextStyle(color: Colors.blueAccent,
      //   fontSize: 12),
      //   ),
      //   // actions: [
      //   //   IconButton(onPressed: (){}, icon: Icon(Icons.arrow_downward,
      //   //   size: 20,))
      //   // ],
      // leading: IconButton(
      //   icon: Icon(Icons.location_on,
      //   color: Color.fromRGBO(58, 171, 58, 1),),
      //   onPressed: (){},
      // ),
      // backgroundColor: Colors.transparent,
      // elevation: 0,
      // ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            RiderHome(),
            OrderDeliver(),
            Profile(),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        // showElevation: false,
        backgroundColor: Color.fromRGBO(246, 248, 255, 1),
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Home'),
              activeColor: Color.fromRGBO(9, 174, 75, 1),
              inactiveColor: Color.fromRGBO(2, 18, 18, 0.6),
              icon: Icon(Icons.home)),
          BottomNavyBarItem(
            title: Text('Order'),
            icon: Icon(Icons.assignment_outlined),
            activeColor: Color.fromRGBO(9, 174, 75, 1),
            inactiveColor: Color.fromRGBO(2, 18, 18, 0.6),
          ),
          BottomNavyBarItem(
            title: Text('Profile'),
            icon: Icon(Icons.person),
            activeColor: Color.fromRGBO(9, 174, 75, 1),
            inactiveColor: Color.fromRGBO(2, 18, 18, 0.6),
          ),
        ],
      ),
    );
  }
}
