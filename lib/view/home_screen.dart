import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/widget/headeR_desktop.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        surfaceTintColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  'MISHAD',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person), // About
              title: Text('About'),
              onTap: () {
                // Handle About navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.design_services), // Services
              title: Text('Services'),
              onTap: () {
                // Handle Services navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.description), // Resume
              title: Text('Resume'),
              onTap: () {
                // Handle Resume navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.work), // Project
              title: Text('Project'),
              onTap: () {
                // Handle Project navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.mail), // Contact
              title: Text('Contact'),
              onTap: () {
                // Handle Contact navigation
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
            child: HeaderDesktop(),
          ),
        ],
      ),
    );
  }
}
