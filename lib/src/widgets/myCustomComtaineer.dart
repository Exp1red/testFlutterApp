import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../commons.dart';

class MyCustomContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color progressColor;
  final double progress;
  final double height;
  final double width;
  final Image image;
  final String name;
  final String price;


  const MyCustomContainer({
    Key key,
    this.backgroundColor = white,
    this.progressColor = black,
    @required this.progress,
    this.height, this.width, this.image, this.name, this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(23),
      child: SizedBox(
        height: height,
        width: width,

        child: Stack(
          children: [
            Container(
              color: backgroundColor,
              child: Container(
                height: height - (height*progress),
                child: image
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * progress,
                color: progressColor,

                child: Container(
                  width: width,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15 ),
                        child: Container(
                          height: 60,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text (
                              name.toString(),

                              style: TextStyle (
                                  color: white ,
                                  fontSize: 17 ,
                                  fontWeight: FontWeight.w400
                              ),

//                                textAlign: TextAlign.left,
//                            textDirection: TextDirection.ltr,
//                            textAlign: TextAlign.left,

                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: <Widget>[
                            Text (
                              price.toString(),
                              style: TextStyle (
                                  color: white,
                                  fontSize: 17
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text (
                                "\u{20BD}",
                                style: TextStyle (
                                color: white,
                                fontSize: 17
                              ),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}