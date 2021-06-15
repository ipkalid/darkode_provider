import 'package:darkode_provider/provider/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeNotifer themeNotifer = Provider.of<ThemeNotifer>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ThirdScreen"),
            Switch(
                value: themeNotifer.getTheme(),
                onChanged: (_) => themeNotifer.changeAppTheme())
          ],
        ),
      ),
    );
  }
}
