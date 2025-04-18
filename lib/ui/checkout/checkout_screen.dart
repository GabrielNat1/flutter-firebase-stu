import 'package:flutter/material.dart';
import 'package:myapp/ui/_core/bag_provider.dart';
import 'package:provider/provider.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BagProvider bagProvider = Provider.of<BagProvider>(context);

    final bagMap = bagProvider.getMapByAmount();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        actions: [
          TextButton(
            onPressed: () {
              bagProvider.clearBag();
            },
            child: const Text('Limpar', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text("Pedidos", textAlign: TextAlign.center),
              Column(
                children: List.generate(bagMap.keys.length, (index) {
                  final dish = bagMap.keys.toList()[index];
                  return ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'assets/dishes/default.png',
                      width: 48,
                      height: 48,
                    ),
                    title: Text(dish.name),
                    subtitle: Text("R\$ ${dish.price.toStringAsFixed(2)}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            bagProvider.removeDish(dish);
                          },
                          icon: const Icon(Icons.remove),
                        ),
                        Text(
                          bagMap[dish].toString(),
                          style: const TextStyle(fontSize: 18.0),
                        ),
                        IconButton(
                          onPressed: () {
                            bagProvider.addallDishes([dish]);
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
