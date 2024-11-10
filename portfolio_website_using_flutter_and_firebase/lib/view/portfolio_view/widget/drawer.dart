import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
