import 'package:flutter/material.dart';
import 'package:profile/models/Project.dart';

import '../../../constants.dart';
import 'project_card.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.start,
        ),
        SizedBox(height: kDefaultPadding),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: demoProjects.length,
          itemBuilder: (context, index) => ProjectCard(project: demoProjects[index]),
        ),
        // ProjectGridView(
        //   itemCount: demoProjects.length,
        //   crossAxisCount: 1,
        //   childAspectRatio: 2,
        //   itemBuilder: (context, index) => ProjectCard(project: demoProjects[index]),
        // ),
      ],
    );
  }
}

// class ProjectGridView extends StatelessWidget {
//   const ProjectGridView({
//     Key? key,
//     required this.itemCount,
//     required this.crossAxisCount,
//     required this.childAspectRatio,
//     required this.itemBuilder,
//   }) : super(key: key);

//   final int itemCount, crossAxisCount;
//   final double childAspectRatio;
//   final IndexedWidgetBuilder itemBuilder;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: itemCount,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: crossAxisCount,
//         childAspectRatio: childAspectRatio,
//         mainAxisSpacing: kDefaultPadding,
//         crossAxisSpacing: kDefaultPadding,
//       ),
//       itemBuilder: itemBuilder,
//     );
//   }
// }
