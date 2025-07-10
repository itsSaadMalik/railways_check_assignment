import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:railway_checks_assignment/core/utils/enums/field%20names%20enums/Annexure%20A-9/activity_3_score_field_enum.dart';
import 'package:railway_checks_assignment/core/utils/enums/toilet_number.dart';
import 'package:railway_checks_assignment/core/utils/extensions/log_extension.dart';
import 'package:railway_checks_assignment/features/score%20card/data/model/annexure_09_itt_model.dart';
import 'package:railway_checks_assignment/features/score%20card/data/model/coach_activity_3_model.dart';
import 'package:railway_checks_assignment/features/score%20card/data/model/coach_toilets_model.dart';

class StationActivitiesRecordNotifier
    extends StateNotifier<Annexure09IttModel> {
  StationActivitiesRecordNotifier(super._state);

  void updateForm() {
    state = state;
  }

  void updateActivity1({
    // required String coachID,
    required int updatedValue,
    required int index,
    required ToiletNumber toiletNumber,
  }) {
    // final updatedList = [...state.activity1];
    switch (toiletNumber) {
      case ToiletNumber.t1:
        {
          // updatedList[index]=updatedList[index]?.copyWith(toilet1: updatedValue);
          state.activity1[index] = state.activity1
              .elementAt(index)
              ?.copyWith(toilet1: updatedValue);
          // state = state;
          break;
        }

      case ToiletNumber.t2:
        {
          state.activity1[index] = state.activity1
              .elementAt(index)
              ?.copyWith(toilet2: updatedValue);
          // state = state;
          break;
        }
      case ToiletNumber.t3:
        state.activity1[index] = state.activity1
            .elementAt(index)
            ?.copyWith(toilet3: updatedValue);
        break;

      case ToiletNumber.t4:
        state.activity1[index] = state.activity1
            .elementAt(index)
            ?.copyWith(toilet4: updatedValue);
        break;
    }
    state = state.copywith();
    // state.activity1.((element) => element?.coachID == coachID);
  }

  void updateActivity2({required int index, required int updatedValue}) {
    List<int> newList = state.activity2;
    newList[index] = updatedValue;
    state = state.copywith(activity2: newList);
    // state.activity1[index] = updatedValue;
  }

  void updateActivity3({
    required Activity3ScoreFields activity,
    required int updatedValue,
    required int index,
  }) {
    switch (activity) {
      case Activity3ScoreFields.b1:
        state.activity3[index] = state.activity3
            .elementAt(index)
            ?.copyWith(b1: updatedValue);
      case Activity3ScoreFields.b2:
        state.activity3[index] = state.activity3
            .elementAt(index)
            ?.copyWith(b2: updatedValue);

      case Activity3ScoreFields.d1:
        state.activity3[index] = state.activity3
            .elementAt(index)
            ?.copyWith(d1: updatedValue);

      case Activity3ScoreFields.d2:
        state.activity3[index] = state.activity3
            .elementAt(index)
            ?.copyWith(d2: updatedValue);

        state = state;
    }
  }

  void updateActivity4({required int index, required int updatedValue}) {
    List<int> newList = state.activity4;
    newList[index] = updatedValue;
    state = state.copywith(activity4: newList);
    // state.activity1[index] = updatedValue;
  }

  void updateScoreCardwONumber({required String newValue}) {
    state = state.copywith(wOnumber: newValue);
  }

  void updateScoreCardtitleOfWork({required String newValue}) {
    state = state.copywith(titleOfWork: newValue);
  }

  void updateScoreCardcontractorName({required String newValue}) {
    state = state.copywith(contractorName: newValue);
  }

  void updateScoreCardnameOfSupervisor({required String newValue}) {
    state = state.copywith(nameOfSupervisor: newValue);
  }

  void updateScoreCardDesignation({required String newValue}) {
    state = state.copywith(designation: newValue);
  }

  void updateScoreCardtrainNumber({required String newValue}) {
    state = state.copywith(trainNumber: newValue);
  }

  void updateScoreCardDateofInspecton({required DateTime newValue}) {
    state = state.copywith(dateofInspecton: newValue);
  }

  void updateScoreCardTrainArrivalTime({required DateTime newValue}) {
    state = state.copywith(trainArrivalTime: newValue);
  }

  void updateScoreCardtrainDepartureTime({required DateTime newValue}) {
    state = state.copywith(trainDepartureTime: newValue);
  }

  void updateScoreCardTotalTrainCoaches({required int newValue}) {
    state = state.copywith(totalTrainCoaches: newValue);
  }

  void updateScoreCardCoachesAttended({required int newValue}) {
    state = state.copywith(coachesAttended: newValue);
  }

  void updateScoreCardTotalScoreObtained({required double newValue}) {
    state = state.copywith(totalScoreObtained: newValue);
  }
}

final stationActivitiesProvider =
    StateNotifierProvider.autoDispose<
      StationActivitiesRecordNotifier,
      Annexure09IttModel
    >((ref) {
      ref.onDispose(
        () => 'stationActivitiesProvider disposed'.providerDispose(),
      );
      final preloadData = Annexure09IttModel(
        wOnumber: '',
        titleOfWork: '',
        contractorName: '',
        nameOfSupervisor: '',
        designation: '',
        trainNumber: '',
        dateofInspecton: DateTime.now(),
        trainArrivalTime: DateTime.now(),
        trainDepartureTime: DateTime.now(),

        totalTrainCoaches: 13, //defeault 13 coaches
        coachesAttended: 0,
        totalScoreObtained: 0,
        activity1: [
          for (int i = 1; i <= 13; i++)
            CoachActivity1Model(
              toilet1: -1,
              toilet2: -1,
              toilet3: -1,
              toilet4: -1,
              coachNumber: i,
              coachID: 'coach_$i',
            ),
        ],
        activity2: [for (int i = 0; i < 13; i++) -1],
        activity3: [
          for (int i = 0; i < 13; i++)
            CoachActivity3Model(
              b1: -1,
              b2: -1,
              d1: -1,
              d2: -1,
              coachNumber: i,
              coachId: 'coach_$i',
            ),
        ],
        activity4: [for (int i = 0; i < 13; i++) -1],
      );
      return StationActivitiesRecordNotifier(preloadData);
    });
