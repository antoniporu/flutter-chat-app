import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  const BotonAzul({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(2),
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
        ),
      ),
    );
  }
}
