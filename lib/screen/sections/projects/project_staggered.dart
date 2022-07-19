import 'package:flutter/material.dart';
import 'package:flutter_cv/screen/sections/projects/project_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../model/project.dart';

class ProjectStaggered extends StatelessWidget {
  final projectList = Project.generateProject();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: StaggeredGridView.countBuilder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        itemCount: projectList.length,
        crossAxisCount: 4,
        itemBuilder: (context, index) => ProjectItem(projectList[index]),
        staggeredTileBuilder: (_) => StaggeredTile.fit(2),
      ),
    );
  }
}
