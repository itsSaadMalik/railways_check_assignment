import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/core/app_theme/app_background_gradient.dart';
import 'package:railway_checks_assignment/features/home/presentation/widgets/record_activity_button.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBackgroundGradient(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Text('Railways check'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  foregroundImage: AssetImage('assets/images/rail.png'),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),

        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            spacing: 25,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Hi!'), Text('Tien Shinhan')],
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('employee id: 123456@tien'),
              ),
              Container(
                height: 300,
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('History'),
                    SizedBox(height: 100),
                    Center(
                      child: Text(
                        'could display something here',
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: RecordActivityButton(
                  activityText: 'station activities',
                  onTap: () =>
                      Navigator.pushNamed(context, '/station_activities'),
                ),
              ),
              Center(
                child: RecordActivityButton(
                  activityText: 'platform return activities',
                  onTap: () =>
                      Navigator.pushNamed(context, '/platform_activities'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
