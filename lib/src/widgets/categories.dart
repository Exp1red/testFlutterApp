import 'package:flutter/material.dart';
import 'package:test_app/src/models/category.dart';

List<Category> categoriesList = [
    Category(name: "Популярные блюда" ),
    Category(name: "Комбо" ),
    Category(name: "Креветки" ),
    Category(name: "Гранмулино :)" )
];

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

List<bool> list = [true, false, false, false];

class _CategoriesState extends State<Categories> {
    @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        height: 70,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (_, index){
              return Padding(
                padding: const EdgeInsets.only(right: 5),
                child: ButtonBar(

                  buttonPadding: EdgeInsets.only( right: 23),
                    children: <Widget>[

                        Container(
                          height: 50,

                          child: RaisedButton(

                            padding: EdgeInsets.all(0),

                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(23.0)),
                            color: list[index] ? Color.fromRGBO(223, 201, 89, 33): Colors.black,

                            onPressed: () {
                              setState(() {
                                list[index] = !list[index];
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(9),
                              child: Text (

                                categoriesList[index].name.toString(),
                                style: TextStyle (
                                  fontSize: 17,
                                  color: list[index] ? Colors.black : Colors.grey,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
              );
            }
        ),
      ),
    );
  }

}




