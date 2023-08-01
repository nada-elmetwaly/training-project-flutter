import 'package:flutter/material.dart';

class DeveloperPage extends StatefulWidget {

  const DeveloperPage({super.key});

  @override
  State<DeveloperPage> createState() => _DeveloperPageState();
}

class _DeveloperPageState extends State<DeveloperPage> {
  bool isObsecurePassword=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      width: 150,
                      height: 150,
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
                            image: AssetImage("assets/dev.jpg")
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 30,),
              buildTextField("Developer Name", "Nada Elmetwaly", false),
              buildTextField("Email", "nelmetwaly9@gmail.com", false),
              buildTextField("Country", "Egypt", false),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DeveloperPage()));

                  }, child:Text("Tell Us Your Opinions",style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 2,
                    color: Colors.white,

                  ),),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      backgroundColor:  Color(0xff553333FF),
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

