# How to override the Material app locale and set the English language for Flutter Calendar?

This example demonstrates how to override the Material app locale and set the English language for Flutter Calendar.

In Flutter, you can override the Material app locale with different locale by using the [Localization.override](https://api.flutter.dev/flutter/widgets/Localizations/Localizations.override.html) constructor.

## Override material app locale and locale for the calendar
In this sample, the SfCalendar and SfDateRangePicker control is present in the Column widget. The SfCalendar is placed in the Localization.override constructor in which the inherited locale (defined in Material app locale) and SfDateRangePicker have Material app locale.

```
class LocalizationSupport extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('zh'),
      ],
      locale: const Locale('zh'),
      debugShowCheckedModeBanner: false,
      home: CustomStringLocale(),
    );
  }
}

class ScheduleExample extends State<CustomStringLocale> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Column(
        children: [
          Localizations.override(
            context: context,
            locale: Locale('en'),
            child: Expanded(child: SfCalendar()),
          ),
          SfDateRangePicker()
        ],
      ),
    ));
  }
}

```


## Requirements to run the demo
* [VS Code](https://code.visualstudio.com/download)
* [Flutter SDK v1.22+](https://flutter.dev/docs/development/tools/sdk/overview)
* [For more development tools](https://flutter.dev/docs/development/tools/devtools/overview)

## How to run this application
To run this application, you need to first clone or download the ‘create a flutter maps widget in 10 minutes’ repository and open it in your preferred IDE. Then, build and run your project to view the output.

## Further help
For more help, check the [Syncfusion Flutter documentation](https://help.syncfusion.com/flutter/introduction/overview),
 [Flutter documentation](https://flutter.dev/docs/get-started/install).
