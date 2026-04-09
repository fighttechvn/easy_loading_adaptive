import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: UniversalPlatform.isAndroid
          ? const CircularProgressIndicator()
          : const CupertinoActivityIndicator(),
    );
  }
}

class LoadingAdaptive extends StatelessWidget {
  final Color? color;

  const LoadingAdaptive({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UniversalPlatform.isAndroid
        ? CircularProgressIndicator(color: color)
        : CupertinoActivityIndicator(
            color: color,
          );
  }
}

class LoadingWidgetColor extends StatelessWidget {
  final Color? color;
  final double? strokeWidth;

  const LoadingWidgetColor({
    Key? key,
    this.color,
    this.strokeWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: UniversalPlatform.isAndroid
          ? CircularProgressIndicator(
              color: color,
              strokeWidth: strokeWidth,
            )
          : CupertinoActivityIndicator(color: color),
    );
  }
}
