import 'package:flutter/material.dart';
import 'package:rider_app/popmenuButton.dart';
import 'package:rider_app/top_bar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ToStore extends StatefulWidget {
  const ToStore({Key? key}) : super(key: key);

  @override
  _ToStoreState createState() => _ToStoreState();
}

class _ToStoreState extends State<ToStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              child: Column(children: [
        TopBar(),
        SizedBox(
          height: 250,
          child: Padding(
              padding: EdgeInsets.only(top: 100), child: Text('Map here')),
        ),
        Neumorphic(
            style: NeumorphicStyle(
              color: Color(0xFFF6F8FF),
              // FFF6F8FF
              depth: 20,
              shape: NeumorphicShape.flat,
              border: NeumorphicBorder(
                  width: 0.3, color: Color.fromRGBO(42, 70, 112, 0.1)),
              // intensity: 1,
              // surfaceIntensity: 700,
              shadowDarkColor: Color.fromRGBO(24, 50, 115, 0.50),
              // shadowLightColor: Color.fromRGBO(24, 50, 115, 1),
              lightSource: LightSource.topLeft,
            ),
            margin: const EdgeInsets.all(16.0),
            child: Container(
              height: 0.45 * MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Store A',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Manarcadu Kavala',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              '2km',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text('May 4 2020, 17:38'),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 10),
                              child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset('assets/store.jpg'),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopMenu(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.check_box_outlined,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Center(
                        child: Text(
                      'REACHED: Now start gathering ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        width: 4.25 * (MediaQuery.of(context).size.width / 10),
                        child: NeumorphicButton(
                            // padding: EdgeInsets.only(left: 21,right: 21,top: 10),
                            style: NeumorphicStyle(
                                color: Color(0xFFDDF5E2),
                                depth: 4,
                                shape: NeumorphicShape.concave,
                                lightSource: LightSource.topLeft,
                                // shadowLightColor: Colors.green,
                                shadowDarkColor: Colors.green),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                    context, '/User');
                            },
                            child: Center(
                              child: Text('Done',
                                  style: TextStyle(
                                      color: Color(0xFF09AE4B),
                                      fontWeight: FontWeight.w700)),
                            )),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ]))),
    );
  }
}
