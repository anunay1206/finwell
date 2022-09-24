import 'package:finwell/utilities/themeStyle.dart';
import 'package:finwell/widgets/transactionCard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 16.0,
              top: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Transactions', style: ThemeStyles.primaryTitle),
                Text('See All', style: ThemeStyles.seeAll),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                TransactionCard(
                  color: Colors.black,
                  letter: 'F',
                  title: 'RAHUL MEENA MOMOS',
                  subTitle: 'FOOD',
                  price: '- ₹ 220',
                ),
                TransactionCard(
                  color: Color(0xfffe695d),
                  letter: 'S',
                  title: 'SPOTIFY PREMIUM',
                  subTitle: 'MUSIC',
                  price: '- ₹ 160',
                ),
                TransactionCard(
                  color: Color(0xff103289),
                  letter: 'O',
                  title: 'OLA',
                  subTitle: 'TAXI',
                  price: '- ₹ 299',
                ),
                TransactionCard(
                  color: Colors.greenAccent,
                  letter: 'G',
                  title: 'CUPS & PLATES',
                  subTitle: 'GROCERY',
                  price: '- ₹ 560',
                ),
                TransactionCard(
                  color: Colors.amberAccent,
                  letter: 'E',
                  title: 'EARPHONES',
                  subTitle: 'AMAZON SALE',
                  price: '- ₹ 450',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

