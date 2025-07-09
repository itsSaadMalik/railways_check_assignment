import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/widgets/station_activity_1_widget.dart';

class StationActivitiesScoreCardView extends ConsumerWidget {
  const StationActivitiesScoreCardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.fromLTRB(10, 20, 10, 35),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 228, 228, 228),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 216, 216, 216),
            blurRadius: 3,
            offset: Offset(3, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        spacing: 35,
        children: [
          Text(
            'Station Activities Scorecard',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          StationActivity1Widget(),
        ],
      ),
    );
  }
}
