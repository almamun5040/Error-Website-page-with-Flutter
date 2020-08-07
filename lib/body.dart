import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    List<String> menu =["Home","Products","Job","Contact"];
    return Column(
      children: [
        Container(
          height: size.height,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              buildtop(size, menu),
              Positioned(
                top: 130,
                child: Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Container(
                    width: size.width/2,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("404",
                     style: TextStyle(
                       fontSize: 50
                     ),),
                     Text("Travel in Space",
                     style: TextStyle(
                       fontSize: 50,
                       fontWeight: FontWeight.bold
                     ),
                     ),
                     Container(
                       height: 5,
                       width: 100,
                       color: Colors.black,
                     ),
                      SizedBox(height: 40,),
                     Container(
                       width: 300,
                       child: Text("Travel in SpaceTravel in SpaceTravel in SpaceTravel in SpaceTravel in SpaceTravel in SpaceTravel in SpaceTravel in SpaceTravel in SpaceTravel in Space"),
                     ),
                     SizedBox(height: 40,),
                     InkWell(
                       onTap: (){},
                                            child: Container(
                         height: 50,
                         width: 140,
                         decoration: BoxDecoration(
                           color: Colors.black,
                           borderRadius: BorderRadius.circular(20)
                         ),
                         child:Center(
                           child: Text("Go Home",
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 15
                           ),),
                         ) ,
                       ),
                     )
                   ],

                    ) ,
                  ),
                ),
              ),
              Positioned(
                top: 100,
                right: 70,
                child: Image.asset("assets/images/main.png",height: 450,width: 450,)),
            
            Positioned(
              bottom: 5,
              left: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  social(icon:"assets/images/facebook.png" ,),
                   social(icon:"assets/images/ins.png" ,),
                    social(icon:"assets/images/twitte.png" ,),
                     social(icon:"assets/images/youtube.png" ,),
                ],
              )),

              Positioned(
                bottom: 5,
                right: 60,
                child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
             children: [
                 Icon(Icons.copyright,size: 15,color: Colors.grey,),
                 Text("2020- All rights reserved",
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.grey
                 ),
                 )
             ],

                ),
              ))
            ],
            
          ),
        ),
      ],
    );
  }

  Padding buildtop(Size size, List<String> menu) {
    int index;
        return Padding(
                  padding: const EdgeInsets.only(left: 70,right: 70),
                  child: Container(
                    height: size.height*0.072,
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Space.",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                        ),
                      
                      Row(
                        children: List.generate(menu.length, (index) => buildmenu(menu,index),)
                          
                        ,
                      ),
                  ],

                ),
              ),
            );
  }

  Widget buildmenu(List<String> menu,int index)=> InkWell(
    onTap: (){},
      child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Stack(
                      children: [
                        Text(menu[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                  ),
  );
  }

class social extends StatelessWidget {
  const social({
    Key key, this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset(icon,height: 20,color: Colors.grey,),
      )
    ],
            );
  }
}
