import 'package:danvery/app/controller/login_controller.dart';
import 'package:danvery/app/ui/theme/app_text_theme.dart';
import 'package:danvery/app/ui/theme/palette.dart';
import 'package:danvery/app/ui/widgets/app_bar/transparent_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';
import '../../widgets/login/login_form_button.dart';
import '../../widgets/login/login_form_field.dart';

class LoginPage extends GetView {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    final LoginController loginController = Get.find<LoginController>();

    // TODO: implement build
    return Scaffold(
        appBar: const TransparentAppBar(
          title: "로그인",
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 16, bottom: 16),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: LoginFormField(
                          controller: Get.find<LoginController>().idController,
                          hint: '32XXXXXX',
                          title: "학번",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: LoginFormField(
                          controller: Get.find<LoginController>().passwordController,
                          hint: "비밀번호를 입력하세요",
                          title: "비밀번호",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  LoginFormButton(
                      text: "로그인",
                      onPressed: () {
                        loginController
                            .login('12345678',
                                '121212') //new: '12345678', '121212'
                            .then((value) {
                          if (value) {
                            Get.offAndToNamed(Routes.main);
                          } else {
                            Get.snackbar(
                                "Error", "로그인 중 오류가 발생했습니다.",
                                snackPosition: SnackPosition.BOTTOM,
                                colorText: Palette.white,
                                backgroundColor: Palette.lightBlack,
                            );
                            //여기서 로그인 오류 처리
                          }
                        });
                      }),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "비밀번호 찾기",
                          style: tinyStyle.copyWith(color: Palette.grey),
                        ),
                      ),
                      const Text(
                        "|",
                        style: tinyStyle,
                      ),
                      TextButton(
                          onPressed: () {
                          },
                          child: Text("아이디 찾기",
                              style: tinyStyle.copyWith(color: Palette.grey))),
                      const Text(
                        "|",
                        style: tinyStyle,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.register);
                          },
                          child: const Text(
                            "회원가입",
                            style: tinyStyle,
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
