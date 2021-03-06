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
    return (Neumorphic(
      style: NeumorphicStyle(
          color: Colors.white,
          depth: 1.2,
          surfaceIntensity: 0.2,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
          lightSource: LightSource.top,
          shadowLightColor: Colors.green,
          shadowDarkColor: Colors.green,
          shape: NeumorphicShape.concave),

      // decoration: new BoxDecoration(boxShadow: [
      //   // new BoxShadow(
      //   //   color: Color.fromRGBO(255, 255, 255, 0.06),
      //   //   offset: const Offset(
      //   //     2.0,
      //   //     8.0,
      //   //   ),
      //   //   blurRadius: 60,
      //   // ),
      //   new BoxShadow(
      //     color: Color.fromRGBO(46, 185, 102, 0.12),
      //     offset: const Offset(
      //       -2.0,
      //       -2.0,
      //     ),
      //     blurRadius: 5,
      //   ),
      //   new BoxShadow(
      //     color: Color.fromRGBO(46, 185, 102, 0.12),
      //     offset: const Offset(
      //       4.0,
      //       4.0,
      //     ),
      //     blurRadius: 5,
      //   )
      // ]),
      child: SizedBox(
          width: 7.5 * (MediaQuery.of(context).size.width / 10),
          height: 40,
          child: Padding(
              padding: EdgeInsets.only(top: 12, bottom: 5, left: 18),
              child: Text('$s',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.71), fontSize: 13)))),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 45, right: 25.0, left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  'My Profile',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(),
                  child: Image.asset('assets/Logo.png')),
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 40, bottom: 50),
            child: Neumorphic(
                style: NeumorphicStyle(
                  color: Colors.white,
                  depth: 15,
                  surfaceIntensity: 0.2,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
                  lightSource: LightSource.top,
                  shadowDarkColor: Colors.black,
                  shape: NeumorphicShape.concave,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset('assets/profile.jpg',
                        height: 150, width: 150)))),
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
