
import 'package:flutter/material.dart';
import 'package:mynewapproach/animations_work/SliderTranse.dart';
import 'Page2.dart';

/*main(){
  runApp(MaterialApp(
    home: Page1(),
  ));
}*/

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          child: Text('Go!'),
          onPressed: (){
//            Route route = MaterialPageRoute(builder: (context)=>Page2());
//            Route route = SliderTranse(widgetBuilder: (context) => Page2());
              Route route = SliderTranseWithDuration(Page2());
             Navigator.of(context).push(route);
//            Navigator.of(context).push(_createRoute());
          },
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation)=> Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child){
        return child;
      }
    );
  }
}
