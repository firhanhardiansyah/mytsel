import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytsel/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 150,
            child: Image.asset(
              'assets/logo/logo-login.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Silahkan masuk dengan nomor telkomsel kamu',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Nomor HP',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller.phoneNumber,
            autocorrect: false,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                hintText: 'Cth. 08129011xxxx', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  activeColor: Colors.red,
                  value: controller.termCondition.value,
                  onChanged: (value) => controller.termCondition.toggle(),
                ),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                      text: 'Saya menyetujui ',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      children: [
                        TextSpan(
                          text: 'syarat',
                          style: TextStyle(color: Colors.red),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('klik syarat');
                            },
                        ),
                        TextSpan(
                          text: ', ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'ketentuan',
                          style: TextStyle(color: Colors.red),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('klik ketentuan');
                            },
                        ),
                        TextSpan(
                          text: ', dan ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'privasi ',
                          style: TextStyle(color: Colors.red),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('klik privasi');
                            },
                        ),
                        TextSpan(
                          text: 'Telkomsel',
                          style: TextStyle(color: Colors.black),
                        )
                      ]),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
            child: Text(
              'MASUK',
              style: TextStyle(color: Color(0xFF747D8C)),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300], fixedSize: Size(150, 48)),
          ),
          SizedBox(
            height: 16,
          ),
          Center(
            child: Text(
              'Atau masuk menggunakan',
              style: TextStyle(fontSize: 16, color: Color(0xFF747D8C)),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/facebook.png',
                        width: 18,
                        height: 18,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Facebook',
                        style:
                            TextStyle(color: Color(0xFF3B5998), fontSize: 16),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 2, color: Color(0xFF3B5998)),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Flexible(
                flex: 1,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/twitter.png',
                        width: 18,
                        height: 18,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Twitter',
                        style:
                            TextStyle(color: Color(0xFF1DA1F2), fontSize: 16),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 2, color: Color(0xFF1DA1F2)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
