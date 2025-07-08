import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/core/app_theme/app_background_gradient.dart';
import 'package:railway_checks_assignment/core/utils/shared/edge_insets.dart';

class StationActivitiesRecordScreen extends ConsumerStatefulWidget {
  const StationActivitiesRecordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StationActivitiesScreenState();
}

class _StationActivitiesScreenState
    extends ConsumerState<StationActivitiesRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBackgroundGradient(
      body: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: screenStandardEdgeInsets.copyWith(top: 30),
          child: Column(
            children: [
              Text(
                'Note : SCORE CARD (TO BE FILLED BY THE RAILWAY SUPERVISOR / CTS INSPECTOR)'
                    .toLowerCase(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('employee id: 123456@tien'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
