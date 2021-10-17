import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
   final int result;

   final int age;
   final bool ismale;

   BMIResult({
     @required this.result,

     @required this.age,
     @required this.ismale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text
        (
        "BMI Result ",) ,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender:${ismale ? "Male":"Female"} ",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30.0),),
            Text("Result: $result",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30.0),),
            Text("Age : $age",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30.0),),
          ],
        ),
      ),
    );
  }
}
