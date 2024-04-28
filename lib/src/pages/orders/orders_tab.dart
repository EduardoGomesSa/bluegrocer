import 'package:bluegrocer/src/pages/orders/components/order_tile.dart';
import 'package:flutter/material.dart';
import 'package:bluegrocer/src/config/app_data.dart' as app_data;

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, index) => OrderTile(order: app_data.orders[index]),
        separatorBuilder: (_, index) => const SizedBox(height: 10,),
        itemCount: app_data.orders.length,
      ),
    );
  }
}
