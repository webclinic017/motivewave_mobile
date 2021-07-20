import 'package:flutter/material.dart';

class SlideRoute extends PageRouteBuilder {
  final Widget page;
  final double x, y;
  SlideRoute(this.page, this.x, this.y)
    : super(pageBuilder: (ctx, an1, an2) => page,
            transitionsBuilder: (ctx, an1, an2, child) =>
              SlideTransition(
                position: Tween<Offset>(begin: Offset(x, y), end: Offset.zero).animate(an1),
                child: child,
              ),
      );
}

class SlideRightRoute extends SlideRoute {
  SlideRightRoute(Widget page) : super(page, -1, 0);
}

class SlideLeftRoute extends SlideRoute {
  SlideLeftRoute(Widget page) : super(page, 1, 0);
}

class SlideTopRoute extends SlideRoute {
  SlideTopRoute(Widget page) : super(page, 0, 1);
}

class SlideBottomRoute extends SlideRoute {
  SlideBottomRoute(Widget page) : super(page, 0, -1);
}
