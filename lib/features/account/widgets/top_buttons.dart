import 'package:e_commerce/features/account/widgets/accont_button.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(
              onTap: () {},
              text: 'Your Orders',
            ),
            AccountButton(
              onTap: () {},
              text: 'Turn Seller',
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AccountButton(
              onTap: () {},
              text: 'Log Out',
            ),
            AccountButton(
              onTap: () {},
              text: 'Your Wish List',
            )
          ],
        )
      ],
    );
  }
}
