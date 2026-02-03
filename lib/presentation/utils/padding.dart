import 'package:flutter/widgets.dart';

class P extends EdgeInsets {
  const P({
    double? all,
    double? vertical,
    double? horizontal,
    double? top,
    double? right,
    double? bottom,
    double? left,
  }) : super.only(
         left: all ?? horizontal ?? left ?? 0,
         right: all ?? horizontal ?? right ?? 0,
         top: all ?? vertical ?? top ?? 0,
         bottom: all ?? vertical ?? bottom ?? 0,
       );
}
