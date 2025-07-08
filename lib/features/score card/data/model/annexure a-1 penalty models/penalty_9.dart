class Penalty9 {
  String penaltyID = 'penalty_9';
  String clauseNo = '22(ix)';

  final int fineAmount;
  final List<int> coaches;

  final String? description =
      "Penalty of Rs. 250/-per tool & implements/ WS/ day shall be imposed for not deploying tool & implement/WS as per resource specification.";

  Penalty9({required this.fineAmount, required this.coaches});

  int get total => fineAmount * (coaches.length);

  @override
  bool operator ==(covariant Penalty9 other) => penaltyID == other.penaltyID;

  @override
  int get hashCode => penaltyID.hashCode;
}
