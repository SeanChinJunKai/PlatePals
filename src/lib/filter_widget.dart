import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: CheckBoxTileListWidget(),
      ),
    );
  }
}

class CheckBoxTileListWidget extends StatefulWidget {
  const CheckBoxTileListWidget({super.key});

  @override
  State<CheckBoxTileListWidget> createState() => _CheckBoxTileListWidgetState();
}

class _CheckBoxTileListWidgetState extends State<CheckBoxTileListWidget> {
  final int halal_index = 0;
  final int vegetarian_index = 1;
  final int vegan_index = 2;

  List<int> _selected_box = [11];

  @override
  Widget build(BuildContext context) {
    List<CheckBoxListTileModel> list = CheckBoxListTileModel.getUsers();
    return Column(children: [
      CheckboxListTile(
          title: Text(
            list[halal_index].title,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          value: _selected_box.contains(halal_index),
          onChanged: (bool? value) {
            setState(() {
              timeDilation = value! ? 1.5 : 1.0;
              if (_selected_box.contains(halal_index)) {
                _selected_box.remove(halal_index);
              } else {
                _selected_box.add(halal_index);
              }
            });
          },
          secondary: Image.asset(list[halal_index].img)),
      CheckboxListTile(
          title: Text(
            list[vegetarian_index].title,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          value: _selected_box.contains(vegetarian_index),
          onChanged: (bool? value) {
            setState(() {
              timeDilation = value! ? 1.5 : 1.0;
              if (_selected_box.contains(vegetarian_index)) {
                _selected_box.remove(vegetarian_index);
              } else {
                _selected_box.add(vegetarian_index);
              }
            });
          },
          secondary: Image.asset(list[vegetarian_index].img)),
      CheckboxListTile(
          title: Text(
            list[vegan_index].title,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          value: _selected_box.contains(vegan_index),
          onChanged: (bool? value) {
            setState(() {
              timeDilation = value! ? 1.5 : 1.0;
              if (_selected_box.contains(vegan_index)) {
                _selected_box.remove(vegan_index);
              } else {
                _selected_box.add(vegan_index);
              }
            });
          },
          secondary: Image.asset(list[vegan_index].img))
    ]);
  }
}

class CheckBoxListTileModel {
  int userId;
  String img;
  String title;
  bool isCheck;

  CheckBoxListTileModel(
      {this.userId = 0,
      this.img = "default",
      this.title = "default",
      this.isCheck = false});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          img: 'assets/images/halal_icon.png',
          title: "Halal",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 2,
          img: 'assets/images/vegetarian_icon.png',
          title: "Vegetarian",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          img: 'assets/images/vegan_icon.webp',
          title: "Vegan",
          isCheck: false),
    ];
  }
}
