import 'package:danvery/app/ui/theme/app_text_theme.dart';
import 'package:danvery/app/ui/theme/palette.dart';
import 'package:danvery/app/ui/widgets/board/board_card.dart';
import 'package:danvery/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/model/subject_model.dart';
import '../../widgets/app_bar/main_app_bar.dart';
import '../../widgets/board/board_list.dart';
import '../../widgets/timetable/timetable.dart';

class TimetablePage extends GetView {
  const TimetablePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Palette.pureWhite,
      appBar: MainAppBar(
        title: "Danvery",
        titleColor: Palette.blue,
        backGroundColor: Palette.pureWhite,
        actions: [
          Text("2023 1학기", style: regularStyle.copyWith(color: Palette.black),)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Timetable(
                subjects: [
                  SubjectModel(
                      name: "사업개발과경영",
                      startTime: '09:00',
                      endTime: '10:00',
                      days: ["월", "화"]),
                  SubjectModel(
                      name: "생활속의뇌이야기",
                      startTime: '11:00',
                      endTime: '13:00',
                      days: ["수"]),
                ],
                tableStartTime: 9,
                tableEndTime: 18,
            ),
            /*
            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: BoardList(
                cards: [BoardCard(leadingText: "소프트웨어학과", title: "이관현")],
                title: "친구",
                actionTitle: "",
                showAction: false,
              ),
            )

             */
          ],
        ),
      ),
    );
  }
}
