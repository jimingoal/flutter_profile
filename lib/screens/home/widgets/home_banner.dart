import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/bg.jpeg", fit: BoxFit.cover),
          Container(color: kDarkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  'I build Chat App With dark and light',
                  style: Theme.of(context).textTheme.subtitle1!,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
