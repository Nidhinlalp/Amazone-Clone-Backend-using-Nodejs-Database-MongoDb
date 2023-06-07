import 'package:e_commerce/constants/global_variable.dart';
import 'package:e_commerce/features/account/widgets/below_app_bar.dart';
import 'package:e_commerce/features/account/widgets/order.dart';
import 'package:e_commerce/features/account/widgets/top_buttons.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/amazon_in.png',
                  width: 120,
                  height: 45,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    child: const Icon(
                      Icons.notifications_outlined,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    child: const Icon(
                      Icons.search,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: const [
          BelowAppBar(),
          SizedBox(height: 10),
          TopButtons(),
          SizedBox(height: 20),
          Orders()
        ],
      ),
    );
  }
}
