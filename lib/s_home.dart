import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_list/widgets/w_info.dart';
import 'package:to_do_list/widgets/w_task.dart';

// file imports
import 'config/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // learn - AppBar가 없는 화면에서 앱 상태바 색상 변경하는 법
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      // appBar: AppBar(title: Text('title')),
      body: Container(
        width: 1179.w,
        height: 2556.w,
        color: Color(0xff292929),
        child: Column(
          children: [
            // title
            Container(
              width: 1179.w,
              height: 259.w,
              padding: EdgeInsets.fromLTRB(47.w, 90.w, 47.w, 31.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.w),
                    bottomRight: Radius.circular(50.w)),
                color: Color(0xff0E0E0E),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('To-do list', style: TextStyles.title1),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete, color: Colors.grey[400]),
                        iconSize: 100.w,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu_rounded, color: Colors.grey[400]),
                        iconSize: 100.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ListView size 정해주는 부분
            SizedBox(
              height: 1800.w,
              width: 1102.w,
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  SizedBox(height: 38.w),

                  // Info Widget
                  InfoWidget(),

                  // tasks
                  Task(
                    title: '123',
                    content: '123',
                    date: '2023-12-12',
                    isStarred: true,
                    isDueDate: true,
                    isFinished: false,
                  ),
                  Task(
                    title: '123',
                    content: '123',
                    date: '2023-12-12',
                    isStarred: true,
                    isDueDate: false,
                    isFinished: false,
                  ),
                  Task(
                    title: '123',
                    content: '123',
                    date: '2023-12-12',
                    isStarred: false,
                    isDueDate: true,
                    isFinished: false,
                  ),
                ],
              ),
            ),

            // Task Add Button
            SizedBox(
                width: 1085.w,
                height: 190.w,
                child: IconButton(
                  style: ButtonStyle(
                    // MaterialStateProperty 에러 고치는법
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff0A0A0A)),
                  ),
                  icon: Icon(
                    Icons.add_rounded,
                    size: 100.w,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ))
          ],
        ),
      ),
    );
  }
}
