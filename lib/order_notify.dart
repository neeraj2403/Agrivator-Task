import 'package:flutter/material.dart';
import 'package:rider_app/circle.dart';
import 'package:rider_app/pop_data.dart';
import 'package:rider_app/popmenuButton.dart';
import 'package:rider_app/to_store.dart';
import 'package:rider_app/top_bar.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OrderNotify extends StatefulWidget {
  const OrderNotify({Key? key}) : super(key: key);

  @override
  _OrderNotifyState createState() => _OrderNotifyState();
}

class _OrderNotifyState extends State<OrderNotify> {
  String _value = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            TopBar(),
            CircleRing(),
            Padding(
              padding: EdgeInsets.only(left: 16,right: 16,top: MediaQuery.of(context).size.height/30,bottom: 16),
              child: Container(
                height: 0.45*MediaQuery.of(context).size.height,

                decoration: BoxDecoration(
                  border: Border.all(
                      width: 0.5, color: Color.fromRGBO(42, 70, 112, 0.1)),
                  boxShadow: [
                    new BoxShadow(
                      color: Color.fromRGBO(24, 50, 115, 0.06),
                      offset: const Offset(
                        2.0,
                        8.0,
                      ),
                      blurRadius: 60,
                    ),
                    new BoxShadow(
                      color: Color.fromRGBO(255, 255, 255, 0.5),
                      offset: const Offset(
                        4.0,
                        4.0,
                      ),
                      blurRadius: 20,
                    )
                  ],
                ),
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
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 80, top: 18),
                                child: Text(
                                  'To',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
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
                                      child: Image.asset('assets/1.jpg'),
                                    )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bivin Varkey',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Pampady Address, P.O., Veedu',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '₹150',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '2km',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    PopMenu(),
                    Padding(
                  padding: EdgeInsets.only(top:MediaQuery.of(context).size.width/20),

                      child: Center(
                          child: Text(
                        'ESTIMATED TRAVEL: 28 MINS',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                      )),
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                            onPressed: () {},
                            child: Text(
                              'ACCEPT',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(38, 183, 96, 1)),
                            )),
                        FlatButton(
                            onPressed: () {},
                            child: Text(
                              'REJECT',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(230, 57, 90, 1)),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
