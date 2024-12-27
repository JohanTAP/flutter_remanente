import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(CupertinoIcons.person),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute<ProfileScreen>(
                builder: (context) => CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    middle: const Text('User Profile'),
                    leading: CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: const Icon(CupertinoIcons.back),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  child: ProfileScreen(
                    actions: [
                      SignedOutAction((context) {
                        Navigator.of(context).pop();
                      })
                    ],
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset('flutterfire_300x.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('dash.png'),
            Text(
              'Welcome!',
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            ),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
