import 'package:advise_me/pages/Appointment.dart';
import 'package:advise_me/pages/Chat.dart';
import 'package:advise_me/pages/Home.dart';
import 'package:advise_me/pages/Setting.dart';
import 'package:get/get.dart';

class bottomNavigationBarController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    HomePage(),
    ChatPage(),
    AppointmentPage(),
    SettingPage(),
  ];
}
