// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

var CustomBackgroundColors = Colors.grey[300];

var CustomAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var CustomDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      const DrawerHeader(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Welcome back Bernardo!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('D A S H B O A R D'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.mail),
        title: const Text('M E S S A G E S'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text('S E T T I N G S'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text('L O G  O U T'),
        onTap: () {},
      ),
    ],
  ),
);
