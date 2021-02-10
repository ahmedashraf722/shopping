import 'package:flutter/material.dart';
import 'package:shop/widgets/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OrderScreen')),
      drawer: AppDrawer(),
    );
  }
}
