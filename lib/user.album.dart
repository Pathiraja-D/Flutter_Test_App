class Album {
  final String username;
  final String email;

  const Album({
    required this.username,
    required this.email,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      username: json['username'],
      email: json['email'],
    );
  }
}
