import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hepa/firebase_options.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/router/router_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessaging.instance.setAutoInitEnabled(true);

  // Sentry for Logging
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://58f4c094c77503500459e94c8b067e4d@o314075.ingest.us.sentry.io/4507202871885824';
      options.sampleRate = 1.0;
      options.profilesSampleRate = 1.0;
    },
    appRunner: () => runApp(const ProviderScope(child: MyApp())),
  );

  requestNotification();
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: saffron,
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.poppins(color: blackColor),
          bodyLarge: GoogleFonts.poppins(color: blackColor),
          labelLarge: GoogleFonts.poppins(color: blackColor),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routeInformationParser: ref.watch(routerProvider).routeInformationParser,
      routerDelegate: ref.watch(routerProvider).routerDelegate,
      routeInformationProvider:
          ref.watch(routerProvider).routeInformationProvider,
    );
  }
}

void requestNotification() async {
  var status = await Permission.notification.status;

  if (status.isGranted) {
    debugPrint('granted');
  } else if (status.isDenied) {
    if (await Permission.notification.request().isGranted) {
      debugPrint(status.name);
    }
  }
}
