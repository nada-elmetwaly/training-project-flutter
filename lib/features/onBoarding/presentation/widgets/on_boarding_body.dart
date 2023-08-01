import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_project/features/onBoarding/presentation/widgets/customIndicator.dart';
import 'package:training_project/features/onBoarding/presentation/widgets/customPageView.dart';

import '../../../../core/widgets/customButtons.dart';


class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});


  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController=PageController(
      initialPage:0,
    )..addListener(() {
     setState(() {

     });
    });
  }
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(pageController: pageController,),
        Positioned(
          left: 0,
          right: 0,
          bottom: 190,
            child: CustomIndicator(
              dotIndex:pageController!.hasClients ? pageController?.initialPage:0,

            ) ),

        Positioned(
          top:MediaQuery.of(context).size.height*0.1,
          right: 32,
          child: Text('Skip',style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 14,
            color: const Color(0xff898989),


          ),
          textAlign: TextAlign.left,),
        ),
        Positioned(
          bottom: 100,
            left: 75,
            child: CustomGeneralButton())


      ],
    );
  }
}
