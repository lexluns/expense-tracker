import 'package:flutter/material.dart';
import 'package:enhance_expense_tracker/widgets/chart.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

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
            itemCount: 2,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(44, 176, 175, 172)),
                        child: Text(
                          EmojiParser().get('coffee').code,
                          style: const TextStyle(fontSize: 24),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                Text('Coffee'),
                                Spacer(),
                                Text('\$10'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Sample category',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                const Spacer(),
                                Text('10:00',
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
