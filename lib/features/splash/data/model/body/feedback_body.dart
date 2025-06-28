class FeedbackBody {
  final String email;
  final String message;

  FeedbackBody({
    required this.email,
    required this.message,
  });

  Map<String, dynamic> toJson() => {
        'email': email,
        'message': message,
      };
}
