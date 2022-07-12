import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrapp/pages/home_page.dart';
import 'package:qrapp/pages/map_page.dart';
import 'package:qrapp/providers/ui_provider.dart';
import 'package:qrapp/themes/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => UiProvider())
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: "home",
        routes: {
          'home': (BuildContext context) => HomePage(),
          'mapa': (BuildContext context) => MapPage(),
        },
        theme: AppTheme.appTheme,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child: Container(
              child: Text('Hello World'),
            ),
          ),
        ),
      ),
    );
  }
}
