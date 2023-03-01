import 'package:country_app/Home_Screen.dart';
import 'package:country_app/desh.dart';
import'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/':(context) => Country_APP(),
        'desh':(context) => Desh_Screen()
      },
    ),
  );
}