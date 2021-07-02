import 'package:flutter/material.dart';
import 'package:rider_app/circle.dart';
import 'package:rider_app/top_bar.dart';

class OrderNotify extends StatefulWidget {
  const OrderNotify({ Key? key }) : super(key: key);

  @override
  _OrderNotifyState createState() => _OrderNotifyState();
}

class _OrderNotifyState extends State<OrderNotify> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            TopBar(),
            CircleRing(),
            
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all( width: 2)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Store A',style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Manarcadu Kavala', style: TextStyle(
                                  fontSize: 15
                                ),),
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
                                padding: const EdgeInsets.only(top:10.0),
                                child: Text('May 4 2020, 17:38'),
                              ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0,right: 10),
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  ),
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
                    Padding(
                      padding: const EdgeInsets.only( left: 80),
                      child: Text('to',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
            )
            
          ],
        ),
        
      ),
    );
  }
}