import 'package:e_commerce/constants/global_variable.dart';
import 'package:e_commerce/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // temporarys lis

  List list = [
    'https://tse2.mm.bing.net/th?id=OIP.lHS86P4wMEe_v5jJtTb4mAHaFW&pid=Api&P=0&h=180',
    'https://tse2.mm.bing.net/th?id=OIP.lHS86P4wMEe_v5jJtTb4mAHaFW&pid=Api&P=0&h=180',
    'https://tse2.mm.bing.net/th?id=OIP.lHS86P4wMEe_v5jJtTb4mAHaFW&pid=Api&P=0&h=180',
    'https://tse2.mm.bing.net/th?id=OIP.lHS86P4wMEe_v5jJtTb4mAHaFW&pid=Api&P=0&h=180',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                'Your Order',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            )
          ],
        ),

//// display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
          ),
        )
      ],
    );
  }
}
