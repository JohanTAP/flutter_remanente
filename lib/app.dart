import 'package:flutter/cupertino.dart';

import 'auth_gate.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeGreen,
      ),
      home: AuthGate(),
    );
  }
}
