import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:job_search/screens/JSSplashScreen.dart';
import 'package:job_search/store/AppStore.dart';
import 'package:job_search/utils/AppTheme.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

AppStore appStore = AppStore();

// Supabase URL and anon key (replace with your actual Supabase credentials)
const supabaseUrl = 'https://vbduowqbieyfwuflkwxt.supabase.co';
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZiZHVvd3FiaWV5Znd1Zmxrd3h0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY4MjMwMjUsImV4cCI6MjAzMjM5OTAyNX0.tZNizwHMXyNOrrWucL0MgmD2lC4TJguSXnaGs9KF7HI';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Supabase
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
  );

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        scrollBehavior: SBehavior(),
        navigatorKey: navigatorKey,
        title: 'Job Search',
        debugShowCheckedModeBanner: false,
        theme: AppThemeData.lightTheme,
        darkTheme: AppThemeData.darkTheme,
        themeMode: appStore.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        home: JSSplashScreen(),
        // supportedLocales: LanguageDataModel.languageLocales(),
        /* localizationsDelegates: [
          AppLocalizations(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) => locale,
        locale: Locale(appStore.selectedLanguage.validate(value: AppConstant.defaultLanguage)), */
      ),
    );
  }
}
