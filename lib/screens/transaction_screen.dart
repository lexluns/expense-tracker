import 'package:flutter/material.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  // final TextEditingController _dropdownController = TextEditingController();
  //to be followed

  String? dropDownValue = 'Daily';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            DropdownButton(
              value:
                  dropDownValue, // this place should not have a controller but a variable
              onChanged: (value) {
                setState(() {
                  dropDownValue = value;
                });
              },
              items: ["Daily", "Monthly", "Yearly"]
                  .map((value) => DropdownMenuItem(
                      value:
                          value, // add this property an pass the _value to it
                      child: Text(value)))
                  .toList(), //it is .map because we need to transform the list into list of dropdown menu item
            ),
            const Spacer(),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_downward,
              ),
              label: const Text('Descending '),
            )
          ],
        ),
        Expanded(
          child: ListView(
            children: const [
              ListTile(
                title: Text('my expense is this'),
                subtitle: Text('\$ 10.00'),
              ),
              ListTile(
                title: Text('my expense is this'),
                subtitle: Text('\$ 10.00'),
              ),
              ListTile(
                title: Text('my expense is this'),
                subtitle: Text('\$ 10.00'),
              ),
              ListTile(
                title: Text('my expense is this'),
                subtitle: Text('\$ 10.00'),
              ),
              ListTile(
                title: Text('my expense is this'),
                subtitle: Text('\$ 10.00'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
