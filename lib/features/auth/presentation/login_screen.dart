import 'package:flutter/material.dart';
import 'package:railway_checks_assignment/core/app_theme/app_background_gradient.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackgroundGradient(
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme!.bodySmall ?? TextStyle(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            // fit: StackFit.expand,
            children: [
              Positioned(
                top: 20,
                left: -50,
                child: Transform.rotate(
                  angle: 10,
                  child: Image.asset(
                    'assets/images/railroad.png',
                    width: 200,
                    color: const Color.fromARGB(
                      255,
                      112,
                      112,
                      112,
                    ).withValues(alpha: .2),
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                child: Image.asset(
                  'assets/images/rail.png',
                  width: 350,
                  color: const Color.fromARGB(
                    255,
                    112,
                    112,
                    112,
                  ).withValues(alpha: .2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  spacing: 25,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Enter email',
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    TextFormField(
                      enabled: false,

                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Enter password',
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text('login'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
