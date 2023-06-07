import 'package:e_commerce/common/widgets/bottom_bar.dart';
import 'package:e_commerce/features/admin/screens/add_product_screen.dart';
import 'package:e_commerce/features/auth/screens/auth_screen.dart';
import 'package:e_commerce/features/home/screens/category_deals_screen.dart';
import 'package:e_commerce/features/home/screens/home_screen.dart';
import 'package:e_commerce/features/product_details/screens/product_details.dart';
import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';

import 'features/search/screens/search_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const AuthScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        builder: (_) => const BottomBar(),
      );
    case AddProductScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const AddProductScreen(),
      );
    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        builder: (_) => CategoryDealsScreen(
          category: category,
        ),
      );
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        builder: (_) => SearchScreen(
          searchQuery: searchQuery,
        ),
      );
    case ProductDetailsScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        builder: (_) => ProductDetailsScreen(
          product: product,
        ),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(
              'Screens dose not exist !',
            ),
          ),
        ),
      );
  }
}
