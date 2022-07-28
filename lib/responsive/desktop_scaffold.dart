import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

import '../utils/custom_container.dart';
import '../utils/custom_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomBackgroundColors,
        appBar: CustomAppBar,
        body: Row(
          children: [
            CustomDrawer,
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return const CustomContainer();
                          }),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return const CustomTile();
                          }))
                ],
              ),
            ),
            Expanded(
                child: Column(
              children: const [
                Expanded(child: CustomTile()),
                Expanded(child: CustomContainer()),
              ],
            ))
          ],
        ));
  }
}
