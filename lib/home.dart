import 'package:RapidoCustomerFlutter/app_colors.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';
import 'home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
          backgroundColor: AppColors.white,
        ),
        body: HomeScreen(),
        bottomNavigationBar: HomeNavigationBar(),
      ),
    );
  }
}
