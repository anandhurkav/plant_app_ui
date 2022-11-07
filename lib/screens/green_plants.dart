import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_app_ui/plants.dart';
import 'package:plant_app_ui/screens/detail.dart';
class GreenPlants extends StatelessWidget {
  const GreenPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:35),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(icon:Icon( Icons.search),iconSize: 30, onPressed: () {
                
              },)
            ],
          ),
         Text("Green",style: TextStyle(color: Colors.grey, fontSize: 18)), 
         SizedBox(height: 5),
         Text("Plants",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
         SizedBox(height: 10,),
         Expanded(
          child: Container(
            child: ListView.builder(
              itemCount: plants.length,
              itemBuilder: (_,index){
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(
                       builder: (_) => DetailPage(
                            plant: plants[index],)
                    ));
                },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag:plants[index].title,
                          child:Image.network(plants[index].image)
                          ),
                        SizedBox(height: 10),
                        Text(
                          plants[index].title, 
                          style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 10),
                        Text(plants[index].discription,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16
                        ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(plants[index].price, style: TextStyle(
                              fontSize:28,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            TextButton(
                              child: Text('+'),
                              onPressed: () {}
                              )
                          ],
                        ),
                        SizedBox(height:30),
                        Divider()
                
                      ],
                    ),
                  ),
                );
              },
          )) 
         )
        ],
      ) ,
    );
  }
}