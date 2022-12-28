import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(const LocalizationSupport());

class LocalizationSupport extends StatelessWidget {
  const LocalizationSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('zh'),
        Locale('he'),
        Locale('ru'),
        Locale('fr', 'BE'),
        Locale('fr', 'CA'),
        Locale('ja'),
        Locale('de'),
        Locale('hi'),
        Locale('ar'),
      ],
      locale: Locale('zh'),
      debugShowCheckedModeBanner: false,
      home: CustomStringLocale(),
    );
  }
}

class CustomStringLocale extends StatefulWidget {
  const CustomStringLocale({super.key});

  @override
  State<StatefulWidget> createState() => ScheduleExample();
}

class ScheduleExample extends State<CustomStringLocale> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Column(
        children: [
          Localizations.override(
            context: context,
            locale: const Locale('en'),
            child:SafeArea(child: SfCalendar(view: CalendarView.month,),),
          ),
          SfDateRangePicker()
        ],
      ),
    ));
  }
}