//Marawan & Tarek
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70),
              height: sh * 0.9,
              width: sw * 0.2,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (_, index) {
                  return Container(
                    child: Center(
                      child: Text('${((index + 8) % 12) + 1}'),
                    ),
                    width: 75,
                    height: 75,
                  );
                },
              ),
            ),
            Container(
              width: sw * 0.8,
              child: TableCalendar(
                headerVisible: true,
                availableGestures: AvailableGestures.horizontalSwipe,
                firstDay: DateTime.now().subtract(const Duration(days: 7)),
                lastDay: DateTime.now().add(const Duration(days: 7)),
                focusedDay: DateTime.now(),
                calendarFormat: CalendarFormat.week,
                rowHeight: sh * 0.9,
                calendarBuilders: CalendarBuilders(
                  defaultBuilder: (context, thisDay, today) {
                    //print(TimeOfDay.now());
                    //print(thisDay);
                    return ListView.builder(
                      itemCount: 5,
                      itemBuilder: (_, index) {
                        return Container(
                          child: Center(
                            child: Text('$thisDay ${((index + 8) % 12) + 1}'),
                          ),
                          width: 75,
                          height: 75,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
