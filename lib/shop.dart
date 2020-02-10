import 'package:flutter/material.dart';
import 'Animation.dart';

class Shop extends StatefulWidget{
  @override
  _ShopState createState()=> _ShopState();
}
class _ShopState extends State<Shop>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            FadeAnimation(1,Container(
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/me.jpg"),
                      fit: BoxFit.cover
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(.2),
                        ]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FadeAnimation(1.2,IconButton(
                              icon: Icon(Icons.favorite, color: Colors.white,),
                              onPressed: () {}),),
                         FadeAnimation(1.3, IconButton(
                              icon: Icon(
                                Icons.shopping_cart, color: Colors.white,),
                              onPressed: () {}),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FadeAnimation(1.7,Text("Our new Products", style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),),),
                            SizedBox(height: 10.0,),
                            FadeAnimation(1.7,Row(
                              children: <Widget>[
                                Text("View more",
                                  style: TextStyle(color: Colors.white),)
                              ],
                            )
                              ,),
                            SizedBox(width: 15,),
                            Icon(Icons.arrow_forward, color: Colors.white,
                              size: 15,),
                          ],
                        ),

                      )
                    ],
                  ),

                ),
              ),

            ),  ),
            FadeAnimation(1,Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Categories", style: TextStyle(color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),),
                      Text("All"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeCategory(image: 'assets/beauty.jpg', title: 'Beauty'),
                        makeCategory(image: 'assets/sofa.jpg', title: 'sofa'),
                        makeCategory(image: 'assets/perfume.jpg', title: 'perfumes'),
                        makeCategory(image: 'assets/chair.jpg', title: 'chair'),


                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Best Selling", style: TextStyle(color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),),
                      Text("All"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeBestCategory(
                            image: 'assets/beauty.jpg', title: 'Beauty'),
                        makeBestCategory(
                            image: 'assets/sofa.jpg', title: 'sofa'),
                        makeBestCategory(
                            image: 'assets/perfume.jpg', title: 'perfumes'),
                        makeBestCategory(
                            image: 'assets/chair.jpg', title: 'chair'),


                      ],
                    ),
                  ),
                ],
              ),
            ),)
          ],
        ),
      ),
    );
  }
    Widget makeCategory({image,title}){
      return AspectRatio(aspectRatio: 2/1,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
              )
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.0),
                    ]
                )
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),

            ),
          ),
        ),
      );

    }
    Widget makeBestCategory({image,title,}){
        return AspectRatio(aspectRatio: 2/1,
          child: Container(
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover
                )
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.0),
                      ]
                  )
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),

              ),
            ),
          ),
        );

      }

    }

