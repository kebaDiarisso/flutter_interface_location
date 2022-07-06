import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  List<bool> _isSelected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.red,
        margin:EdgeInsets.all(10),
       // margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 50.0,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ToggleButtons(
            isSelected: _isSelected,
            onPressed: (int newIndex) {
              setState(() {
                for (int i = 0; i < _isSelected.length; i++) {
                  if (i == newIndex) {
                    _isSelected[i] = true;
                  } else {
                    _isSelected[i] = false;
                  }
                  print(_isSelected);
                }
              });
            },
            children: [
              ToggleButton(name: '1D'),
              ToggleButton(name: '1W'),
              ToggleButton(name: '1M'),
              ToggleButton(name: '1Y'),
              ToggleButton(name: '1D'),
              ToggleButton(name: '1W'),
              ToggleButton(name: '1M'),
              ToggleButton(name: '1Y'),
            ],
          ),
        ),
      ),
    );
  }
}

class ToggleButton extends StatelessWidget {
  final String name;
  const ToggleButton({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(vertical: 4),
      alignment: Alignment.center,
      child: Text(
        name,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
