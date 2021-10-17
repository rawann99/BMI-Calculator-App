import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udmey/BMIResult.dart';


class BmiCalculator extends StatefulWidget {

  @override
  State<BmiCalculator> createState() => _State();
}

class _State extends State<BmiCalculator> {
  bool ismale=true;
  double height=120.0;
  int weight=40;
  int age=15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title:

         Text("BMI Calculator",

    )
    ,

      ),

      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(

                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          ismale=true;

                        });


                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage ("assets/images/malee.png"),width: 90.0,height: 90.0,),
                            Text("Male",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(10.0),
                          color: ismale ? Colors.blueAccent :Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          ismale=false;
                        });

                      },
                      child: Container(
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(10.0),
                            color: ismale ? Colors.grey : Colors.blueAccent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage ("assets/images/femaleee.png"),width: 90.0,height: 95.0,),
                            Text("Female",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )

        ,
        Expanded(
          child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,),
            child: Container(
              decoration:  BoxDecoration( borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey
              ),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Height",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
                  ),
                  Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                  Text("${height.round()}",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold)),
                   SizedBox(width: 3.0,),
                   Text("Cm",style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold)),

                    ],
                  ),
                  Slider(value: height,
                      max: 220,
                      min: 80,
                      onChanged: (value){
                    setState(() {
                      height=value;
                      print(value.round());

                    });

                      }),

                ],
              ),
            ),
          ),
        ),
        Expanded(
          child:
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("weight",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
                        ),
                        Text("${weight}",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                        FloatingActionButton(onPressed: (){
                          setState(() {
                            weight--;
                          });
                        },
                          heroTag:'weight--'
                        ,child: Icon(Icons.remove,),mini: true,),

                        FloatingActionButton(onPressed: (){
                          setState(() {
                            weight++;

                          });


                        },
                        heroTag:'weight++'

                        ,
                          child: Icon(Icons.add,),mini: true,),
]
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20.0,),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Age",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
                        ),
                        Text("${age}",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                                heroTag:'age--'
                              ,child: Icon(Icons.remove,),mini: true,),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                                heroTag:'age++'
                              ,child: Icon(Icons.add,),mini: true,),
                            ]
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
          Container(
            color: Colors.blue,
            child: MaterialButton(onPressed: ()
            {
              double result=weight/pow(height/100,2);
              print (result.round());
              Navigator.push
                (
                context,
                MaterialPageRoute(
                    builder:
                        (context)=>BMIResult(age: age,ismale: ismale,result: result.round(),)
                ),
              );
            }
            ,
              child: Text("Calculate"
              ,
              style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),
            )
              ,height: 30.0,
            ),
          ),
      ]
      )
    );
  }
}
