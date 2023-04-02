import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Text('Buy Natural Products'),
        Text(
            'The best place to discover different handmade and natural products here')
      ]),
    );
  }
}
