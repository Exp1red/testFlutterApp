import 'package:flutter/material.dart';
import 'package:test_app/src/widgets/title.dart';
import 'package:test_app/src/models/category.dart';
import '../commons.dart';

List<Category> categoriesList = [
    Category(name: "FastFood" , image: "fastfood.png"),
    Category(name: "Beer" , image: "beer.png"),
    Category(name: "Drink" , image: "alco.png"),
    Category(name: "Fish" , image: "fish.png"),
    Category(name: "Meat" , image: "meat.png"),
    Category(name: "Cheese" , image: "cheese.png"),
    Category(name: "Dessert" , image: "desert.png")
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (_, index){
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                            color: red[50],
                            offset: Offset(4, 6),
                            blurRadius: 20
                        )
                      ],
                    ),
                    child: Padding(padding: const EdgeInsets.all(4),
                      child: Image.asset("images/${categoriesList[index].image}" , width: 50),
                    ),
                  ),
                  SizedBox (height: 10),
                  CustomText (text: categoriesList[index].name , size: 16, color: black,)
                ],
              ),
            );
          }
      ),
    );
  }
}


