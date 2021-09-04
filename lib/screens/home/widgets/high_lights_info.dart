import 'package:flutter/material.dart';

import '../../../constants.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Summary(counter: "119K+", label: "Subscribers"),
                Summary(counter: "40+", label: "Videos"),
              ],
            ),
            SizedBox(height: kDefaultPadding),
            Row(
              children: [
                Summary(counter: "30+", label: "Projects"),
                Summary(counter: "13K+", label: "Stars"),
              ],
            ),
          ],
        ));
  }
}

class Summary extends StatelessWidget {
  const Summary({
    Key? key,
    required this.counter,
    required this.label,
  }) : super(key: key);

  final String? counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Text(
            counter!,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(color: kPrimaryColor),
          ),
          SizedBox(width: kDefaultPadding / 2),
          Text(
            label!,
            style: Theme.of(context).textTheme.subtitle2,
          )
        ],
      ),
    );
  }
}
