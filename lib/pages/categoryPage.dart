import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  Widget _buildFeaturedProduct({String? name,double? price, String? image}){
    return Card(child: Container(
      height: 240,
      width: 180,

      child: Column(
        children: [
          Container(
            height: 190,
            width: 160,

            decoration: BoxDecoration(

                image: DecorationImage(image: AssetImage("assets/$image"))

            ),
          ),
          Text("\$ $price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff9b96d6)),),
          Text(name!,style: TextStyle(fontSize: 17),),

        ],
      ),
    ),);
  }
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[150],
        appBar: AppBar(
        backgroundColor: Color(0xff553333FF),

    ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin:EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 15,),
                Container(
                  height: 70,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Category",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text("See all",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),

                Container(
                  height: 60,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:AssetImage("assets/dress.jpg") ,
                        ),
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:AssetImage("assets/T-Shirt.jpg") ,
                        ),
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:AssetImage("assets/pantes.jpg") ,
                        ),
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:AssetImage("assets/shirt.jpg") ,
                        ),
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:AssetImage("assets/shoes.jpg") ,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              _buildFeaturedProduct(image: "man3.jpg",price: 35.0,name: "Shirt"),
                              _buildFeaturedProduct(image: "kid5.jpg",price: 40.0,name: "dress"),


                            ],
                          ),
                          Row(
                            children: [
                              _buildFeaturedProduct(image: "man2.jpg",price: 35.0,name: "Shirt"),
                              _buildFeaturedProduct(image: "girl3.jpg",price: 50.0,name: "Dress"),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
         ),
    );
  }
}
