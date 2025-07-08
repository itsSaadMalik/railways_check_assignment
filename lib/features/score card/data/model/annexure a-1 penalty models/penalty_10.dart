class Penalty10 {
  String penaltyID = 'penalty_10';
  String clauseNo = '22(x)';

  final int fineAmount;
  final List<int> coaches;

  final String? description = "Any other penalty as specified";

  Penalty10({required this.fineAmount, required this.coaches});

  int get total => fineAmount * (coaches.length);

  @override
  bool operator ==(covariant Penalty10 other) => penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
