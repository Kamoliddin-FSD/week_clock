import 'package:flutter/material.dart';
import 'package:one_clock/one_clock.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black
                  ),
                  child: DigitalClock(
                    textScaleFactor: 3.5,
                    showSeconds: true,
                    isLive: true,
                    digitalClockTextColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                WeeklyDatePicker(
                  selectedDay: _selectedDay,
                  changeDay: (value) => setState(() {
                    _selectedDay = value;
                  }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
