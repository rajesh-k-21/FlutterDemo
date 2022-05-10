import 'package:flutter/material.dart';

class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({Key? key}) : super(key: key);

  @override
  _HomeNavigationBarState createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {

  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: provideIcons("assets/ic_menu_home.png"),
            activeIcon: provideIcons("assets/ic_menu_home_selected.png"),
            label: "Home"),
        BottomNavigationBarItem(
            icon: provideIcons("assets/ic_menu_my_order.png"),
            activeIcon: provideIcons("assets/ic_menu_my_order_selected.png"),
            label: "My Order"),
        BottomNavigationBarItem(
            icon: provideIcons("assets/ic_menu_notification.png"),
            activeIcon:
            provideIcons("assets/ic_menu_notification_selected.png"),
            label: "Notification"),
        BottomNavigationBarItem(
            icon: provideIcons("assets/ic_menu_account.png"),
            activeIcon: provideIcons("assets/ic_menu_account_selected.png"),
            label: "Account"),
      ],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }

  Widget provideIcons(String icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        height: 26,
        width: 26,
        child: Image.asset(icon),
      ),
    );
  }
}
