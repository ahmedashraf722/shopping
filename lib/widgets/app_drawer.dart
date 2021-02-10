import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/auth.dart';
import 'package:shop/screens/orders_screen.dart';
import 'package:shop/screens/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        children: [
          AppBar(
            title: Text('Hello Friend'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            title: Text('Shop'),
            leading: Icon(Icons.shop_sharp),
            onTap: () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          Divider(),
          ListTile(
            title: Text('Orders'),
            leading: Icon(Icons.payment),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(OrdersScreen.routeName),
          ),
          Divider(),
          ListTile(
            title: Text('Manage Products'),
            leading: Icon(Icons.edit),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(UserProductsScreen.routeName),
          ),
          Divider(),
          ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacementNamed('/');
                Provider.of<Auth>(context, listen: false).logout();
              }),
        ],
      ),
    );
  }
}
