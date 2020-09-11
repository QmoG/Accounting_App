import 'package:accounting_app/presentation/core/widgets/flat_design_button.dart';
import 'package:accounting_app/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class InitSettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('初始化設定'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Text('撲滿裡的錢'),
              TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.attach_money), //prefixIcon
                    hintText: r'0',
                  )),
              SizedBox(
                height: 16,
              ),
              Text('月預算'),
              TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.attach_money), //prefixIcon
                    hintText: r'0',
                  )),
              FlatDesignButton(
                  text: "開始記帳",
                  onPressed: () {
                    // TODO: bloc 將撲滿的錢傳到下一頁
                    ExtendedNavigator.of(context)
                        .replace(Routes.accountingHomePage);
                  })
            ],
          ),
        ));
  }
}
