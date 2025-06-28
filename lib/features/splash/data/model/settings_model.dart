import 'package:equatable/equatable.dart';

import 'force_update_model.dart';
import 'maintenance_model.dart';

class SettingsModel extends Equatable {
  // currency
  final String currency;
  final String currencySymbol;
  // Contact info
  final String? email;
  final String? phone;
  final String logoPath;
  // Forms
  final String privacyPolicy;
  final String aboutUs;
  final String termsOfUse;
  final String termsAndConditions;
  final String contactUs;
  final List<FaqModel>? faq;
  // App Settings
  final bool isDemo;
  final ForceUpdateModel forceUpdate;
  final MaintenanceModel? maintenance;

  const SettingsModel({
    required this.currency,
    required this.currencySymbol,
    required this.email,
    required this.phone,
    required this.logoPath,
    required this.privacyPolicy,
    required this.aboutUs,
    required this.termsOfUse,
    required this.termsAndConditions,
    required this.contactUs,
    required this.faq,
    required this.isDemo,
    required this.forceUpdate,
    required this.maintenance,
  });

  factory SettingsModel.fromJson(Map<String, dynamic> json) {
    return SettingsModel(
      currency: json['currency'] ?? '',
      currencySymbol: json['currency_symbol'] ?? '',
      email: json["email"],
      phone: json["phone"],
      logoPath: json["logo_path"],
      privacyPolicy: json["privacy_policy"],
      aboutUs: json["about_us"],
      termsOfUse: json["terms_of_use"],
      termsAndConditions: json["terms_and_conditions"],
      contactUs: json["contact_us"],
      faq: json["faq"] != null ? List.from(json['faq']).map((e) => FaqModel.fromJson(e)).toList() : null,
      isDemo: json['is_demo'] == true,
      forceUpdate: ForceUpdateModel.fromJson(json['force_update']),
      maintenance: json['maintenance'] == null ? null : MaintenanceModel.fromJson(json['maintenance']),
    );
  }

  @override
  List<Object?> get props =>
      [
        currency,
        currencySymbol,
        email,
        phone,
        logoPath,
        privacyPolicy,
        aboutUs,
        termsOfUse,
        termsAndConditions,
        contactUs,
        faq,
        isDemo,
        forceUpdate,
        maintenance,
      ];
}

class FaqModel extends Equatable {
  final String question;
  final String answer;

  const FaqModel({
    required this.question,
    required this.answer,
  });

  factory FaqModel.fromJson(Map<String, dynamic> json) {
    return FaqModel(
      question: json['question'] ?? '',
      answer: json['answer'] ?? '',
    );
  }

  @override
  List<Object> get props => [question, answer];
}
