import 'package:flutter/material.dart';
import 'package:test_app/src/models/scroll.dart';
import 'package:test_app/src/widgets/myCustomComtaineer.dart';

List<Scroll> scrollListLeft = [
  Scroll (name: "Комбо с Воппером Дж." , image: "burger.jpg" , price: "189"),
  Scroll (name: "Комбо на двоих с Чизбургером" , image: "burger.jpg" , price: "399"),
  Scroll (name: "burger" , image: "burger.jpg" , price: "456"),
];
List<Scroll> scrollListRight = [
  Scroll (name: "Воппер с сыром" , image: "burger.jpg" , price: "249"),
  Scroll (name: "Кинг Наггетс   (станд.)" , image: "burger.jpg" , price: "119"),
  Scroll (name: "mak mak" , image: "burger.jpg" , price: "456"),
];

class Scrolls extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container (
      height: 500,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: scrollListLeft.length,
          itemBuilder: (_, index){
            return  Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: MyCustomContainer(
                      height: 309,
                      width: 185,
                      progress: 0.4,
                      backgroundColor: Colors.white,
                      progressColor: const Color(0x99464646),
                      image: Image.asset("images/${scrollListLeft[index].image}" , height:  120 ,width: 186),
                      name: "${scrollListLeft[index].name}",
                      price: "${scrollListLeft[index].price}",
                    ),
                  ), //Left List
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: MyCustomContainer(
                      height: 309,
                      width: 185,
                      progress: 0.4,
                      backgroundColor: Colors.white,
                      progressColor: const Color(0x99464646),
                      image: Image.asset("images/${scrollListRight[index].image}" , height:  120 ,width: 186),
                      name: "${scrollListRight[index].name}",
                      price: "${scrollListRight[index].price}",
                    ),
                  ), //Left List //Right List
                ],
              ),
            );
          }),
    );
  }
}
