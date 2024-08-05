import 'models/data/quote_data.dart';

import '/models/themes/theme_data.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false, theme: theme, home: const MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  void changeQuote() {
    setState(() {
      _index++;
    });
  }

  void resetQuote() {
    setState(() {
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            quotes[_index % quotes.length],
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    onPressed: changeQuote,
                    icon: const Icon(
                      Icons.sunny_snowing,
                      color: Colors.greenAccent,
                    ),
                    label: Text(
                      "Inspire Me",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground),
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton.icon(
                    onPressed: resetQuote,
                    icon: const Icon(
                      Icons.cached,
                      color: Colors.redAccent,
                    ),
                    label: Text(
                      "Reset Quote",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onError),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
