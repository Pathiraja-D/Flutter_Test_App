import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newapp/components/app_bar.dart';
import 'package:newapp/components/post_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> users = [];

  @override
  Widget build(BuildContext context) {
    _userList();
    return Scaffold(
      appBar: ToolBar(
        title: 'Flutter App',
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svg/alarm.svg',
                height: 20,
                width: 20,
              ))
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 24,
          );
        },
      ),
    );
  }

  _userList() {
    for (var i = 0; i < 100; i++) {
      users.add('User Number $i');
    }
  }
}
