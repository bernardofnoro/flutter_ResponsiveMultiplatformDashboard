import 'package:flutter/material.dart';

import 'package:responsive_dashboard/constants.dart';

import '../utils/custom_container.dart';
import '../utils/custom_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomBackgroundColors,
      appBar: CustomAppBar,
      drawer: CustomDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return const CustomContainer();
                  }),
            ),
          ),
          Expanded(
              flex: 2,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const CustomTile();
                  }))
        ],
      ),
    );
  }
}
