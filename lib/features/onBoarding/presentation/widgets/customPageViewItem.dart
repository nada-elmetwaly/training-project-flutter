import 'package:flutter/cupertino.dart';

class ViewItem extends StatelessWidget {
  const ViewItem({super.key, this.title, this.subTitle, this.image});
  final String? title;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 150,),
        SizedBox(
          height: 350,
            child: Image.asset(image!)),
        SizedBox(height: 20,),
        Text(title!,style:TextStyle(
          fontFamily: 'poppins',
          fontSize: 20,
          color: const Color(0xff2f2e41),
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.left,),
        SizedBox(height: 10,),
        Text(subTitle!,style:TextStyle(
          fontFamily: 'poppins',
          fontSize: 15,
          color: const Color(0xff78787c),

        ),
          textAlign: TextAlign.left,),

      ],
    );
  }
}
