import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../config/theme/my_theme.dart';
import '../../../../config/theme/theme_extensions/header_container_theme_data.dart';
import '../../../../config/translations/localization_service.dart';
import '../../../../config/translations/strings_enum.dart';
import '../../../core/base/base_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends BaseView<HomeController> {
  const HomeView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: const Text('HomeView'),
      centerTitle: true,
    );
  }

  @override
  Widget body(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //----------------Theme Button----------------//
          InkWell(
            onTap: () => MyTheme.changeTheme(),
            child: Ink(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 39.h,
                    width: 39.h,
                    decoration: theme.extension<HeaderContainerThemeData>()?.decoration,
                    child: SvgPicture.asset(
                      Get.isDarkMode ? 'assets/vectors/moon.svg' : 'assets/vectors/sun.svg',
                      fit: BoxFit.none,
                      color: Colors.white,
                      height: 10,
                      width: 10,
                    ),
                  ),
                  10.horizontalSpace,
                  Text(
                    Get.isDarkMode ? 'Dark' : 'Light',
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),

          10.verticalSpace,

          //----------------Language Button----------------//
          InkWell(
            onTap: () => LocalizationService.updateLanguage(
              LocalizationService.getCurrentLocal().languageCode == 'ar' ? 'en' : 'ar',
            ),
            child: Ink(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 39.h,
                    width: 39.h,
                    decoration: theme.extension<HeaderContainerThemeData>()?.decoration,
                    child: SvgPicture.asset(
                      'assets/vectors/language.svg',
                      fit: BoxFit.none,
                      color: Colors.white,
                      height: 10,
                      width: 10,
                    ),
                  ),
                  10.horizontalSpace,
                  Text(
                    LocalizationService.getCurrentLocal().languageCode == 'en' ? 'English' : 'العربية',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),

          10.verticalSpace,

          Text(
            '${Strings.goodMorning.tr} ,${Strings.hello.tr}',
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
