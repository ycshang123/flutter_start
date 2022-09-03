import 'package:flutter/material.dart';

class DateDemo extends StatefulWidget {
  const DateDemo({Key? key}) : super(key: key);

  @override
  State<DateDemo> createState() => _DateDemoState();
}

class _DateDemoState extends State<DateDemo> {
  var _datetime = DateTime.now();
  var _time = TimeOfDay(hour: 9, minute: 20);

  _showDatePicker() async {
    var date = await showDatePicker(
        context: context,
        initialDate: _datetime,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));

    if (date == null) return;
    var time = await showTimePicker(context: context, initialTime: _time);
    if (time == null) return;

    print(date);

    setState(() {
      _datetime = date;
      _time = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("日期和时间"),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, "/datepicker")},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showDatePicker();
          },
          child: const Text("点击"),
        ),
      ),
    );
  }
}
