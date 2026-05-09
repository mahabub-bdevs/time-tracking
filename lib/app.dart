import 'package:app_links/app_links.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'bindings/app_binding.dart';
import 'core/localization/app_translations.dart';
import 'core/storage/storage_keys.dart';
import 'core/storage/storage_service.dart';
import 'core/utils/app_size_class.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appLinks = AppLinks();
  @override
  void initState() {
    super.initState();
    _handleDeepLinks();
  }

  Future<void> _handleDeepLinks() async {
    // App বন্ধ থাকলে
    final initialLink = await _appLinks.getInitialLink();
    if (initialLink != null) {
      _navigateFromLink(initialLink);
    }

    // App open থাকলে
    _appLinks.uriLinkStream.listen((uri) {
      _navigateFromLink(uri);
    });
  }

  void _navigateFromLink(Uri uri) {
    print('Deep Link: $uri');

    if (uri.path.contains('reset-password')) {
      final token = uri.queryParameters['token'] ?? '';
      final email = uri.queryParameters['email'] ?? "";
      print("************** $token $email");
      Get.toNamed(
        AppRoutes.resetPassword,
        parameters: {'token': token, "email": email},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // ✅ Use StorageService instead of bypassing it with raw GetStorage reads
    final storage = Get.find<StorageService>();
    final themePref = storage.getTheme() ?? 'system';
    final langPref = storage.getLanguage() ?? 'en';

    final initialTheme = switch (themePref) {
      'dark' => ThemeMode.dark,
      'light' => ThemeMode.light,
      _ => ThemeMode.system,
    };

    final initialLocale = switch (langPref) {
      StorageKeys.langCodeAr => const Locale('ar', 'SA'),
      StorageKeys.langCodeBn => const Locale('bn', 'BD'),
      _ => const Locale('en', 'US'),
    };

    // ✅ Use a universal design size that works well across all screen sizes.
    // ScreenUtil will scale from this baseline to match any device.
    return ScreenUtilInit(
      designSize: const Size(390, 844), // iPhone 14 baseline
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery:
          true, // Required for DevicePreview to work correctly
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Premium Template',
          themeMode: initialTheme,
          translations: AppTranslations(),
          locale: DevicePreview.locale(context) ?? initialLocale,
          fallbackLocale: const Locale('en', 'US'),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('ar', 'SA'),
            Locale('bn', 'BD'),
          ],
          // ✅ DevicePreview builder must wrap the navigator to apply device
          // frame, media query overrides and locale injection correctly.
          builder: (context, child) {
            final built = DevicePreview.appBuilder(context, child!);
            AppSizeClass.init(context);
            return built;
          },
          initialBinding: AppBinding(),
          initialRoute: AppRoutes.splash,
          getPages: AppPages.routes,
        );
      },
    );
  }
}
