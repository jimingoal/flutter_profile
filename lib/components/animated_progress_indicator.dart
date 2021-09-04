import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    this.label,
  }) : super(key: key);

  final double percentage;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: kDefaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: kPrimaryColor,
                  backgroundColor: kDarkColor,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + "%",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (label != null) SizedBox(height: kDefaultPadding / 2),
        if (label != null)
          Text(
            label!,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.subtitle2,
          ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: kDefaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label!,
                  style: TextStyle(color: Colors.white),
                ),
                Text((value * 100).toInt().toString() + "%")
              ],
            ),
            SizedBox(height: kDefaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: kPrimaryColor,
              backgroundColor: kDarkColor,
            ),
          ],
        ),
      ),
    );
  }
}
