import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_project/features/onBoarding/presentation/widgets/on_boarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
