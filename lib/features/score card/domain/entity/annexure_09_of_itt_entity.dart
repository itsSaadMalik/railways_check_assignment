import 'package:railway_checks_assignment/features/score%20card/data/model/coach_activity_3_model.dart';
import 'package:railway_checks_assignment/features/score%20card/data/model/coach_toilets_model.dart';

class Annexuer09ITTCardEntity {
  final String wOnumber;

  final String titleOfWork;
  final String contractorName;

  final String nameOfSupervisor;
  final String designation;
  final DateTime dateofInspecton;

  final String trainNumber;
  final DateTime trainArrivalTime;
  final DateTime trainDepartureTime;
  final int totalTrainCoaches;
  final int coachesAttended;

  final double totalScoreObtained;
  final List<CoachActivity1Model?> activity1;
  final List<int> activity2;
  final List<CoachActivity3Model?> activity3;
  final List<int> activity4;

  Annexuer09ITTCardEntity({
    required this.wOnumber,
    required this.titleOfWork,
    required this.contractorName,
    required this.nameOfSupervisor,
    required this.designation,
    required this.dateofInspecton,
    required this.trainNumber,
    required this.trainArrivalTime,
    required this.trainDepartureTime,
    required this.totalTrainCoaches,
    required this.coachesAttended,
    required this.totalScoreObtained,
    required this.activity1,
    required this.activity2,
    required this.activity3,
    required this.activity4,
  });

  // final Annexure09CoachDataModel scoreCard;

  // final scoreData = {
  //   'activity_1': {
  //     'c1': {
  //       ToiletNumber.t1.fieldname: x,
  //       ToiletNumber.t2.fieldname: x,
  //       ToiletNumber.t3.fieldname: x,
  //       ToiletNumber.t4.fieldname: x,
  //     },
  //   },
  // };
}
