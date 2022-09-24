import 'package:finwell/components/appbar.dart';
import 'package:finwell/components/card.dart';
import 'package:finwell/components/recentTransactions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Appbar(),
            CardList(),
            RecentTransactions(),
          ],
        ),
      ),
    );
  }
}
