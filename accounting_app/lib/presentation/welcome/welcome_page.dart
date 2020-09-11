import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/widgets/flat_design_button.dart';
import '../routes/router.gr.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('歡迎使用'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatDesignButton(
              padding: EdgeInsets.symmetric(horizontal: 100),
              text: '新紀錄',
              onPressed: () {
                print('新紀錄，前往初始化設定');
                ExtendedNavigator.of(context).replace(Routes.initSettingPage);
              },
              prefixIcon: Icon(Icons.edit),
            ),
            SizedBox(
              height: 16,
            ),
            FlatDesignButton(
              padding: EdgeInsets.symmetric(horizontal: 100),
              text: '匯入資料',
              onPressed: () {
                print('匯入資料');
              },
              prefixIcon: Icon(Icons.file_upload),
            ),
          ],
        ),
      ),
    );
  }
}
