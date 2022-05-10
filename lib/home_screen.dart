import 'package:RapidoCustomerFlutter/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        key: Key("columnMain"),
        children: [
          Container(
            height: 80,
            color: AppColors.lightGray,
            child: Row(
              key: Key("rowTop"),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //top imageView
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/profile.png"),
                  ),
                ),
                Column(
                  key: Key("columnAddress"),
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Location",
                      style: TextStyle(
                          fontFamily: 'Circular',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.gray),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 18,
                          width: 18,
                          child: Image(image: AssetImage(AppIcons.icLocation))
                        ),
                        Text(
                          "3350 Ford Street Santa...",
                          style: TextStyle(
                              fontFamily: 'Circular',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.dark),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
