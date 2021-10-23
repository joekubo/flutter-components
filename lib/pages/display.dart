import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/pages/components/datepicker.dart';

class DisplayComponents extends StatelessWidget {
  final String title;
  const DisplayComponents({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 60.0,
          child: DatePicker(
            controller: controller,
            labelText: 'Date of Birth(Optional)',
            borderColor: Colors.blueAccent,
            firstDate: DateTime(2000),
            lastDate: DateTime(2022),
          ),
        ),
      ),
    );
  }
}
