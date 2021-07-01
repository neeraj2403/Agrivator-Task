import 'package:flutter/material.dart';
import 'package:rider_app/top_bar.dart';

class OrderDeliver extends StatefulWidget {
  const OrderDeliver({Key? key}) : super(key: key);

  @override
  _OrderDeliverState createState() => _OrderDeliverState();
}

class _OrderDeliverState extends State<OrderDeliver> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
