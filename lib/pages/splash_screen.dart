part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
        backgroundColor: Colors.white,
        title: Text(
          "Welcome Splash Screen",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        
        image: Image.asset('assets/ic_logo_png.png'),
        navigateAfterSeconds: MainPage(),
        photoSize: 100.0,
        loadingText: Text("Tunggu..."),
        loaderColor: Colors.blue
    );
  }
}