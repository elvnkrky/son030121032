import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:job_search/screens/JSJobSearchScreen.dart';
import 'package:job_search/utils/JSColors.dart';
import 'package:job_search/utils/JSConstant.dart';
import 'package:job_search/utils/JSImage.dart';
import 'package:job_search/utils/JSWidget.dart';
import 'package:job_search/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart'; // Supabase Flutter SDK'yı içeri aktarın.
// import 'package:job_search/service/email.service.dart'; // AuthenticationService'i ekleyin

class JSSignUpScreen extends StatefulWidget {
  const JSSignUpScreen({Key? key}) : super(key: key);

  @override
  _JSSignUpScreenState createState() => _JSSignUpScreenState();
}

class _JSSignUpScreenState extends State<JSSignUpScreen> {
  final SupabaseClient supabase = Supabase.instance.client;
  final TextEditingController emailController = TextEditingController(); // E-posta controller'ı ekleyin
  // final AuthenticationService authService = AuthenticationService(); // AuthenticationService instance oluşturun

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    // Herhangi bir başlangıç işlemi buraya yazılabilir
  }

  Future<void> _signInWithGoogle() async {
  try {
    // Google OAuth kimlik doğrulaması başlat
    var Provider;
    final bool success = await supabase.auth.signInWithOAuth(
      Provider.google, // Supabase tarafından sağlanan Google OAuth sağlayıcısı
      redirectTo: 'https://vbduowqbieyfwuflkwxt.supabase.co://login-callback', // Bu, redirect URL'niz olmalı
    );
 
    // Giriş başarılıysa
    if (success) {
      JSJobSearchScreen().launch(context);
    } else {
      // Hata durumunda
      toast('Google Sign-In failed.');
    }
  } catch (error) {
    print('Error during Google Sign-In: $error');
    toast('Error during Google Sign-In: $error');
  }
}

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: jsAppBar(context, backWidget: true, homeAction: true),
      body: Stack(
        children: [
          Container(color: appStore.isDarkModeOn ? scaffoldDarkColor : js_backGroundColor),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(js_SplashImage, height: 100, color: appStore.isDarkModeOn ? white : js_primaryColor),
          ),
          Positioned(
            top: 95,
            left: 0,
            right: 0,
            child: Container(
              height: context.height() * 0.7,
              padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 80),
              margin: EdgeInsets.only(bottom: 16),
              decoration: boxDecorationWithRoundedCorners(
                backgroundColor: appStore.isDarkModeOn ? scaffoldDarkColor : white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                border: Border.all(color: appStore.isDarkModeOn ? white : gray.withOpacity(0.2)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ready to take the next step?", style: boldTextStyle(size: 18)),
                    16.height,
                    Text("Create an account and sign in.", style: secondaryTextStyle()),
                    16.height,
                    googleSignInWidget(
                      loginLogo: js_google_logo,
                      btnName: "Sign in with Google",
                      logoHeight: 26,
                      logoWidth: 26,
                      onTapBtn: _signInWithGoogle,
                    ),
                    8.height,
                    googleSignInWidget(
                      loginLogo: js_apple_logo,
                      btnName: "Continue with Apple",
                      logoHeight: 28,
                      logoWidth: 28,
                      onTapBtn: () {
                        // Apple Sign-In işlemi
                      },
                    ),
                    8.height,
                    googleSignInWidget(
                      loginLogo: js_facebook_logo,
                      btnName: "Continue with Facebook",
                      logoHeight: 28,
                      logoWidth: 28,
                      onTapBtn: () {
                        // Facebook Sign-In işlemi
                      },
                    ),
                    24.height,
                    Row(
                      children: [
                        Container(width: context.width(), height: 1, color: gray.withOpacity(0.2)).expand(),
                        8.width,
                        Text("Or", style: secondaryTextStyle()),
                        8.width,
                        Container(width: context.width(), height: 1, color: gray.withOpacity(0.2)).expand(),
                      ],
                    ),
                    16.height,
                    Text("Email address *", style: boldTextStyle()),
                    8.height,
                    Container(
                      height: textFieldHeight,
                      alignment: Alignment.center,
                      decoration: boxDecoration(radius: 8, color: appStore.isDarkModeOn ? scaffoldDarkColor : white),
                      child: AppTextField(
                        controller: emailController, // E-posta controller'ı ekleyin
                        textFieldType: TextFieldType.EMAIL,
                        keyboardType: TextInputType.text,
                        decoration: jsInputDecoration(),
                      ),
                    ),
                    16.height,
                    RichText(
                      text: TextSpan(
                        text: 'When you create an account or sign in, you agree to Indeed\'s ',
                        style: secondaryTextStyle(),
                        children: <TextSpan>[
                          TextSpan(text: 'Terms, ', style: boldTextStyle(color: js_primaryColor, decoration: TextDecoration.underline)),
                          TextSpan(text: 'Cookie ', style: boldTextStyle(color: js_primaryColor, decoration: TextDecoration.underline)),
                          TextSpan(text: 'and ', style: secondaryTextStyle()),
                          TextSpan(text: 'privacy ', style: boldTextStyle(color: js_primaryColor, decoration: TextDecoration.underline)),
                          TextSpan(text: 'policies', style: secondaryTextStyle()),
                          TextSpan(
                            text: 'you consent to receiving marketing massage from Indeed and may opt out of receiving such messages by following the unsubscribe link in our messages, or as detailed in our terms.',
                            style: secondaryTextStyle(),
                          ),
                        ],
                      ),
                    ),
                    16.height,
                  ],
                ),
              ),
            ),
          ),
          16.height,
          Positioned(
            left: 16,
            right: 16,
            bottom: 60,
            child: AppButton(
              color: js_primaryColor,
             onTap: () async {
                final email = emailController.text;
                if (email.isNotEmpty) {
                  //await authService.signInWithMagicLink(email: email);
                  toast('Magic link sent to $email');
                } else {
                  toast('Please enter an email address');
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Continue", style: boldTextStyle(color: white)),
                  8.width,
                  Icon(Icons.arrow_forward, color: white, size: iconSize),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
