import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/providers/station%20activities/station_activities_record_notifier.dart';
import 'package:railway_checks_assignment/features/score%20card/presentation/widgets/info_text_field.dart';

class StationActivitiesInfoWidget extends ConsumerWidget {
  const StationActivitiesInfoWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wOnumber = ref.watch(stationActivitiesProvider)?.wOnumber;
    final titleOfWork = ref.watch(stationActivitiesProvider).titleOfWork;
    final contractorName = ref.watch(stationActivitiesProvider).contractorName;
    final nameOfSupervisor = ref
        .watch(stationActivitiesProvider)
        .nameOfSupervisor;
    final designation = ref.watch(stationActivitiesProvider).designation;
    final trainNumber = ref.watch(stationActivitiesProvider).trainNumber;
    final dateofInspecton = ref
        .watch(stationActivitiesProvider)
        .dateofInspecton;
    final trainArrivalTime = ref
        .watch(stationActivitiesProvider)
        .trainArrivalTime;
    final trainDepartureTime = ref
        .watch(stationActivitiesProvider)
        .trainDepartureTime;
    final totalTrainCoaches = ref
        .watch(stationActivitiesProvider)
        .totalTrainCoaches;
    final coachesAttended = ref
        .watch(stationActivitiesProvider)
        .coachesAttended;
    final totalScoreObtained = ref
        .watch(stationActivitiesProvider)
        .totalScoreObtained;
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.fromLTRB(20, 20, 20, 35),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 233, 233, 233),
            blurRadius: 3,
            offset: Offset(3, 4),
          ),
        ],
        color: Colors.white,

        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        spacing: 35,
        children: [
          Text('Record details', style: Theme.of(context).textTheme.bodyLarge),
          // SizedBox(height: MediaQuery.sizeOf(context).height * .0),
          InfoTextField(
            onChanged: (value) => ref
                .read(stationActivitiesProvider.notifier)
                .updateScoreCardwONumber(newValue: value),
            hintText: 'W.O.No.',
          ),
          InfoTextField(
            onChanged: (value) => ref
                .read(stationActivitiesProvider.notifier)
                .updateScoreCardtitleOfWork(newValue: value),
            hintText: 'Title of work',
          ),
          InfoTextField(
            onChanged: (value) => ref
                .read(stationActivitiesProvider.notifier)
                .updateScoreCardcontractorName(newValue: value),
            hintText: 'Contractor name',
          ),
          InfoTextField(
            onChanged: (value) => ref
                .read(stationActivitiesProvider.notifier)
                .updateScoreCardnameOfSupervisor(newValue: value),
            hintText: 'Name Of supervisor',
          ),
          InfoTextField(
            onChanged: (value) => ref
                .read(stationActivitiesProvider.notifier)
                .updateScoreCardDesignation(newValue: value),
            hintText: 'Designation',
          ),
          InfoTextField(
            onChanged: (value) => ref
                .read(stationActivitiesProvider.notifier)
                .updateScoreCardtrainNumber(newValue: value),
            hintText: 'Train number',
          ),
        ],
      ),
    );
  }
}
