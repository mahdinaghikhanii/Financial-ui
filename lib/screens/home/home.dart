import 'package:finance_ui/screens/main_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/nav_button.dart';
import '../chart_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mahdi naghikhani',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              foregroundImage: AssetImage('assets/images/mahdi.jpg'),
              backgroundColor: Colors.transparent,
              child: Text('A'),
            ),
          )
        ],
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          MainScreen(),
          ChartScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavButton(
              iconData: Icons.home,
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              selected: selectedIndex == 0,
            ),
            NavButton(
              iconData: Icons.savings,
              onPressed: () {},
            ),
            NavButton(
              iconData: Icons.send,
              onPressed: () {},
            ),
            NavButton(
              iconData: Icons.paid,
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              selected: selectedIndex == 1,
            ),
            NavButton(
              iconData: Icons.settings,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
