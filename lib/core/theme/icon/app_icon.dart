import 'package:flutter_svg/flutter_svg.dart';

class AppIcon {
  AppIcon._();

  /// No selected icons
  static final SvgPicture home = SvgPicture.asset('assets/icon/home.svg');
  static final SvgPicture search = SvgPicture.asset('assets/icon/search.svg');
  static final SvgPicture camera = SvgPicture.asset('assets/icon/camera.svg');
  static final SvgPicture favourite = SvgPicture.asset(
    'assets/icon/favourite.svg',
  );
  static final SvgPicture profile = SvgPicture.asset('assets/icon/profile.svg');

  /// Selected icons
  static final SvgPicture homeC = SvgPicture.asset('assets/icon/home_c.svg');
  static final SvgPicture searchC = SvgPicture.asset(
    'assets/icon/search_c.svg',
  );
  static final SvgPicture favouriteC = SvgPicture.asset(
    'assets/icon/favourite_c.svg',
  );
  static final SvgPicture profileC = SvgPicture.asset(
    'assets/icon/profile_c.svg',
  );

  static final SvgPicture arrowRight = SvgPicture.asset(
    'assets/icon/arrow_right.svg',
  );
  static final SvgPicture kcal = SvgPicture.asset('assets/icon/kcal.svg');
  static final SvgPicture kcalC = SvgPicture.asset('assets/icon/kcal_c.svg');
  static final SvgPicture profileSetting = SvgPicture.asset(
    'assets/icon/profile_setting.svg',
  );
  static final SvgPicture logout = SvgPicture.asset('assets/icon/logout.svg');
  static final SvgPicture setting = SvgPicture.asset('assets/icon/setting.svg');
  static final SvgPicture star = SvgPicture.asset('assets/icon/star.svg');
  static final SvgPicture text = SvgPicture.asset('assets/icon/text.svg');
}
