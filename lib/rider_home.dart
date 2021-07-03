import 'package:flutter/material.dart';
import 'package:rider_app/circle.dart';
import 'package:rider_app/prod_model.dart';
import 'package:rider_app/top_bar.dart';

class RiderHome extends StatefulWidget {
  const RiderHome({Key? key}) : super(key: key);

  @override
  _RiderHomeState createState() => _RiderHomeState();
}

class _RiderHomeState extends State<RiderHome> {
  Widget personDetailCard(Person) {
    return Padding(
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
            side:
                BorderSide(color: Color.fromRGBO(42, 70, 112, 0.1), width: 0.5),
            borderRadius: BorderRadius.circular(2),
          ),

          // borderOnForeground: false,
          color: Color.fromRGBO(246, 248, 255, 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Person.store_name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Person.prod_name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Person.dateof,
                          style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Person.price,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 1.5,
        child: Column(
          children: [
            TopBar(),
            CircleRing(),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                    children: persons.map((p) {
                  return personDetailCard(p);
                }).toList()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
