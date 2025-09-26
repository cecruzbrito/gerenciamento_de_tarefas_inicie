import 'package:flutter/material.dart';

class AnimatedSwithBetweenStates extends StatefulWidget {
  const AnimatedSwithBetweenStates({super.key, required this.child});
  final Widget child;
  @override
  State<AnimatedSwithBetweenStates> createState() => _AnimatedSwithBetweenStatesState();
}

class _AnimatedSwithBetweenStatesState extends State<AnimatedSwithBetweenStates> {
  Widget get child => widget.child;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 800),
      layoutBuilder: (currentChild, previousChildren) {
        return Stack(
          children: [
            for (final w in previousChildren) Align(key: w.key, alignment: Alignment.topCenter, child: w),
            if (currentChild != null) Align(alignment: Alignment.topCenter, child: currentChild),
          ],
        );
      },
      child: child,
    );
  }
}
