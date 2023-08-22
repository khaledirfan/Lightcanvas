import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const RoundButton({super.key, 
  required this.title, 
  required this.onTap,
  this.loading = false
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
        color: Color.fromARGB(172, 238, 107, 14), borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: loading ? const CircularProgressIndicator(strokeWidth: 3, color: Color.fromARGB(255, 255, 255, 255),) :
          Text(title),
        ),
      ),
    );
  }
}
