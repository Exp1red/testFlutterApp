import 'package:flutter/material.dart';
import 'package:test_app/src/widgets/scrolls.dart';
import 'package:test_app/src/widgets/categories.dart';
import 'package:test_app/src/widgets/title.dart';
import '../commons.dart';


 class Home extends StatefulWidget {
   @override
   _HomeState createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: white,
       body: SafeArea(
         child: ListView(
           children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: CustomText(
                       text: "Delivery App" ,
                       size:  20,
                       weight: FontWeight.bold,
                 )),
                 Stack(
                   children: <Widget>[
                     IconButton(icon: Icon( Icons.notifications_none), onPressed:(){} ),
                   ],
                 )//Notification
               ],
             ),//Welcome Tile
             SizedBox(height: 5),
             Container(
               decoration: BoxDecoration(
                 color: white,
                 boxShadow: [
                   BoxShadow(
                      color: grey[300],
                      offset: Offset(1, 1),
                      blurRadius: 4
                   )
                 ]
               ),
               child: ListTile(
                 leading: Icon(Icons.search , color:  red ),
                 title: TextField(
                   decoration: InputDecoration(
                     hintText: "Find food",
                     border: InputBorder.none
                   ),
                 ),
               ),
             ),//Search
             SizedBox(height: 5),
             Categories(),
             SizedBox(height: 1),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: CustomText (text: "Food from category" , size: 14),
             ),//Food from ${category.name}
             Scrolls(),
           ],
         ),
       ),
     );
   }
 }


 