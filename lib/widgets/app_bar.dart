import 'package:flutter/material.dart';

class MyAppBarExtension extends StatelessWidget {
  const MyAppBarExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome!',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Your wallet is looking full!',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: const Color.fromARGB(150, 0, 0, 0)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
