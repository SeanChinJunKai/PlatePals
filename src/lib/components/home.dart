import 'package:flutter/material.dart';
import 'filter_widget.dart';
import 'package:src/generate_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(builder: (context) {
          return GestureDetector(
            onTap: () {
              if (_scaffoldKey.currentState?.isDrawerOpen == false) {
                _scaffoldKey.currentState?.openDrawer();
              } else {
                _scaffoldKey.currentState?.openEndDrawer();
              }
            },
            child: Align(
                child: Text(
              "Filter",
              style: TextStyle(color: Colors.white),
            )),
          );
        }),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/logo.png', height: 30, width: 30),
            Text("Plate Pals")
          ],
        ),
      ),
      body: Scaffold(
          key: _scaffoldKey,
          drawer: Drawer(
            child: CheckBoxTileListWidget(),
          ),
          body: Center(child: GenerateFoodWidget())),
    );
  }
}
