import 'package:flutter/material.dart';
import 'package:rider_app/pop_data.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PopMenu extends StatelessWidget {
  const PopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        margin: EdgeInsets.only(bottom: 10, top: 15, left: 20),
        style: NeumorphicStyle(
            color: Color(0xFFDDF5E2),
            depth: 4,
            shape: NeumorphicShape.concave,
            lightSource: LightSource.topLeft,
            // shadowLightColor: Colors.green,
            shadowDarkColor: Colors.green),
        onPressed: () {},
        child: PopupMenuButton(
          color: Color(0XFFF6F8FF),
          // shape: CircleBorder(),
          itemBuilder: (context) => list.map((PopupItem choice) {
            return PopupMenuItem(
              value: choice,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(choice.image),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          choice.name,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          choice.price,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),

          // color: Color(0xFFDDF5E2),

          child: Container(
            width: 2.25 * (MediaQuery.of(context).size.width / 10),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Items',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 50,
                        // letterSpacing: 1.8,
                        color: Colors.green),
                  ),
                  Icon(Icons.arrow_drop_down,size: 20,color: Colors.green,)
                ],
              ),
            ),
          ),
        ));
  }
}
