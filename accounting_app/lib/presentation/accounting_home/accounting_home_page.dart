import 'package:accounting_app/presentation/accounting_home/widgets/accounting_drawer.dart';
import 'package:flutter/material.dart';

class AccountingHomePage extends StatelessWidget {
  const AccountingHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true, // this is all you need
          title: Text('記帳'),
        ),
        drawer: AccountingDrawer(),
        body: Column(
          children: [
          ]
        )
    );
  }
}
