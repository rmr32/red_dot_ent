import 'package:red_dot_ent/utils/constants/exports.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  /// --- Waits for Flutter to initialize --- ///
  WidgetsFlutterBinding.ensureInitialized();
  // final WidgetsBinding widgetsBinding =
  //     WidgetsFlutterBinding.ensureInitialized();

  /// -- Overcome from transparent spaces at the bottom in iOS full Mode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

// For using scrollable list
class CustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods like buildOverscrollIndicator and buildScrollbar
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
      title: EText.reservations,
      // Detects device theme
      themeMode: ThemeMode.system,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      getPages: AppRoutes.pages,
      initialRoute: '/',
      // home: const ResponsiveLayout2(),
      // home: const Scaffold(
      //   backgroundColor: EColors.primary,
      //   body: Center(
      //     child: CircularProgressIndicator(
      //       color: EColors.white,
      //     ),
      //   ),
      // ),
    );
  }
}
