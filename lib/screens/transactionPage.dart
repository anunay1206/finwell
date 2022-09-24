import 'package:finwell/utilities/themeColors.dart';
import 'package:finwell/utilities/themeStyle.dart';
import 'package:finwell/widgets/addNote.dart';
import 'package:finwell/widgets/cardInPage.dart';
import 'package:finwell/widgets/otherDetailsDivider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionPage extends StatefulWidget {
  final String title;
  final String subTitle;
  final String price;
  final String letter;
  final Color color;
  TransactionPage({
    required this.color,
    required this.letter,
    required this.price,
    required this.subTitle,
    required this.title,
  });
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sent',
        style: TextStyle(
            color: Colors.black
        ),),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
          color: Colors.black,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(left: 16.0, top: 32.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text('Outgoing Transaction',
                          style: ThemeStyles.primaryTitle),
                    ],
                  ),
                ),
                CardInPage(
                  color: widget.color,
                  title: widget.title,
                  subTitle: widget.subTitle,
                  price: widget.price,
                  letter: widget.letter,
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 16.0, top: 32.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text('Details', style: ThemeStyles.primaryTitle),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: SvgPicture.asset("assets/bankTransfer-icon.svg"),
                      ),
                      Text('Bank Transfer',
                          style: ThemeStyles.otherDetailsPrimary),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/edit-icon.svg"),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TRANSACTION ID', style: ThemeStyles.otherDetailsSecondary),
                      SizedBox(height: 5.0),
                      Text('A09736499XXX',
                          style: ThemeStyles.otherDetailsPrimary),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CARD', style: ThemeStyles.otherDetailsSecondary),
                      SizedBox(height: 5.0),
                      Text('4567XXXXXXXX8765',
                          style: ThemeStyles.otherDetailsPrimary),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('DATE',
                          style: ThemeStyles.otherDetailsSecondary),
                      SizedBox(height: 5.0),
                      Text('22 SEPT 2022', style: ThemeStyles.otherDetailsPrimary),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TIME',
                          style: ThemeStyles.otherDetailsSecondary),
                      SizedBox(height: 5.0),
                      Text('10:30:56',
                          style: ThemeStyles.otherDetailsPrimary),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('LOCATION',
                          style: ThemeStyles.otherDetailsSecondary),
                      SizedBox(height: 5.0),
                      Text('CAMPION STREET', style: ThemeStyles.otherDetailsPrimary),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
