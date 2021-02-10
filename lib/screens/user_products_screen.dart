import 'package:flutter/material.dart';
import 'package:shop/widgets/app_drawer.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/users_products_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UserProductsScreen')),
      drawer: AppDrawer(),
    );
  }
}
