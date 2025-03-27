import 'package:calander/components/dhcalender.dart';
import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // return SfCalendar(view: CalendarView.month);
    return Scaffold(body: Dhcalender());
  }
}
