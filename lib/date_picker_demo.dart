import "package:date_format/date_format.dart";
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DatePickerPubDemo extends StatefulWidget {
  const DatePickerPubDemo({Key? key}) : super(key: key);

  @override
  State<DatePickerPubDemo> createState() => _DatePickerPubDemoState();
}

class _DatePickerPubDemoState extends State<DatePickerPubDemo> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(2022, 1, 1),
      maxTime: DateTime(2023, 10, 10),
      onChanged: (date) {
        print('change$date');
      },
      onConfirm: (date) {
        print('confirm$date');
        setState(() {
          _dateTime = date;
        });
      },
      currentTime: DateTime.now(),
      locale: LocaleType.zh,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("日期选择"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/alertDialog")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: _showDatePicker,
            child: Row(
              children: [
                Text("${formatDate(_dateTime, [yyyy, '-', mm, '-', dd])}"),
                const Icon(Icons.arrow_drop_down)
              ],
            ),
          )
        ],
      ),
    );
  }
}
