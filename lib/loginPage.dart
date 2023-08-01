import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:training_project/homePage.dart';
import 'package:training_project/rigisterScreen.dart';


class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool visible=true;
  //To send this data to API(backend)
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  var formKey=GlobalKey<FormState>();


  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      appBar: AppBar(
        backgroundColor: Color(0xff553333FF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //default of crossAxisAlignment is center
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  //Text("Sign In",
                      //style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48,fontFamily: 'poppins',)),
                  Image.asset("assets/signin.jpg",),
                  SizedBox(
                    height: 35,
                  ),
                  TextFormField(
                    controller: emailController,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Email must not be empty";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    //difference between onChanged and onFieldSubmitted
                    onFieldSubmitted: (String value){
                      print(value);
                    },
                    //to decorate the textFormField
                    //Difference between hint text and labelText
                    decoration: InputDecoration(
                        labelText:"Email",
                        prefixIcon:Icon(Icons.email),
                        border: OutlineInputBorder()),

                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: passController,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Password must not be empty";
                      }
                      else if(value.length<6){
                        return "password is too short";
                      }
                      else{
                        return null;
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText:visible,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(onPressed: (){
                          visible=!visible;
                          print(visible);
                          //to indicate the change on the page we must use it
                          setState(() {

                          });
                        }, icon: visible==true?Icon(Icons.visibility_off):Icon(Icons.visibility))

                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(

                    width:double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff553333FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: MaterialButton(onPressed: (){
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passController.text);
                        FirebaseAuth.instance.signInWithEmailAndPassword(email:emailController.text, password:passController.text);

                      }
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                    },
                      child: Text("Sign In",style: TextStyle(fontSize: 20,color:Color(0xffffffff),fontWeight: FontWeight.w500,fontFamily: 'poppins',),),),

                  ),
                  Row(
                    children: [
                      Text("Don't have an account"),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                      }, child: Text("Register Now",style: TextStyle(color: Color(0xff553333FF),),))
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
