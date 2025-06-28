class ContactUsBody {
  final String email;
  final String message;

  ContactUsBody({
    required this.email,
    required this.message,
  });

  Map<String, dynamic> toJson() => {
    'email': email,
    'message': message,
  };
}
