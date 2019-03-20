import 'package:flutter/material.dart';
import 'package:fluttersocial/view/my_material.dart';

class LogController extends StatefulWidget {
  @override
  _LogControllerState createState() => _LogControllerState();
}

class _LogControllerState extends State<LogController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          //notification received
          overscroll.disallowGlow();
        },
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: (MediaQuery.of(context).size.height>=650.0) ?  MediaQuery.of(context).size.height : 650.0,
          decoration: MyGradient(
            startColor: base,
            endColor: baseAccent,
            horizontal: true            
          ),
          child: Column(children: <Widget>[
            Image(image: logoImage,)
          ],),
        ),
      ),
      ),
    );
  }
}
