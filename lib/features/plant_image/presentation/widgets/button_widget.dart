import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.text, required this.icon, this.onTap});

  final  String text;
 final  IconData icon;
 final  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
   
  return SizedBox(
    width: double.infinity,
    height: 52,
    child: ElevatedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: 22),
      label: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary ,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
  );
}}