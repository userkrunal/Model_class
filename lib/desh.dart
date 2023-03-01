import 'package:country_app/Model1.dart';
import 'package:flutter/material.dart';
class Desh_Screen extends StatefulWidget {
  const Desh_Screen({Key? key}) : super(key: key);

  @override
  State<Desh_Screen> createState() => _Desh_ScreenState();
}

class _Desh_ScreenState extends State<Desh_Screen> {
  @override
  Widget build(BuildContext context) {
    CountryModel d1=ModalRoute.of(context)!.settings.arguments as CountryModel;
    return Scaffold(
      appBar: AppBar(title: Text("Desh_Screen"),centerTitle: true,),
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${d1.countryName}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.redAccent)),
            Text("${d1.capital}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.redAccent)),
            Text("${d1.currency}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.redAccent)),
            Text("${d1.populationindex}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.redAccent)),
          ],
        ),
      ),
    );
  }
}
