import 'package:flutter/material.dart';

import '../aboutApp.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isObsecurePassword=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      appBar: AppBar(
        backgroundColor: Color(0xff553333FF),
        title: Text("My Profile"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutApp()));
          }, icon: Icon(Icons.settings,color: Colors.white,))
        ],

      ),
      body: Container(
        padding: EdgeInsets.only(left: 15,top: 20,right: 15),
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
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
                          image: AssetImage("assets/profile.jpg")
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                        right: 0,
                        child:Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Colors.white,
                        ),
                        color: Color(0xff553333FF),
                      ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                    ) ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              buildTextField("Full Name", "Nada Mahmoud", false),
              buildTextField("Email", "nada6@gmail.com", false),
              buildTextField("Password", "*********", true),
              buildTextField("Location", "Talkha", false),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(onPressed: (){}, child:Text("CANCEL",style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 2,
                    color: Colors.black,
                  ),),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),

                  ),
                  ElevatedButton(onPressed: (){},
                      child:Text("SAVE",style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.white
                      ),),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff553333FF),
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildTextField(String labelText,String placeholder,bool isPasswordTextField){
    return Padding(padding: EdgeInsets.only(bottom: 30),
      child: TextField(obscureText: isPasswordTextField ? isObsecurePassword :false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField ?
              IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye,color: Colors.grey,)):null,
          contentPadding: EdgeInsets.only(bottom: 5),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          )
        ),
      ),
    );
  }
}

