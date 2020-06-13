import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  final String id;
  final int score;

  const UsersScreen({
    @PathParam() this.id,
    @required this.score,
    @QueryParam() double limit = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    // var route = ModalRoute.of(context);
    // var settings = route.settings as ExtendedRouteSettings;
//    print(RouteData.of(context));

    return Scaffold(
        appBar: AppBar(
          title: Text("Users Details $id score:$score"),
        ),
        body: NestedNavigator());
  }
}