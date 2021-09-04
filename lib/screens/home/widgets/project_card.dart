import 'package:flutter/material.dart';
import 'package:profile/models/Project.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kSecondaryColor,
      child: Container(
        constraints: BoxConstraints.loose(Size(kMaxWidth, 200)),
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(height: kDefaultPadding / 2),
            Expanded(
              child: Text(
                project.description!,
                style: TextStyle(height: 1.5),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'readMoreScreen', arguments: project);
              },
              child: Text(
                "Read More >>",
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
