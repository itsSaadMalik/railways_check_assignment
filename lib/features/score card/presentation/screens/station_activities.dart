import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/core/app_theme/app_background_gradient.dart';
import 'package:railway_checks_assignment/core/utils/extensions/log_extension.dart';
import 'package:railway_checks_assignment/core/utils/shared/edge_insets.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/providers/station%20activities/station_activities_record_notifier.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/views/activities_score_card_view.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/views/station_activities_info_widget.dart';

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
        appBar: AppBar(
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          title: Text('Record Station Activities'),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: screenStandardEdgeInsets.copyWith(top: 30, bottom: 20),
          child: Column(
            children: [
              Text(
                'Note : SCORE CARD (TO BE FILLED BY THE RAILWAY SUPERVISOR / CTS INSPECTOR)'
                    .toLowerCase(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 40),
              StationActivitiesInfoWidget(),
              Container(height: 40),
              StationActivitiesScoreCardView(),
              // ElevatedButton(
              //   onPressed: () =>
              //       ref.read(stationActivitiesProvider).wOnumber.log(),
              //   child: Text('data'),
              // ),
              // Container(
              //   height: 400,
              //   color: const Color.fromARGB(255, 255, 255, 255),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
