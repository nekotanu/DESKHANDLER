import 'package:calander/components/dhcalender.dart';
import 'package:calander/components/to_do.dart';
import 'package:calander/main.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key, required this.days});

  final List<String> days;

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  // List of pages to navigate to
  final List<Widget> pages = [Dhcalender(days: days), ToDo()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            // Sidebar
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.grey[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(pages.length, (index) {
                    bool isSelected = index == selectedIndex;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => pages[index],
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor:
                              isSelected ? Colors.blue[900] : Colors.white,
                          child: Icon(
                            _getIcon(index),
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            // Vertical Divider
            const VerticalDivider(width: 1, thickness: 1, color: Colors.white),
            // Main Content
            Expanded(
              flex: 5,
              child: pages[selectedIndex], // Display selected page content
            ),
          ],
        ),
      ),
    );
  }

  // Function to get icon based on index
  IconData _getIcon(int index) {
    switch (index) {
      case 0:
        return Icons.dashboard;
      case 1:
        return Icons.edit;
      case 2:
        return Icons.mail;
      default:
        return Icons.error;
    }
  }
}
