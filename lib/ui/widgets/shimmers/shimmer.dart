import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Shimmer extends StatefulWidget {
  Shimmer({
    required this.child,
    required Color baseColor,
    required Color highlightColor,
    this.isActive = true,
    this.duration = const Duration(milliseconds: 3000),
  }) : gradient = LinearGradient(
          colors: [baseColor, baseColor, highlightColor, baseColor, baseColor],
          stops: const [0.0, 0.05, 0.5, 0.95, 1.0],
        );

  final Widget child;
  final Duration duration;
  final Gradient gradient;
  final bool isActive;

  @override
  _ShimmerState createState() => _ShimmerState();
}

class _ShimmerState extends State<Shimmer> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..addListener(() {
        setState(() {});
      })
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.isActive
      ? _Shimmer(
          gradient: widget.gradient,
          percent: _controller.value,
          child: Container(
              decoration: BoxDecoration(
                color: widget.gradient.colors.first,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: widget.child),
        )
      : widget.child;
}

class _Shimmer extends SingleChildRenderObjectWidget {
  _Shimmer({
    required Widget child,
    required this.gradient,
    required this.percent,
  }) : super(child: child);

  final Gradient gradient;
  final double percent;

  @override
  RenderObject createRenderObject(BuildContext context) =>
      _ShimmerFilter(gradient);

  @override
  void updateRenderObject(BuildContext context, RenderObject renderObject) {
    super.updateRenderObject(context, renderObject);
    (renderObject as _ShimmerFilter).shiftPercentage = percent;
  }
}

class _ShimmerFilter extends RenderProxyBox {
  _ShimmerFilter(this._gradient);

  final Gradient _gradient;
  double _shiftPercentage = 0.0;

  set shiftPercentage(double newValue) {
    if (_shiftPercentage != newValue) {
      _shiftPercentage = newValue;
      markNeedsPaint();
    }
  }

  @override
  ShaderMaskLayer? get layer => super.layer as ShaderMaskLayer?;

  @override
  bool get alwaysNeedsCompositing => child != null;

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      assert(needsCompositing);

      final width = child!.size.width;
      final height = child!.size.height;
      final double dy = 0.0;
      final double dx = _offset(
          start: -(width + 50), end: width * 5, percent: _shiftPercentage);
      final rect = Rect.fromLTWH(dx, dy, width, height);

      layer ??= ShaderMaskLayer();
      layer!
        ..shader = _gradient.createShader(rect)
        ..maskRect = offset & size
        ..blendMode = BlendMode.srcIn;
      context.pushLayer(layer!, super.paint, offset);
    }
  }

  double _offset({
    required double start,
    required double end,
    required double percent,
  }) =>
      start + (end - start) * percent;
}
