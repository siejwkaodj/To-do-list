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
  String? _title;
  bool? _isFinished;
  bool? _isStarred;
  bool? _isDday;
  dynamic task_status;

  // task 위젯의 상태(isStarred, isDueDate)를 화면에 그려주는 함수
  // TODO - 해당 메소드 provider을 이용해 상태관리 최적화 하기
  void set_task_status() {
    if (_isStarred! && _isDday!) {
      task_status = Positioned(
        top: 31.w,
        right: 33.w,
        child: Column(children: [
          Image.asset(
            'assets/images/starred.png',
            width: 33.w,
          ),
          SizedBox(height: 39.w),
          Image.asset(
            'assets/images/dday.png',
            width: 85.w,
          ),
        ]),
      );
    } else if (_isStarred!) {
      task_status = Positioned(
        top: 74.w,
        right: 59.w,
        child: Image.asset(
          'assets/images/starred.png',
          width: 33.w,
        ),
      );
    } else if (_isDday!) {
      task_status = Positioned(
        top: 72.w,
        right: 33.w,
        child: Image.asset(
          'assets/images/dday.png',
          width: 85.w,
        ),
      );
    } else {
      task_status = SizedBox();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    task_status = SizedBox();

    _title = widget.title;
    _isFinished = widget.isFinished;
    _isStarred = widget.isStarred;
    _isDday = widget.isDueDate;
    set_task_status();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 46.w),
      GestureDetector(
        onDoubleTap: () {
          setState(() {
            // print('double tap!');
            _isStarred = !_isStarred!;
            set_task_status();
            // print('status - isStarred:$_isStarred, isDday:$_isDday');
          });
        },
        child: Stack(
          children: [
            Container(
              width: 1085.w,
              height: 180.w,
              decoration: BoxDecoration(
                color: Color(0xff0A0A0A),
                borderRadius: BorderRadius.all(Radius.circular(60.w)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/dots.png',
                        width: 27.w,
                      ),
                    ),
                  ),
                  SizedBox(width: 19.w),
                  SizedBox(
                    width: 110.w,
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          print('complete task');
                        },
                        icon: Image.asset(
                            'assets/images/not_finished_circle.png')),
                  ),
                  SizedBox(width: 44.w),
                  Text(
                    _title!,
                    style: TextStyles.content1,
                  ),
                ],
              ),
            ),

            // star, dday 상태 보여줌
            task_status!,
          ],
        ),
      ),
    ]);
  }
}
