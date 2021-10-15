

import 'package:calendar_module/services/calendar_service.dart';

class CalendarProvider{
  List<String> _calendar = [];

  List<String> _slots = [];
  void getCalendar(){
    _calendar = ClendarService.getAllData();
  }

  void _slot(String slot){
    _slots.add(slot);
  }



}