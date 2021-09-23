import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterseed/presentation/screens/sepotipay_home.dart';
import 'package:flutterseed/presentation/screens/sepotipay_splash.dart';
import 'package:flutterseed/presentation/themes/theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return GestureDetector(
      onTap: () {
        WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        title: 'Sepotipay',
        color: Theme.of(context).colorScheme.primary,
        initialRoute: '/splash',
        routes: {
          '/home': (context) => const SepotipayHome(),
          '/splash': (context) => const SepotipaySplash()
        },
      ),
    );
  }
}
