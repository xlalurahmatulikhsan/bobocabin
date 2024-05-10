import 'package:flutter/material.dart';

class ButtonCostum extends StatelessWidget {
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final String title;
  final double fontsize;
  final Color color;

  const ButtonCostum(
      {super.key,
      this.onPressed,
      required this.width,
      required this.height,
      required this.title,
      required this.fontsize,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.grey;
              }
              return color;
            }),
            foregroundColor: const MaterialStatePropertyAll(Colors.white),
            fixedSize: MaterialStateProperty.all<Size>(
              Size(width, height),
            ),
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)))),
        child: Text(
          title,
          style: TextStyle(fontSize: fontsize, color: Colors.white),
        ));
  }
}
