import 'package:flutter/material.dart';
import 'package:test_app/src/screens/home.dart';



/*
вот экран.
разработать приложение - каталог службы доставки.
приложение состоит из одного экрана, на котором выводится список доступных для заказа блюд.
использовать архитектуру bloc.
структура приложения: screen <-> bloc <-> data. список блюд зашит в слой data. взаимодействия с сервером не требуется.
на этом экране никакой логики, кроме получения и вывода списка блюд и категорий, нет.
переход по категориям, добавление товара в заказа, открытие карточки товара - ничего этого не нужно делать. экран - максимально декоративный.
 */


void main() {
  runApp(MyApp ());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }

}





