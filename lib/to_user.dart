import 'package:flutter/material.dart';
import 'package:rider_app/top_bar.dart';

class ToUser extends StatefulWidget {
  const ToUser({Key? key}) : super(key: key);

  @override
  _ToUserState createState() => _ToUserState();
}

class _ToUserState extends State<ToUser> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            child: Column(children: [
      TopBar(),
      SizedBox(
        height: 300,
        child: Padding(
            padding: EdgeInsets.only(top: 150), child: Text('Map here')),
      ),
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: new BoxDecoration(
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
              child: Card(
                  elevation: 0.0,
                  borderOnForeground: false,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Color.fromRGBO(42, 70, 112, 0.1), width: 0.5),
                    borderRadius: BorderRadius.circular(2),
                  ),

                  // borderOnForeground: false,
                  color: Color.fromRGBO(246, 248, 255, 1),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 20, left: 230),
                                  child: Text(
                                    'May 4 2020, 17:38',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                )
                              ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 200,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Bivin Varkey',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Pampady Address, P.O., Veedu',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '2km',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  )),
                              ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  child: Image.asset('assets/store.jpg',
                                      width: 150, height: 100)),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(child: Text('Items')),
                                  Icon(
                                    Icons.check_box_outlined,
                                    size: 30,
                                  )
                                ],
                              )),
                          Center(
                            child: Text('TIME TO REACH: 28 MINS'),
                          )
                        ],
                      )))))
    ])));
  }
}
