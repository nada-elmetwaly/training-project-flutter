import 'package:flutter/cupertino.dart';
import 'package:training_project/features/onBoarding/presentation/widgets/customPageViewItem.dart';
import 'package:dots_indicator/dots_indicator.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key,@required this.pageController});
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        ViewItem(
          image: 'assets/shop.jpg',
          title: 'E Shopping',
          subTitle: 'Explore top brands of clothes',


        ),
        ViewItem(
          image: 'assets/delivery.jpg',
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
        ),
        ViewItem(
          image: 'assets/arrived.jpg',
          title: 'Delivery Arrived ',
          subTitle: 'Order is arrived at ypur place',
        ),
      ],
    );
  }
}
