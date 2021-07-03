import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:rider_app/top_bar.dart';

class OrderDeliver extends StatefulWidget {
  const OrderDeliver({Key? key}) : super(key: key);

  @override
  _OrderDeliverState createState() => _OrderDeliverState();
}

class _OrderDeliverState extends State<OrderDeliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              TopBar(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 60, bottom: 30),
                      child: Text(
                        "Order Delivered",
                        style:
                            TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      )),
                  Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(
                        Icons.check_circle,
                        color: Color(0xFF26B760),
                        size: 200,
                      )),
                  Container(
                      padding: EdgeInsets.only(bottom: 50),
                      child: Text(
                        "Good Job!\nAnother happy customer. Yay!",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      )),
                  Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Earned \u{20B9}50",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      )),

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
                                      context, '/');
                              },
                              child: Center(
                                child: Text('Continue',
                                    style: TextStyle(
                                        color: Color(0xFF09AE4B),
                                        fontWeight: FontWeight.w700)),
                              )),
                        ),
                      ),
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
