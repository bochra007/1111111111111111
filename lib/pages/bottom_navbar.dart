import 'package:app_test/pages/appList_page.dart';
import 'package:app_test/pages/dashboard2_page.dart';
import 'package:app_test/pages/dashboard_page.dart';
import 'package:app_test/widgets/chartWidget.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0; // Index to track which tab is selected

  // List of widgets corresponding to each tab in the bottom nav bar
  static final List<Widget> _widgetOptions = <Widget>[
    const DashboardPage(),
    const AppListPAge(),
    const DashboardPage2(),
    // const Text("data")
    const Center(child: ChartWidget(text: 'Mental State')),
  ];

  // Function to handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 32.0, right: 32.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Color.fromRGBO(255, 255, 255, 086),
                    size: 40,
                  ),
                  Text(
                    "Child first name ",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 086),
                        fontSize: 18),
                  ),
                  Icon(
                    Icons.person_2_outlined,
                    color: Color.fromRGBO(255, 255, 255, 086),
                    size: 40,
                  )
                ],
              ),
              SizedBox(
                height: size.width * 0.05,
              ),
              _widgetOptions
                  .elementAt(_selectedIndex), // Display the selected page
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: const Color.fromRGBO(63, 99, 169, 1),
        unselectedItemColor: const Color.fromRGBO(93, 74, 255, 1),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          _buildBarItem(Icons.home, 'DASHBOARD', 0),
          _buildBarItem(Icons.settings, 'CONTROL', 1),
          _buildBarItem(Icons.facebook_rounded, 'SOCIAL MEDIA', 2),
          _buildBarItem(Icons.notification_important, 'ALERTS', 3),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBarItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Stack(
        alignment: Alignment.center,
        children: [
          if (_selectedIndex == index)
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(0.2), // Circle color
              ),
              width: 50, // Circle size
              height: 50,
            ),
          Icon(icon),
        ],
      ),
      label: label,
    );
  }
}
