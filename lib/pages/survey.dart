import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:go_router/go_router.dart';

class Survey extends StatefulWidget {
  Survey({super.key});

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  String SelectedBudget = '';
  DateTime selectedDate = DateTime.now();
  String LoveBirds = '';
  var item1 = ['Bride', 'Groom'];
  var items = [
    '1000KD',
    '2000KD',
    '3000KD',
    '4000KD',
    '5000KD',
    '6000KD',
    '7000KD',
    '8000KD',
    '9000KD',
    '10000KD',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAD6D6),
      appBar: AppBar(
        title: Text("Please Answer the survey"),
        titleTextStyle:
            TextStyle(color: Color(0xfff705B67), fontWeight: FontWeight.bold),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Are You the Bride or the Groom?"),
              DropdownButton(
                hint: Text(LoveBirds.isEmpty ? "choose" : LoveBirds),
                items: item1.map((String item1) {
                  return DropdownMenuItem(
                    value: item1,
                    child: Text(item1),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    LoveBirds = newValue!;
                  });
                },
              ),
              SizedBox(),
              Text("How much is your budget ?"),
              DropdownButton(
                hint: Text(SelectedBudget.isEmpty ? "budgets" : SelectedBudget),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    SelectedBudget = newValue!;
                  });
                },
              ),
              Text("When is you wedding date?"),
              TextButton(
                child: Text("${selectedDate}"),
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2023, 3, 30),
                      maxTime: DateTime(2024, 3, 20), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    setState(() {
                      selectedDate = date;
                    });

                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    context.push("/MyHomePage");
                  },
                  child: Text("SUBMIT"))
            ],
          ),
        ],
      ),
    );
  }
}
