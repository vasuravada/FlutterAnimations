import 'package:flutter/material.dart';

class SliderTranse extends MaterialPageRoute {
  SliderTranse({WidgetBuilder widgetBuilder, RouteSettings routeSettings})
      : super(builder: widgetBuilder, settings: routeSettings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    Animation<Offset> custom = Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0)).animate(animation);
    return SlideTransition(position: custom, child: child,);
  }

}

class SliderTranseWithDuration extends PageRouteBuilder{
  Widget baseWidget;
  SliderTranseWithDuration([this.baseWidget]) : super(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation){
        return baseWidget;
      },
      transitionDuration: Duration(seconds: 1),
      transitionsBuilder:(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child){
        Animation<Offset> custom = Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0)).animate(animation);
        return SlideTransition(position: custom, child: child,);
      }
  );
}

//Offset(0.0,1.0) ---> Bottom to Top
//Offset(0.0,-1.0) ---> Top to Bottom
//Offset(1.0,0.0) ---> Right to Left
////Offset(-1.0,0.0) ---> Left to Right