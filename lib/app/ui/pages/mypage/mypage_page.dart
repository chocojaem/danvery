import 'package:danvery/app/ui/theme/app_text_theme.dart';
import 'package:danvery/app/ui/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../../widgets/app_bar/main_app_bar.dart';

class MyPagePage extends GetView {
  const MyPagePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    bool notification = true;

    return Scaffold(
      appBar: MainAppBar(
        title: "Danvery",
        titleColor: Palette.pureWhite,
        backGroundColor: Palette.blue,
        isWhite: true,
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            color: Palette.blue,
          ),
          SingleChildScrollView(
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 16, left: 16, bottom: 8, top: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 36,
                                  backgroundImage: Image.asset(
                                      "assets/icons/user/default_user_icon.png")
                                      .image,
                                  backgroundColor: Colors.transparent,
                                ),
                                TextButton(
                                    style: TextButton.styleFrom(
                                      minimumSize: const Size(32,16),
                                      padding: EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
                                      backgroundColor: Palette.lightGrey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "????????? ??????",
                                      style: lightStyle.copyWith(
                                          color: Palette.darkGrey),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              width: 32,
                            ),
                            Text.rich(
                              TextSpan(
                                style: titleStyle.copyWith(
                                    color: Palette.pureWhite),
                                text: '?????????\n', // default text style
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "?????????????????? ????????????\n",
                                      style: regularStyle.copyWith(
                                          color: Palette.pureWhite)),
                                  TextSpan(
                                      text: "32XXXXXX",
                                      style: regularStyle.copyWith(
                                          color: Palette.pureWhite)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Palette.pureWhite,
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60.0, left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("?????? ??????", style: titleStyle.copyWith(fontWeight: FontWeight.normal,)),
                                FlutterSwitch(
                                  inactiveColor: Palette.lightGrey,
                                  activeColor: Palette.lightGrey,
                                  inactiveToggleColor: Palette.blue,
                                  activeToggleColor: Palette.blue,
                                  width: 60.0,
                                  toggleSize: 24.0,
                                  value: notification,
                                  borderRadius: 30.0,
                                  onToggle: (val) {},
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: (){

                            },
                            child: SizedBox(
                                height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "??????????????? ??????",
                                    style: titleStyle.copyWith(fontWeight: FontWeight.normal,
                                        color: Palette.darkGrey),
                                  ),
                                )),
                          ),
                          GestureDetector(
                            onTap: (){

                            },
                            child: SizedBox(
                                height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "????????????",
                                    style: titleStyle.copyWith(fontWeight: FontWeight.normal,
                                        color: Palette.darkGrey),
                                  ),
                                )),
                          ),
                          GestureDetector(
                            onTap: (){

                            },
                            child: SizedBox(
                              height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "????????????",
                                    style: titleStyle.copyWith(fontWeight: FontWeight.normal,
                                        color: Palette.darkGrey),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0, left: 16, right: 16),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      color: Palette.pureWhite
                    ),
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "0",
                                style: titleStyle.copyWith(
                                    color: Palette.darkGrey),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                "?????? ??? ???",
                                style: regularStyle.copyWith(
                                    color: Palette.darkGrey),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "0",
                                style: titleStyle.copyWith(
                                    color: Palette.darkGrey),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                "?????? ??? ??????",
                                style: regularStyle.copyWith(
                                    color: Palette.darkGrey),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "0",
                                style: titleStyle.copyWith(
                                    color: Palette.darkGrey),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                "???????????? ???",
                                style: regularStyle.copyWith(
                                    color: Palette.darkGrey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
