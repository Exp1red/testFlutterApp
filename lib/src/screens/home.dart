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
       backgroundColor: black,
       body: SafeArea(
         child: ListView(
           children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[

                 Stack (
                   children: <Widget>[
                     IconButton (icon: Icon (Icons.keyboard_backspace), color: white , iconSize: 32,  onPressed: (){},  )
                   ],
                 ),

                 CustomText(
                       text: "Бургер Кинг" ,
                       size:  19,
                       color: white,
                       weight: FontWeight.bold,
                 ),

                 Stack(
                   children: <Widget>[
                     IconButton(icon: Icon( Icons.info_outline),color: white, iconSize: 30, onPressed:(){} ),

                   ],
                 )//Notification
               ],
             ),//Header
             SizedBox(height: 5),
             Categories(),
             Scrolls(),


           ],
         ),
       ),
     );
   }
 }


 