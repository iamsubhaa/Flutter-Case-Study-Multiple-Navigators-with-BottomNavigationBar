import 'package:flutter/widgets.dart';

class Person{
  const Person(this.id,this.name,this.email);
  final int id;
  final String name;
  final String email;
}

class Pages{
  const Pages(this.title,this.icon);
  final String title;
  final IconData icon;
}