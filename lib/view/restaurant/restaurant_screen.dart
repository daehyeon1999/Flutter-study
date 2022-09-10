import 'package:flutter/material.dart';
import 'package:flutter_study/view/restaurant/widgets/restaurant_card.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RestaurantCard(
            image: Image.asset('asset/img/food/ddeok_bok_gi.jpg', fit: BoxFit.cover),
            name: '불타는 떡볶이',
            tags: const ['떡볶이', '치즈', '매운맛'],
            ratingCount: 100,
            deliveryTime: 15,
            deliveryFee: 2000,
            rating: 4.52,
          ),
        ),
      ),
    );
  }
}