import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/cubit/theme_cubit.dart';
import '../routes/router.gr.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return MaterialApp(
            title: 'Accounting App',
            theme: theme,
            debugShowCheckedModeBanner: false,
            builder: ExtendedNavigator(router: Router()),
          );
        },
      ),
    );
  }
}
