import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';
class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 24, 25, 166),
            Color.fromARGB(255, 24, 112, 166),
          ],
        ),
      ),
      child: const Center(
        child: StyledText(), // Using StyledText widget here
      ),
    );
  }
}
