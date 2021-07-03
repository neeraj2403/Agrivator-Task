import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
        width: 7.5 * (MediaQuery.of(context).size.width / 10),
        
          height: 40,
          child: Card(
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                  padding: EdgeInsets.only(top: 7, bottom: 5, left: 18),
                  child: Text('$s',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.71),
                          fontSize: 13)))),
        )));
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
            padding: EdgeInsets.only(top: 40, bottom: 50),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('assets/profile.jpg',
                    height: 150, width: 150))),
        Column(children: [
          text('Rider Name'),
          SizedBox(height: 10),
          text('Vechile Name'),
          SizedBox(height: 10),
          text('Vehicle Reg. No.'),
          SizedBox(height: 10),
          text('License Number'),
          SizedBox(height: 10),
          text('Phone'),
          SizedBox(height: 10),
          text('Total Earnings'),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NeumorphicButton(
                  style: NeumorphicStyle(
                      color: Color(0xFFDDF5E2),
                      depth: 4,
                      shape: NeumorphicShape.concave,
                      lightSource: LightSource.topLeft,
                      // shadowLightColor: Colors.green,
                      shadowDarkColor: Colors.green),
                  onPressed: () {},
                  child: Text('Contact Us',
                      style: TextStyle(
                          color: Color(0xFF09AE4B),
                          fontWeight: FontWeight.w700))),
              NeumorphicButton(
                  style: NeumorphicStyle(
                      color: Color(0xFFDDF5E2),
                      depth: 4,
                      shape: NeumorphicShape.concave,
                      lightSource: LightSource.topLeft,
                      // shadowLightColor: Colors.green,
                      shadowDarkColor: Colors.green),
                  onPressed: () {},
                  child: Text('About',
                      style: TextStyle(
                          color: Color(0xFF09AE4B),
                          fontWeight: FontWeight.w700))),
              NeumorphicButton(
                  style: NeumorphicStyle(
                      color: Color(0xFFDDF5E2),
                      depth: 4,
                      shape: NeumorphicShape.concave,
                      lightSource: LightSource.topLeft,
                      // shadowLightColor: Colors.green,
                      shadowDarkColor: Colors.green),
                  onPressed: () {},
                  child: Text('Setting',
                      style: TextStyle(
                          color: Color(0xFF09AE4B),
                          fontWeight: FontWeight.w700)))
            ],
          ),
          SizedBox(height: 30),
        ]),
      ],
    )));
  }
}
