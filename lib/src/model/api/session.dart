class Session {
  bool success;
  String expiresAt;
  String sessionId;
  bool isGuestSession;

  Session({this.success, this.expiresAt, this.sessionId, this.isGuestSession});

  factory Session.guestFromJson(Map<String, dynamic> json) {
    return Session(
      success: json['succes'],
      expiresAt: json['expires_at'],
      sessionId: json['guest_session_id'],
      isGuestSession: true
    );
  }

  factory Session.loggedFromJson(Map<String, dynamic> json) {
    return Session(
        success: json['succes'],
        expiresAt: json['expires_at'],
        sessionId: json['session_id'],
        isGuestSession: false
    );
  }

}