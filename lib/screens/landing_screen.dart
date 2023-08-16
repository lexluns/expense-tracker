import 'package:enhance_expense_tracker/screens/settings_screen.dart';
import 'package:enhance_expense_tracker/screens/transaction_screen.dart';
import 'package:enhance_expense_tracker/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:enhance_expense_tracker/screens/home_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeScreen();

    if (_selectedPageIndex == 1) {
      activePage = const TransactionsScreen();
    }

    if (_selectedPageIndex == 2) {
      activePage = const SettingsScreen();
    }

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100), // Set this height
        child: MyAppBarExtension(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.payments),
            label: 'Expenses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
      ),
      body: activePage,
    );
  }
}
