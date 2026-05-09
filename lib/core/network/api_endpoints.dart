import '../config/env_config.dart';

class ApiEndpoints {
  ApiEndpoints._();

  static String get baseUrl => EnvConfig.baseUrl;

  // ─── Auth ─────────────────────────────────────────────────────────────────
  static String get refreshToken => '$baseUrl/auth/refresh';
  static String get loginEndpoint => '$baseUrl/auth/login';

  // ─── Home ─────────────────────────────────────────────────────────────────
  static String get posts => '$baseUrl/posts';

  // Profile Screens

  static String get profileUrl => '$baseUrl/auth/me';
  static String get forgotUrl => '$baseUrl/auth/forgot-password';
  static String get logout => '$baseUrl/auth/logout';

  static String get profileDeteles => '$baseUrl/profile-details';
  static String get profilePhotoChange => '$baseUrl/profile-picture';
  static String get coverPhoto => '$baseUrl/cover-picture';
}
