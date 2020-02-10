import 'package:day1/shop.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Animation.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    )
);

class HomePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  AnimationController _scaleController;
  Animation<double> _scaleAnimation;
  
  bool hide =false;
  @override
  void initState(){
    //Todo implement initState
    super.initState();
    
    _scaleController=AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800)
    );
    
    _scaleAnimation= Tween<double>(
      begin: 1.0,
      end: 30.0,
    ).animate(_scaleController)..addStatusListener((status){
      if(status==AnimationStatus.completed){
        Navigator.push(context, PageTransition(type:PageTransitionType.fade,child:Shop()));

      }
    });
  }
  
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/me.jpg'
              
            ),
            fit: BoxFit.cover
          )

        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(.4),
              ]
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FadeAnimation(1,Text("Brand new  Perspective", textAlign:TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 48),),),
                SizedBox(height: 20,),
                FadeAnimation(1,Text("Let's Start with our summer collection",textAlign:TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 28),)),
              SizedBox(height: 80,),
                 InkWell(
                   onTap: (){
                     setState(() {
                       hide=true;
                     });
                     _scaleController.forward();
                   },
                   child:AnimatedBuilder(
                       animation: _scaleController,
                     builder: (context,child)=> Transform.scale(
                         scale: _scaleAnimation.value,
                 child:FadeAnimation(1, Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child:hide ==false?  Text("Get Start" ,style: TextStyle(fontWeight: FontWeight.bold),):Container(),
                  ),//Center
                ),//Container
                     )
                 ),//Transform.scale
        ),//AnimatedBuilder
                 ),//InkWell
                SizedBox(height: 30,),
                FadeAnimation(1.7,Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(50)
                  ), //BoxDecoration
                  child: Center(
                    child: Text("Create Account" ,style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  ),//center

                ),//container
                ),//FadeAnimation
                SizedBox(height: 30,),

                ],
            ),
          ),
        ),
      ),



    );
  }
}

