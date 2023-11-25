import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContentActionRow extends StatelessWidget {
  const ContentActionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey,
            backgroundColor: Colors.transparent,
          ),
          onPressed: () => print('pressed'),
          child: Column(
            children: [
              Icon(Icons.add),
              SizedBox(
                height: 5,
              ),
              Text(
                "관심 콘텐츠",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey,
            backgroundColor: Colors.transparent,
          ),
          onPressed: () => print('pressed'),
          child: Column(
            children: [
              Icon(Icons.local_movies),
              SizedBox(
                height: 5,
              ),
              Text(
                "예고편",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey,
            backgroundColor: Colors.transparent,
          ),
          onPressed: () => print('pressed'),
          child: Column(
            children: [
              Icon(Icons.file_download),
              SizedBox(
                height: 5,
              ),
              Text(
                "저장",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
