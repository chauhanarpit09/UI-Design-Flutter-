import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:new Stack(
          children:<Widget>[
              ClipPath(
                child:Container(
                  color:Colors.black.withOpacity(0.8)
                ),
                clipper:getClipper(),
              ),
              Positioned(
              width:410.0,
              top:MediaQuery.of(context).size.height/3.5,
              child:Column(
                children:<Widget>[
                  Container(
                    width:150.0,
                    height:150.0,
                    decoration:BoxDecoration(
                      color:Colors.red,
                      image:DecorationImage(
                        image: AssetImage('images/p.jpg'),
                        fit:BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(75.0)),
                      boxShadow: [
                        BoxShadow(blurRadius: 7.0,color:Colors.black,spreadRadius: 2.0)
                      ],
                    ),
                  ),
                  SizedBox(height:70.0),
                  Text(
                    "Arpit Chauhan",
                    style:TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height:15.0),
                  Text(
                    "Engineer",
                    style:TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height:25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                    Container(
                      height: 35.0,
                      width:120.0,
                      child:Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation :7.0,
                        child:GestureDetector(
                          onTap:(){},
                          child:Center(
                            child:Text(
                                "Edit Profile Pic",
                                style:TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'
                                ),
                            ),

                          )
                        )
                      ),
                    ),
                    Container(
                        height: 35.0,
                        width:120.0,
                        child:Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blueAccent,
                            color: Colors.blue,
                            elevation :7.0,
                            child:GestureDetector(
                                onTap:(){},
                                child:Center(
                                  child:Text(
                                    "Edit Position",
                                    style:TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'
                                    ),
                                  ),

                                )
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),
          ],
        ),
    );
  }
}

class getClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = new Path();
    path.lineTo(0.0,size.height/1.9);
    path.lineTo(size.width+300,0.0);
    path.close();
    return path;

  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }
}