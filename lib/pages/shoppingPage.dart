
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';



class ShoppingPage extends StatelessWidget {
  TextEditingController controller=TextEditingController();

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

  //const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      appBar: AppBar(
        backgroundColor: Color(0xff553333FF),
        //title: TextFormField(
         // controller: controller,
        //),
        actions: [
          IconButton(onPressed: () async{
            final String name=controller.text;
            final docUser=FirebaseFirestore.instance.collection("users").doc("id");
            final json={
              "name":name,
              "imagePath":"assets/",
              "price":"35",
            };
            await docUser.set(json);
          }, icon: Icon(Icons.add)),
        ],


      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin:EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
         children:[
           Column(
             children:<Widget> [
               Container(
                 height: 110,

                 width: double.infinity,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     TextFormField(
                       decoration: InputDecoration(
                           prefixIcon: Icon(Icons.search),
                           hintText: "Search Something",
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(30),
                           )
                       ),
                     ),
                     Container(
                       height:50,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children:<Widget> [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children:<Widget> [
                               Text("Featured",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                               Text("See all",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                             ],
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                             _buildFeaturedProduct(image: "man1.jpg",price: 35.0,name: "T-Shirt"),
                             _buildFeaturedProduct(image: "girl1.jpg",price: 47.0,name: "dress"),


                           ],
                         ),
                         Row(
                           children: [
                             _buildFeaturedProduct(image: "kid2.jpg",price: 20.0,name: "Blouse"),
                             _buildFeaturedProduct(image: "kid4.jpg",price: 30.0,name: "Hoody"),
                           ],
                         ),
                         Row(
                           children: [
                             _buildFeaturedProduct(image: "girl4.jpg",price: 50.0,name: "White Dress"),
                             _buildFeaturedProduct(image: "kid5.jpg",price: 30.0,name: "Dress"),
                           ],
                         ),
                         Row(
                           children: [
                             _buildFeaturedProduct(image: "man2.jpg",price: 40.0,name: "White Shirt"),
                             _buildFeaturedProduct(image: "man3.jpg",price: 35.0,name: "Pantes"),
                           ],
                         ),
                       ],
                     ),
                   ],
                 ),
               )

             ],
           ),
         ]
        ),
      ),
    );

  }
}
