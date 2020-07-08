import 'package:flutter/material.dart';
import 'package:test_app/src/widgets/title.dart';
import 'package:test_app/src/models/scroll.dart';
import '../commons.dart';

List<Scroll> scrollListLeft = [
  Scroll (name: "big mak" , image: "burger.jpg" , price: "234"),
  Scroll (name: "sandwich" , image: "burger.jpg" , price: "345"),
  Scroll (name: "burger" , image: "burger.jpg" , price: "456"),
];
List<Scroll> scrollListRight = [
  Scroll (name: "gamburger" , image: "burger.jpg" , price: "234"),
  Scroll (name: "big big" , image: "burger.jpg" , price: "345"),
  Scroll (name: "mak mak" , image: "burger.jpg" , price: "456"),
];

class Scrolls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      height: 390,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: scrollListLeft.length,
          itemBuilder: (_, index){
            return  Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 2, left: 6),
                    child: Container(
                      height: 181,
                      width: 190,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: grey[300],
                                offset: Offset(1, 1),
                                blurRadius: 4
                            )
                          ]
                      ),
                      child: Column(
                        children: <Widget>[
                          Image.asset("images/${scrollListLeft[index].image}" , height:  120 ,width: 140),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomText(text: "${scrollListLeft[index].name}"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: grey[300],
                                            offset: Offset(1, 1),
                                            blurRadius: 4
                                        )
                                      ]
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(Icons.favorite_border, color: red, size: 16,),
                                  ),
                                ),
                              )
                            ],
                          ),// name + like
                          Padding(
                            padding: const EdgeInsets.only(left: 6 , top: 2),
                            child: Row(
                              children: <Widget>[
                                CustomText(text: "${scrollListLeft[index].price} р.",  size: 14, weight: FontWeight.bold ),
                              ],
                            ),
                          )// price
                        ],
                      )
                      ,
                    ),
                  ), //Left List
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 181,
                      width: 190,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: grey[300],
                                offset: Offset(1, 1),
                                blurRadius: 4
                            )
                          ]
                      ),
                      child: Column(
                        children: <Widget>[
                          Image.asset("images/${scrollListRight[index].image}" , height:  120 ,width: 140),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomText(text: "${scrollListRight[index].name}"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: grey[300],
                                            offset: Offset(1, 1),
                                            blurRadius: 4
                                        )
                                      ]
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(Icons.favorite_border, color: red, size: 16,),
                                  ),
                                ),
                              )
                            ],
                          ),// name + like
                          Padding(
                            padding: const EdgeInsets.only(left: 6 , top: 2),
                            child: Row(
                              children: <Widget>[
                                CustomText(text: "${scrollListRight[index].price} р.",  size: 14, weight: FontWeight.bold ),
                              ],
                            ),
                          )// price
                        ],
                      )
                      ,
                    ),
                  ) //Right List
                ],
              ),
            );
          }),
    );
  }
}
