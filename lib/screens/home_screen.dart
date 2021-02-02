import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            forceElevated: true,
            floating: true,
            expandedHeight: 100.0,
            leading: IconButton(
              icon: Icon(Icons.settings),
              iconSize: 30.0,
              onPressed: () {},
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Simple Budget"),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.add),
                iconSize: 30.0,
                onPressed: () {},
              )
            ],
          ),
          // SliverList(
          //   delegate:
          //       SliverChildBuilderDelegate((BuildContext context, int index) {
          //     if (index == 0) {
          //       return Container(
          //         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
          //         decoration: BoxDecoration(
          //             color: Colors.white,
          //             boxShadow: [
          //               BoxShadow(
          //                   color: Colors.black12,
          //                   offset: Offset(0, 2),
          //                   blurRadius: 6.0)
          //             ],
          //             borderRadius: BorderRadius.circular(10.0)),
          //       );
          //     } else {
          //       return SizedBox(
          //         height: 0,
          //       );
          //     }
          //   }),
          // )
        ],
      ),
    );
  }
}
