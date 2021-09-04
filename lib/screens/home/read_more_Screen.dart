import 'package:flutter/material.dart';
import 'package:profile/constants.dart';
import 'package:profile/models/Project.dart';

class ReadMoreScreen extends StatelessWidget {
  const ReadMoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Project;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBgColor,
        title: Text('ReadMore'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              children: [
                Text(
                  args.title!,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 10),
                Text(args.description!, style: TextStyle(fontSize: 18, height: 1.5))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
