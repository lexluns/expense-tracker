import 'package:flutter/material.dart';
import 'package:enhance_expense_tracker/widgets/chart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Current budget:',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '\$ 10,500',
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(height: 300, child: BarChartSample2()),
          Text(
            'Recent Expenses:',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            itemCount: 3,
            itemBuilder: (context, index) {
              return const Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Icon(Icons.ac_unit_sharp),
                    Text('My expense'),
                    Text('\$ 10.00'),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
