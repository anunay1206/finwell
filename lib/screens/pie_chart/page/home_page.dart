import 'package:flutter/material.dart';
import 'package:finwell/screens/pie_chart/page/pie_chart_page.dart';
import 'package:finwell/main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(MyApp.title), centerTitle: true),
    body: Padding(
      padding: const EdgeInsets.all(8),
      child: PageView(
        children: [
          PieChartPage(),
        ],
      ),
    ),
  );
}
