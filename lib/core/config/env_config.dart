enum Environment { dev, staging, prod }

//change prod to dev
class EnvConfig {
  static Environment environment = Environment.dev;

  static String get baseUrl {
    switch (environment) {
      case Environment.dev:
        return 'https://time-tracking-system-ndihayr8.on-forge.com/api/v1';
      case Environment.staging:
        return 'https://staging.api.com';
      case Environment.prod:
        return 'https://api.preciseclock.com/api/v1';
    }
  }

  static bool get isDev => environment == Environment.dev;
  static bool get isProd => environment == Environment.prod;
}
