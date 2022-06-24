import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:MyApp(),
));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(244,243,243,1),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18 , vertical: 12),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius:30,
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_d3eD1d6VTDwBYNhkBEfUxERkv-xajBg1Ws8h-4in0Vhw0qdON1dkBvPORg9UUQi6KKc&usqp=CAU'),
                              ),
                              SizedBox( width: 12 ),
                              Text("Hi, Umair Lafir" , style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),)
                            ],
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.notifications , color: Color.fromRGBO(174, 104, 50, 1)),
                            backgroundColor: Colors.white,
                          )
                        ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 22),
                    width: double.infinity,
                    child: Container(
                       margin: EdgeInsets.symmetric( vertical: 22),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Where do" , style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize:35,
                           )),
                           Text('you want to go ?' , style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 25,
                           )),
                           SizedBox(height: 30),
                           Container(
                              height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 14),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Serach for places',
                                      border: InputBorder.none,
                                      suffixIcon:Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black54.withOpacity(0.1),
                                                spreadRadius: 1,
                                                blurRadius: 10,
                                                offset: Offset(3,3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: Icon(Icons.search , color: Color.fromRGBO(174, 104, 50, 1) , size: 20,)
                                      )
                                    ),
                                  ),
                                ),
                              ),
                           ),
                           SizedBox( height: 40 ),
                           Text('Categories' , style: TextStyle(
                               fontSize: 22,
                               fontWeight: FontWeight.w500
                           )),
                           Container(
                             padding: EdgeInsets.symmetric(vertical: 10),
                             height: 90,
                             margin: EdgeInsets.symmetric(vertical: 22),
                             child: ListView(
                               scrollDirection: Axis.horizontal,
                               children: [
                                 Card(image:'https://img.icons8.com/color/48/000000/tent.png' , title:"Camp"),
                                 Card(image:'https://img.icons8.com/color/48/000000/hills.png' , title:'Mountains'),
                                 Card(image:'https://img.icons8.com/bubbles/50/000000/cafe.png' , title: 'Cafe'),
                                 Card(image:'https://img.icons8.com/color/48/000000/sunbathe.png' , title:'Beach'),
                               ],
                             ),
                           ),
                           Container(
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text('Top Tips' , style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700
                                      )),
                                      Icon(Icons.keyboard_arrow_down , color: Color.fromRGBO(174, 104, 50, 1),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('Explore' , style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color:Colors.grey.shade500
                                      )),

                                      Icon(Icons.arrow_downward , size: 12,  color: Color.fromRGBO(174, 104, 50, 1))
                                    ],
                                  )
                                ],
                             ),
                           ),
                           Container(
                             height: 200,
                             margin: EdgeInsets.symmetric(vertical: 20),
                             child: ListView(
                               scrollDirection: Axis.horizontal,
                               children: [
                                   Items(image:'https://d3hne3c382ip58.cloudfront.net/files/uploads/bookmundi/resized/cms/historic-sanctuary-of-machu-picchu-1500637420-735X412.jpg' , title: 'Bannjir Kanal' , para:'Camp'),
                                   Items(image:'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/most-beautiful-places-in-the-world-gettyimages-1042549972.jpg' , title: 'The river hunt' , para:'Mountain'),
                                   Items(image:'https://www.planetware.com/wpimages/2019/09/top-places-to-visit-in-the-world-machu-picchu-peru.jpg' , title: 'Plant ware' , para:'hills'),
                               ],
                             ),
                           ),
                         ],
                       ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
             margin: EdgeInsets.only(bottom: 12 , left:12 , right:12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                iconSize: 30,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.black,
                currentIndex: 0,
                fixedColor: Color.fromRGBO(174, 104, 50, 1),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: SizedBox(
                          height: 38,
                          child: Icon(Icons.home)), label: 'Favourite'),
                  BottomNavigationBarItem(
                      icon: SizedBox(height: 38, child: Icon(Icons.add_location_alt_sharp , color: Colors.grey.shade600,)), label: 'Favourite'),
                  BottomNavigationBarItem(
                      icon: SizedBox(height: 38 ,child: Icon(Icons.favorite_outline , color: Colors.grey.shade600,)), label: 'Favourite'),
                  BottomNavigationBarItem(
                      icon: SizedBox(height: 38  ,  child: Icon(Icons.person , color: Colors.grey.shade600,)), label: 'Favourite'),

                ],
              ),
            )
        )
    );
  }

  Widget Items({image , title , para}){
    return Container(
       width: 200,
       margin: EdgeInsets.only(right: 12 , bottom: 12),
       decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
           BoxShadow(
             color: Colors.black54.withOpacity(0.1),
             spreadRadius: 1,
             blurRadius: 10,
             offset: Offset(3,3), // changes position of shadow
           ),
         ],
       ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12 , vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                 image: DecorationImage(
                     image:NetworkImage(image) , fit: BoxFit.cover
                 )
              ),
            ),
            SizedBox( height: 12 ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title , style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),),
                    Text(para , style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                    ))
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(3,3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Icon(Icons.favorite_outline ,  color: Color.fromRGBO(174, 104, 50, 1)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget Card({image , title}){
    return Container(
        margin: EdgeInsets.only(right: 20 , bottom: 12),
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(3,3), // changes position of shadow
            ),
          ],
        ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8 , vertical: 8),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255,255,255,0.04),
                image: DecorationImage(
                  image:NetworkImage(image) , fit: BoxFit.cover
                )
              ),
            ),
            Text(title , style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700
            ),)
          ],
        ),
      ),
    );
  }
}

