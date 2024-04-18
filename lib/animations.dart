import 'package:flutter/widgets.dart';

final List<ShapeBorder> animationShapes = [
  const CircleBorder(),
  const StarBorder(
    points: 8.00,
    rotation: 0.00,
    innerRadiusRatio: 0.50,
    pointRounding: 0.60,
    valleyRounding: 0.29,
    squash: 0.00,
  ),
  const StarBorder(
    points: 3.95,
    rotation: 45.0,
    innerRadiusRatio: 0.43,
    pointRounding: 0.69,
    valleyRounding: 0.11,
    squash: 0.00,
  ),
  const StarBorder.polygon(
    sides: 5.00,
    rotation: 0.00,
    pointRounding: 0.35,
    squash: 0.00,
  ),
];
