import 'package:country_app/Model1.dart';
import 'package:flutter/material.dart';

class Country_APP extends StatefulWidget {
  const Country_APP({Key? key}) : super(key: key);

  @override
  State<Country_APP> createState() => _Country_APPState();
}

class _Country_APPState extends State<Country_APP> {

  List countryNameList=["IN","UK","UAE","AU","NZ"];
  List capitalList=["DELHI","LONDON","ABU DHABI","CANBERRA","WELLINGTON"];
  List currencyList=["INR","POUND","DIRHAM","DOLLAR","DOLLAR"];
  List populationindexList=["1","3","5","2","4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: countryNameList
          .asMap()
          .entries
          .map((e) => InkWell(
            onTap: () {
              CountryModel countryModel = CountryModel(
                countryName: countryNameList[e.key],
                capital: capitalList[e.key],
                currency: currencyList[e.key],
                populationindex: populationindexList[e.key],
              );
              Navigator.pushNamed(context, 'desh',arguments: countryModel);
            }, child: country(countryNameList[e.key])))
              .toList(),
        ),
      ),
    );
  }
  Widget country(String name)
  {
    return Container(
      height: 70,
      width: double.infinity,
      color: Colors.red.shade300,
      child: Column(
        children: [
          Text("$name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.black),),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
