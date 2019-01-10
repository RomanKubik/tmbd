class Token {
  bool success;
  String expiresAt;
  String token;

  Token({this.success, this.expiresAt, this.token});

  factory Token.fromJson(Map<String, dynamic> json) {
    return Token(
      success: json['success'],
      expiresAt: json['expires_at'],
      token: json['token']
    );
  }

}