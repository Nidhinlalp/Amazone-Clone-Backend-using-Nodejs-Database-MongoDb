import 'package:e_commerce/constants/global_variable.dart';
import 'package:e_commerce/features/account/services/account_services.dart';
import 'package:e_commerce/features/account/widgets/single_product.dart';
import 'package:e_commerce/features/order_details/screens/order_details_screen.dart';
import 'package:flutter/material.dart';

import '../../../models/order.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // temporarys lis

  List<Order>? orders;
  final AccountService accountService = AccountService();

  @override
  void initState() {
    super.initState();
    fetchOrder();
  }

  fetchOrder() async {
    orders = await accountService.fetchMyOrders(
      context: context,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return orders == null
        ? const LinearProgressIndicator()
        : Column(
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
              Container(
                height: 170,
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 20,
                  right: 0,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: orders!.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.pushNamed(
                        context,
                        OrderDetailScreen.routeName,
                        arguments: orders![index],
                      ),
                      child: SingleProduct(
                        image: orders![index].products[0].images[0],
                      ),
                    );
                  },
                ),
              )
            ],
          );
  }
}
