import 'package:e_commerce/constants/loader.dart';
import 'package:e_commerce/features/account/widgets/single_product.dart';
import 'package:e_commerce/features/admin/services/admin_srvices.dart';
import 'package:e_commerce/features/order_details/screens/order_details_screen.dart';
import 'package:flutter/material.dart';

import '../../../models/order.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<Order>? orders;

  @override
  void initState() {
    super.initState();
    fetchOrder();
  }

  void fetchOrder() async {
    orders = await adminSrvices.fetchAllOrders(context);
    setState(() {});
  }

  final AdminSrvices adminSrvices = AdminSrvices();
  @override
  Widget build(BuildContext context) {
    return orders == null
        ? const Loader()
        : GridView.builder(
            itemCount: orders!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              final orderData = orders![index];
              return GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  OrderDetailScreen.routeName,
                ),
                child: SizedBox(
                  height: 140,
                  child: SingleProduct(
                    image: orderData.products[0].images[0],
                  ),
                ),
              );
            },
          );
  }
}
