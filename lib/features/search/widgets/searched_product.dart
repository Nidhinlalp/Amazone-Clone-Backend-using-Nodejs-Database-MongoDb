import 'package:e_commerce/common/widgets/stars.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/models/product.dart';

class SearcheProduch extends StatelessWidget {
  final Product product;
  const SearcheProduch({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image.network(
            product.images[0],
            fit: BoxFit.fitWidth,
            height: 135,
            width: 135,
          ),
          Column(
            children: [
              Container(
                width: 200,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  maxLines: 2,
                ),
              ),
              Container(
                width: 200,
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: const Stars(rating: 5),
              ),
              Container(
                width: 200,
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
              ),
              Container(
                width: 200,
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Eligible for FREE Shipping',
                ),
              ),
              Container(
                width: 200,
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'In Stock',
                  style: const TextStyle(
                    color: Colors.teal,
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
