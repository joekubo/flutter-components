import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class DatePicker extends StatelessWidget {
  final DateTime firstDate;
  final DateTime lastDate;
  final String? labelText;
  final Color borderColor;
  final TextEditingController controller;

  const DatePicker(
      {Key? key,
      required this.firstDate,
      required this.lastDate,
      this.labelText,
      required this.borderColor,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final format = DateFormat("yyyy-MM-dd");
    return Column(children: <Widget>[
      DateTimeField(
        key: key,
        controller: controller,
        format: format,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.date_range),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(
              color: Colors.blueAccent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(
              color: borderColor,
              width: 2.0,
            ),
          ),
          labelText: labelText,
          contentPadding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        onShowPicker: (context, currentValue) {
          return showDatePicker(
            context: context,
            firstDate: firstDate,
            initialDate: currentValue ?? DateTime.now(),
            lastDate: lastDate,
          );
        },
      ),
    ]);
  }
}
