import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CircleRing extends StatelessWidget {
  const CircleRing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.circle(),
            color: Color.fromRGBO(246, 248, 255, 1),
            shadowLightColor: Colors.green,
            shadowDarkColor: Colors.green,
            //Color.fromRGBO(46, 185, 102, 0.5),
            // shadowDarkColorEmboss: Color.fromRGBO(0, 0, 0, 1),
            // shadowLightColorEmboss: Color.fromRGBO(0, 0, 0, 1),
            depth: 5,
            // border: NeumorphicBorder(width: 0.1),
            shape: NeumorphicShape.concave),
        child: Center(
          child: Container(
              //   margin: EdgeInsets.only(top: 60),
              height: 200,
              width: 200,
              // child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Today’s Earnings',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '₹500',
                    style: TextStyle(fontSize: 50),
                  )
                ],
              )),
          // decoration: BoxDecoration(
          //   border:
          //       Border.all(width: 1, color: Color.fromRGBO(46, 185, 102, 0.06)),
          //   borderRadius: BorderRadius.all(Radius.circular(200)),
          //   color: Color.fromRGBO(246, 248, 255, 1),
          //   boxShadow: [
          //     new BoxShadow(
          //       color: Color.fromRGBO(46, 185, 102, 0.5),
          //       offset: const Offset(
          //         -2.0,
          //         -2.0,
          //       ),
          //       blurRadius: 10,
          //     ),
          //     new BoxShadow(
          //       color: Color.fromRGBO(46, 185, 102, 0.5),
          //       offset: const Offset(
          //         4.0,
          //         4.0,
          //       ),
          //       blurRadius: 10,
          //     )
          //   ],
          // ))),
        ));
  }
}
