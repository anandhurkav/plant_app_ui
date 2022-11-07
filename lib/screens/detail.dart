import 'package:flutter/material.dart';
import 'package:plant_app_ui/plants.dart';

class DetailPage extends StatelessWidget {
 final Plant plant;

  const DetailPage({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height:10 ,),
              Container(
               height: 670,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200)
                )
               ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                children: [
                  IconButton(icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                  ),
                  Spacer(),
                  IconButton(icon: Icon(Icons.shopping_cart),
                  onPressed: () {},
                  ),
                ],
              ),
              Container(
                child: Hero(
                  tag: plant.title,
                  child: Image.network(plant.image), 
                  ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   SizedBox(height: 10),
                          Text(
                            plant.title, 
                            style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          SizedBox(height: 10),
                          Text(plant.discription,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                          ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(plant.price, style: TextStyle(
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
                   SizedBox(height: 10), 
                  ],
                ),
              ),
              
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.height_outlined, color: Colors.white, size:40,),
                      Text('Height', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Text(
                        plant.height,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Spacer(),
                  
                  Column(
                    children: [
                      Icon(Icons.thermostat, color: Colors.white, size:40,),
                      Text('Temperature', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Text(
                        plant.temprature,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Icon(Icons.square, color: Colors.white, size:40,),
                      Text('Pot', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Text(
                        plant.pot,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),),
              
          ],
        ),
      ),
    );
  }
}