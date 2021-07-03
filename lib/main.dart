import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:rider_app/order_deliver.dart';
import 'package:rider_app/order_notify.dart';
import 'package:rider_app/rider_home.dart';
import 'package:rider_app/profile.dart';
import 'package:rider_app/to_store.dart';
import 'package:rider_app/to_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rider App',
      routes: {
        '/Store' : (BuildContext context)=>ToStore(),
        '/User' : (BuildContext context)=>ToUser(),
        '/Deliver' : (BuildContext context)=>OrderDeliver(),

      },
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFFF6F8FF),
        fontFamily: 'Reem Kufi',
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Rider App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  
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
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            RiderHome(),
            OrderNotify(),
            Profile(),
            
          ],
        ),
      ),

      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.08),
                  blurRadius: .0,
                  offset: Offset(2.0, 2.0))
            ],
          ),
          child: BottomNavyBar(
            backgroundColor: Color.fromRGBO(246, 248, 255, 1),
            selectedIndex: _currentIndex,
            itemCornerRadius: 10,
            showElevation: true,
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
          )),
    );
  }
}
