import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  text(String s) {
    return (Container(
      decoration: new BoxDecoration(boxShadow: [
        // new BoxShadow(
        //   color: Color.fromRGBO(255, 255, 255, 0.06),
        //   offset: const Offset(
        //     2.0,
        //     8.0,
        //   ),
        //   blurRadius: 60,
        // ),
        new BoxShadow(
          color: Color.fromRGBO(46, 185, 102, 0.12),
          offset: const Offset(
            -2.0,
            -2.0,
          ),
          blurRadius: 5,
        ),
        new BoxShadow(
          color: Color.fromRGBO(46, 185, 102, 0.12),
          offset: const Offset(
            4.0,
            4.0,
          ),
          blurRadius: 5,
        )
      ]),
      child: SizedBox(
          width: 370,
          height: 55,
          child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                  child: Text(
                    '$s',
                    textAlign: TextAlign.left,
                  )))),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 35, left: 5),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                ),
                onPressed: () {},
              ),
              Text(
                'My Profile',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 40, bottom: 30),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('assets/profile.jpg',
                    height: 200, width: 200))),
        Column(children: [
          text('Rider Name'),
          SizedBox(height: 15),
          text('Vechile Name'),
          SizedBox(height: 15),
          text('Vehicle Reg. No.'),
          SizedBox(height: 15),
          text('License Number'),
          SizedBox(height: 15),
          text('Phone'),
          SizedBox(height: 15),
          text('Total Earnings'),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFDDF5E2),
                      // padding: EdgeInsets.only(left: 20, right: 20)
                      fixedSize: Size(110, 20)),
                  child: Text('Contact Us',
                      style: TextStyle(color: Color(0xFF09AE4B)))),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFDDF5E2), fixedSize: Size(110, 20)),
                  child: Text('About',
                      style: TextStyle(color: Color(0xFF09AE4B)))),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFDDF5E2), fixedSize: Size(110, 20)),
                  child: Text('Settings',
                      style: TextStyle(color: Color(0xFF09AE4B)))),
            ],
          ),
          SizedBox(height: 50),
        ]),
      ],
    )));
  }
}
