class AnnexureA1Entity {
  final String agreementNumber;
  final DateTime agreementDate;

  final String contractorName;
  final DateTime dateofInspecton;

  final String nameOfDepot;

  final String nameOfSupervisor;
  final String trainNumber;

  final DateTime timeWorkStarted;
  final DateTime timeWorkCompleted;
  final int totalTrainCoaches;
  final int coachesAttended;

  final double totalScoreObtained;
  final List<int> activity1;
  final List<int> activity2;
  final List<int> activity3;
  final List<int> activity4;
  final List<int> activity5;

  AnnexureA1Entity({
    required this.agreementNumber,
    required this.agreementDate,
    required this.contractorName,
    required this.dateofInspecton,
    required this.nameOfDepot,
    required this.nameOfSupervisor,

    required this.trainNumber,
    required this.timeWorkStarted,
    required this.timeWorkCompleted,
    required this.totalTrainCoaches,
    required this.coachesAttended,
    required this.totalScoreObtained,
    required this.activity1,
    required this.activity2,
    required this.activity3,
    required this.activity4,
    required this.activity5,
  });
}
