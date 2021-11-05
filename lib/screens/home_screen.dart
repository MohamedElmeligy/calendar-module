// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:calendar_module/screens/calendar/calendar.dart';
import 'package:calendar_module/screens/calendar/components/slot_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CalendarScreen(),
      ),
    );
  }
}
