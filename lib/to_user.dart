import 'package:flutter/material.dart';
import 'package:rider_app/popmenuButton.dart';
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
        height: 270,
        child: Padding(
            padding: EdgeInsets.only(top: 150), child: Text('Map here')),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            border:
                Border.all(width: 0.5, color: Color.fromRGBO(42, 70, 112, 0.1)),
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
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Pampady Address, P.O., Veedu',
                          style: TextStyle(fontSize: 13),
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
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text('May 4 2020, 17:38'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 3),
                          child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset('assets/profile.jpg'),
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
                    padding: const EdgeInsets.only(right:15.0),
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
                  'TIME TO REACH: 28 MINS',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                )),
              ),
            ],
          ),
        ),
      ),
     
    ])));
  }
}
