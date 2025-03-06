import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          destinations: const <Widget>[
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.qr_code_scanner), label: "QR Scanner"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile")
          ]),
      body: <Widget>[
        Center(child: Text("Home")),
        Center(child: Text("QR")),
        Center(child: Text("Profile"))
      ][currentPageIndex],
    );
  }
}
