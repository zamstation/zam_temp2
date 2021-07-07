import 'package:flutter/material.dart';

class HeroDialogRoute<T> extends PageRoute<T> {
  final WidgetBuilder builder;

  @override
  get opaque => false;
  @override
  get barrierDismissible => true;
  @override
  get maintainState => true;
  @override
  get barrierLabel => '';
  @override
  get barrierColor => Colors.black54;
  @override
  get transitionDuration => const Duration(milliseconds: 300);

  HeroDialogRoute({
    required this.builder,
  }) : super();

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      ),
      child: child,
    );
  }

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return builder(context);
  }
}
