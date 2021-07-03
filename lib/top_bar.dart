import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.location_on,
                  color: Color.fromRGBO(58, 171, 58, 1),
                ),
                onPressed: () {},
              ),
              Text(
                'Kochi, Kerala - 650601',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right:25.0),
            child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(),
                child: Image.asset('assets/Logo.png')),
          ),
        ],
      ),
    );
  }
}
