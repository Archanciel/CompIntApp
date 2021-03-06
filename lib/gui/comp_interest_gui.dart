import 'package:flutter/material.dart';

import '../utils/gui_util.dart';

class CompInterestApp extends StatefulWidget {
  const CompInterestApp({Key? key}) : super(key: key);

  @override
  State<CompInterestApp> createState() => _CompInterestAppState();
}

class _CompInterestAppState extends State<CompInterestApp> {
  final FocusNode _focusNodeCapital = FocusNode();
  final FocusNode _focusNodeInterest = FocusNode();
  final FocusNode _focusNodeYear = FocusNode();

  double _capital = 0;
  double _interestPercent = 0;
  double _year = 0;

  @override
  Widget build(BuildContext context) {
    _focusNodeCapital.addListener(() {
      setState(() {
        _focusNodeCapital.hasFocus ? Colors.blue : Colors.white;
      });
    });
    _focusNodeInterest.addListener(() {
      setState(() {
        _focusNodeInterest.hasFocus ? Colors.blue : Colors.white;
      });
    });
    _focusNodeYear.addListener(() {
      setState(() {
        _focusNodeYear.hasFocus ? Colors.blue : Colors.white;
      });
    });

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(3, 39, 82, 1),
        title: const Text('Composite Interest'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          TextField(
            focusNode: _focusNodeCapital,
            decoration: InputDecoration(
              labelText: 'Capital',
              labelStyle: TextStyle(
                  color:
                      _focusNodeCapital.hasFocus ? Colors.white : Colors.blue),
            ),
            style: const TextStyle(color: Colors.white),
            autofocus: false,
            onChanged: (String value) {
              setState(() {
                _capital = GuiUtil.strToDouble(value);
              });
            },
          ),
          TextField(
            focusNode: _focusNodeInterest,
            decoration: InputDecoration(
              labelText: 'Interest in %',
              labelStyle: TextStyle(
                  color:
                      _focusNodeInterest.hasFocus ? Colors.white : Colors.blue),
            ),
            style: const TextStyle(color: Colors.white),
            autofocus: false,
            onChanged: (String value) {
              setState(() {
                _interestPercent = GuiUtil.strToDouble(value);
              });
            },
          ),
          TextField(
            focusNode: _focusNodeYear,
            decoration: InputDecoration(
              labelText: 'Year number',
              labelStyle: TextStyle(
                  color: _focusNodeYear.hasFocus ? Colors.white : Colors.blue),
            ),
            style: const TextStyle(color: Colors.white),
            autofocus: false,
            onChanged: (String value) {
              setState(() {
                _year = GuiUtil.strToDouble(value);
              });
            },
          ),
          Text(
            '$_capital \n $_interestPercent \n $_year',
            style: const TextStyle(color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
