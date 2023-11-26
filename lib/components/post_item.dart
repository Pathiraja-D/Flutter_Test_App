import 'package:flutter/material.dart';
import 'package:newapp/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/temp1.png',
                width: 80,
                height: 80,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset('assets/temp/temp1.png'),
          SizedBox(
            height: 10,
          ),
          Text('The sun is shinnig. I love to go beach.', style: AppText.body1),
        ],
      ),
    );
  }
}
