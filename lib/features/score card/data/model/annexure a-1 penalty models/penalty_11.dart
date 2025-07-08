class Penalty11 {
  String penaltyID = 'penalty_11';
  String clauseNo = '22(xi)';

  final int fineAmount;
  final List<int> coaches;

  final String? description =
      "A Penalty of Rs. 5000/- per instance for misbehaving with the Passengers or Auth. Railway employee.";

  Penalty11({required this.fineAmount, required this.coaches});

  int get total => fineAmount * (coaches.length);

  @override
  bool operator ==(covariant Penalty11 other) => penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
