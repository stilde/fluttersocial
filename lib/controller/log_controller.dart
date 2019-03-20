import 'package:flutter/material.dart';
import 'package:fluttersocial/view/my_material.dart';

class LogController extends StatefulWidget {
  @override
  _LogControllerState createState() => _LogControllerState();
}

class _LogControllerState extends State<LogController> {
PageController _pageController;

@override
  void initState() {    
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
            height: (MediaQuery.of(context).size.height >= 650.0)
                ? MediaQuery.of(context).size.height
                : 650.0,
            decoration: MyGradient(
                startColor: base, endColor: baseAccent, horizontal: true),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  PaddingWith(widget: Image(image: logoImage, height: 100.0)),
                  PaddingWith(widget: Menu2Items(item1: "Connection", item2: "Création", pageController: null,), top: 
                  20.0,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
