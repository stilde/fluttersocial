import 'package:flutter/material.dart';
import '../my_material.dart';

class Menu2Items extends StatelessWidget {
  final String item1;
  final String item2;
  final PageController pageController;

  Menu2Items(
      {@required this.item1,
      @required this.item2,
      @required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      decoration: BoxDecoration(
          color: pointer,
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[itemButton(item1),itemButton(item2)],
      ),
    );
  }

  Expanded itemButton(String name) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          int page = pageController.page == 0.0 ? 1 : 0;
          pageController.animateToPage(
            page,
            duration: Duration(milliseconds: 500),
            curve: Curves.decelerate
            );
        },
        child: Text(name),
      ),
    );
  }
}
