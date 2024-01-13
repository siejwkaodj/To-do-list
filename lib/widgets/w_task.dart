import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_list/config/theme.dart';

class Task extends StatefulWidget {
  final String title;
  final String content;
  final String date;
  final bool isStarred;
  final bool isDueDate;
  final bool isFinished;

  Task({
    super.key,
    required this.title,
    required this.content,
    required this.date,
    required this.isStarred,
    required this.isDueDate,
    required this.isFinished,
  });

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    // title 가져오는 법
    String _title = widget.title;

    return Column(children: [
      SizedBox(height: 46.w),
      Container(
        decoration: BoxDecoration(
          // color: Color(0xff0A0A0A),
          borderRadius: BorderRadius.all(Radius.circular(60.w)),
        ),
        child: Row(
          children: [
            // SizedBox(
            //   child: IconButton(
            //     onPressed: () {},
            //     icon: Image.asset('assets/images/dots.png'),
            //   ),
            // ),
            SizedBox(width: 19.w),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.circle_outlined,
                  size: 110.w,
                  color: Color(0xffFFEB00),
                )),
            SizedBox(width: 44.w),
            Text(
              _title,
              style: TextStyles.content1,
            ),
          ],
        ),
      )
    ]);
  }
}
