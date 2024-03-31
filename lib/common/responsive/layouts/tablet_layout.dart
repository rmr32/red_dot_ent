import 'package:red_dot_ent/utils/constants/exports.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: EColors.secondary,
      // appBar: myAppBar,
      // drawer: myDrawer,
      // body: Comlumn(
      // 	children: [
      // 	],
      // ),
    );
  }
}
