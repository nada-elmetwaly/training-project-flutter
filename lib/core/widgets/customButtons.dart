import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_project/loginPage.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width:200,
      decoration: BoxDecoration(
        color: Color(0xff553333FF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: TextButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));},
          child: Text(
            'Start',
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 14,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
