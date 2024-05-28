class Tournament {
  String id;
  String tournamentTitle;
  String tournamentDescription;
  DateTime date;
  String venue;
  int minPeopleCount;
  int maxPeopleCount;
  String tournamentImage;
  bool courtBooked;
  bool payBeforeJoin;
  bool restrictBySkillLevel;
  String playersType;
  String gameType;
  String createdBy;
  String categoryId;
  String activityType;
  bool isActive;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  Tournament({
    required this.id,
    required this.tournamentTitle,
    required this.tournamentDescription,
    required this.date,
    required this.venue,
    required this.minPeopleCount,
    required this.maxPeopleCount,
    required this.tournamentImage,
    required this.courtBooked,
    required this.payBeforeJoin,
    required this.restrictBySkillLevel,
    required this.playersType,
    required this.gameType,
    required this.createdBy,
    required this.categoryId,
    required this.activityType,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory Tournament.fromJson(Map<String, dynamic> json) {
    return Tournament(
      id: json['_id'],
      tournamentTitle: json['tournament_title'],
      tournamentDescription: json['tournament_description'],
      date: DateTime.parse(json['date']),
      venue: json['venue'],
      minPeopleCount: json['min_people_count'],
      maxPeopleCount: json['max_people_count'],
      tournamentImage: json['tournament_image'],
      courtBooked: json['court_booked'],
      payBeforeJoin: json['pay_before_join'],
      restrictBySkillLevel: json['restrict_by_skill_level'],
      playersType: json['players_type'],
      gameType: json['game_type'],
      createdBy: json['createdBy'],
      categoryId: json['categoryId'],
      activityType: json['activity_type'],
      isActive: json['isActive'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      v: json['__v'],
    );
  }
}

class TournamentList {
  int status;
  String message;
  List<Tournament> result;

  TournamentList({
    required this.status,
    required this.message,
    required this.result,
  });

  factory TournamentList.fromJson(Map<String, dynamic> json) {
    List<Tournament> tournaments = [];
    if (json['result'] != null) {
      json['result'].forEach((tournament) {
        tournaments.add(Tournament.fromJson(tournament));
      });
    }
    return TournamentList(
      status: json['status'],
      message: json['message'],
      result: tournaments,
    );
  }
}
