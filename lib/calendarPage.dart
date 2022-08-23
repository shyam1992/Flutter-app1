import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'package:app1/backbutton.dart';
import 'package:app1/pageTitle.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  var isSelected = [true, false];
  var _date = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Backbutton()),
          SizedBox(height: 20.0),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  PageTitle(),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ToggleButtons(
                          children: [Text('Calendar'), Text('I\'m flexible')],
                          onPressed: (int index) {
                            List<bool> temp = [true, false];
                            for (int buttonIndex = 0;
                                buttonIndex < isSelected.length;
                                buttonIndex++) {
                              if (buttonIndex == index) {
                                temp[buttonIndex] = true;
                              } else {
                                temp[buttonIndex] = false;
                              }
                            }
                            setState(() {
                              isSelected = temp;
                            });
                          },
                          isSelected: isSelected),
                    ],
                  ),
                  SizedBox(
                    height: 0.0,
                  ),
                  SfDateRangePicker(
                    onSelectionChanged: _onDateRangeSelectionChanged,
                    selectionMode: DateRangePickerSelectionMode.range,
                  ),
                  Container(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _date,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            onPressed: () {},
                            child: Text(
                              'Search',
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      )),
    );
  }

  void _onDateRangeSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      _date = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
          // ignore: lines_longer_than_80_chars
          ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
    });
  }
}
