import 'package:flutter/material.dart';
import 'package:profile/components/animated_progress_indicator.dart';

import '../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        SizedBox(height: kDefaultPadding),
        Text(
          "Skills",
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Row(
            children: [
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.8,
                  label: "Flutter",
                ),
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.72,
                  label: "Django",
                ),
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.65,
                  label: "Firebase",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

