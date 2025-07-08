import 'package:railway_checks_assignment/core/utils/enums/field%20names%20enums/Annexure%20A-9/annexure_09_fieldnames.dart';

extension Annexure09FieldnameString on Annexure09FieldnamesEnum {
  String get feildname {
    switch (this) {
      case Annexure09FieldnamesEnum.wOnumber:
        return 'w_o_number';
      case Annexure09FieldnamesEnum.titleOfWork:
        return 'title_of_work';
      case Annexure09FieldnamesEnum.contractorName:
        return 'contractor_name';
      case Annexure09FieldnamesEnum.nameOfSupervisor:
        return 'name_of_supervisor';
      case Annexure09FieldnamesEnum.designation:
        return 'designation';
      case Annexure09FieldnamesEnum.dateofInspecton:
        return 'dateofInspecton';
      case Annexure09FieldnamesEnum.trainNumber:
        return 'trainNumber';
      case Annexure09FieldnamesEnum.trainArrivalTime:
        return 'trainArrivalTime';
      case Annexure09FieldnamesEnum.trainDepartureTime:
        return 'trainDepartureTime';
      case Annexure09FieldnamesEnum.totalTrainCoaches:
        return 'totalTrainCoaches';
      case Annexure09FieldnamesEnum.coachesAttended:
        return 'coachesAttended';
      case Annexure09FieldnamesEnum.totalScoreObtained:
        return 'totalScoreObtained';
      case Annexure09FieldnamesEnum.activity1:
        return 'activity1';
      case Annexure09FieldnamesEnum.activity2:
        return 'activity2';
      case Annexure09FieldnamesEnum.activity3:
        return 'activity3';
      case Annexure09FieldnamesEnum.activity4:
        return 'activity4';
    }
  }
}

// extension Annexure09FieldnameString on Annexure09FieldnamesEnum {
//   String get feildname {}
// }
