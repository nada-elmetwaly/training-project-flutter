import 'package:flutter/material.dart';

import 'develperPage.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 30,),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      border:Border.all(width: 4,color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/logo.jpg")
                      ),
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 100,
                width: 40,

                child: Text("THIS FASION APP GIVES YOU THE CHANCE TO CHOOSE CLOTHES WITH BEST PRICE AND DELIVERY",style: TextStyle(letterSpacing: 2,fontSize: 20),),
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DeveloperPage()));

                }, child:Text("DEVELOPER INFORMATION",style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 2,
                  color: Colors.white,

                ),),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    backgroundColor:  Color(0xff553333FF),
                  ),

                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
