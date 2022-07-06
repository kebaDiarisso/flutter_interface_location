
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  List<bool> _isSelected = [
    true,
    false,
    false,
    false,
    false,
  ];

  static const min = 0.0;
  static const max = 20.0;
  double low = min;
  double high = max;

  static const newmin = 0.0;
  static const newmax = 7000.0;
  double newlow = newmin;
  double newhigh = newmax;


 

  // RangeValues _currentRangeValues = const RangeValues(0, 100);
  GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();
  TextEditingController? _controller;

  String _valueChanged = '';
  String _valueToValidate = '';
  String _valueSaved = '';

  final List<Map<String, dynamic>> _items = [
    {
      'value': 'Price Monthly',
      'label': 'Price Monthly',
    },
    {
      'value': 'Price weekly',
      'label': 'Price weekly',
    },
    {
      'value': 'Price annual',
      'label': 'Price annual',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
                  const Text(
                    'Filter',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Reset'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                  )
                ],
              ),
            ),
            // const Divider(
            //   color: Colors.black,
            //   thickness: 0.2,
            // ),
            Container(
              margin: EdgeInsets.all(15),
              child: const Text(
                'Property Type',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MyElevatedButton(name: 'Any'),
                      MyElevatedButton(name: 'Apartement'),
                      MyElevatedButton(name: 'TownHouse'),
                      MyElevatedButton(name: 'Whole'),
                      MyElevatedButton(name: 'Any'),
                    ],
                  )
                  // ToggleButtons(
                  //   isSelected: _isSelected,
                  //   onPressed: (int newIndex) {
                  //     setState(() {
                  //       for (int i = 0; i < _isSelected.length; i++) {
                  //         if (i == newIndex) {
                  //           _isSelected[i] = true;
                  //         } else {
                  //           _isSelected[i] = false;
                  //         }
                  //         print(_isSelected);
                  //       }
                  //     });
                  //   },
                  //   children: [
                  //     ToggleButton(name: 'Any'),
                  //     ToggleButton(name: 'Apartement'),
                  //     ToggleButton(name: 'TownHouse'),
                  //     ToggleButton(name: 'Whole'),
                  //     ToggleButton(name: 'Any'),

                  //   ],
                  // ),
                  ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
            ),
            ListTile(
              title: SelectFormField(
                type: SelectFormFieldType.dialog,
                items: _items,
                onChanged: (val) => setState(() => _valueChanged = val),
                validator: (val) {
                  setState(() => _valueToValidate = val ?? '');
                  return null;
                },
                onSaved: (val) => setState(() => _valueSaved = val ?? ''),
              ),
              trailing: Text(
                '\$' + low.toString() + '   ' + '\$' + high.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RangeSlider(
              min: min,
              max: max,
              values: RangeValues(low, high),
              onChanged: (values) => setState(() {
                low = values.start;
                high = values.end;
              }),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: const Text(
                'Bedrooms',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyElevatedButton(name: 'Studio'),
                  MyElevatedButton(name: '1'),
                  MyElevatedButton(name: '2'),
                  MyElevatedButton(name: '3'),
                  MyElevatedButton(name: '4'),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: const Text(
                'Bedrooms',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyElevatedButton(name: 'Any'),
                  MyElevatedButton(name: '1'),
                  MyElevatedButton(name: '2'),
                  MyElevatedButton(name: '3'),
                  MyElevatedButton(name: '4'),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
            ),
            ListTile(
              title: Text(
                'Property Size',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              trailing: Text(
                'Up to' + newhigh.toString() + 'sqft',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue),
              ),
            ),
            RangeSlider(
              min: newmin,
              max: newmax,
              values: RangeValues(newlow, newhigh),
              onChanged: (values) => setState(() {
                newlow = values.start;
                newhigh = double.parse((values.end).toStringAsFixed(2));
                
              
              }),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.1,
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: const Text(
                'Furnishing',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyElevatedButton(name: 'Any'),
                  MyElevatedButton(name: '1'),
                  MyElevatedButton(name: '2'),
                  MyElevatedButton(name: '3'),
                  MyElevatedButton(name: '4'),
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  final String name;

  const MyElevatedButton({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.grey,
        ),
      ),
    );
  }
}
