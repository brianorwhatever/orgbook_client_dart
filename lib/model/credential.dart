part of orgbookapi.api;

class Credential {
  int topic;

  int credentialSet;

  int credentialType;

  String credentialId;

  String credentialDefId;

  String cardinalityHash;

  DateTime effectiveDate;

  bool inactive;

  bool latest;

  bool revoked;

  DateTime revokedDate;

  int revokedBy;

  List<int> relatedTopics = const [];

  List<CredentialAttribute> attributes = const [];

  Credential({
    this.topic,
    this.credentialSet,
    this.credentialType,
    this.credentialId,
    this.credentialDefId,
    this.cardinalityHash,
    this.effectiveDate,
    this.inactive,
    this.latest,
    this.revoked,
    this.revokedDate,
    this.revokedBy,
    this.relatedTopics = const [],
    @required this.attributes,
  });

  @override
  String toString() {
    return 'Credential[topic=$topic, credentialSet=$credentialSet, credentialType=$credentialType, credentialId=$credentialId, credentialDefId=$credentialDefId, cardinalityHash=$cardinalityHash, effectiveDate=$effectiveDate, inactive=$inactive, latest=$latest, revoked=$revoked, revokedDate=$revokedDate, revokedBy=$revokedBy, relatedTopics=$relatedTopics, attributes=$attributes, ]';
  }

  Credential.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    topic = json['topic'];
    credentialSet = json['credential_set'];
    credentialType = json['credential_type'];
    credentialId = json['credential_id'];
    credentialDefId = json['credential_def_id'];
    cardinalityHash = json['cardinality_hash'];
    effectiveDate = (json['effective_date'] == null)
        ? null
        : DateTime.parse(json['effective_date']);
    inactive = json['inactive'];
    latest = json['latest'];
    revoked = json['revoked'];
    revokedDate = (json['revoked_date'] == null)
        ? null
        : DateTime.parse(json['revoked_date']);
    revokedBy = json['revoked_by'];
    relatedTopics = (json['related_topics'] == null)
        ? null
        : (json['related_topics'] as List).cast<int>();
    attributes = (json['attributes'] == null)
        ? null
        : CredentialAttribute.listFromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (topic != null) json['topic'] = topic;
    if (credentialSet != null) json['credential_set'] = credentialSet;
    if (credentialType != null) json['credential_type'] = credentialType;
    if (credentialId != null) json['credential_id'] = credentialId;
    if (credentialDefId != null) json['credential_def_id'] = credentialDefId;
    if (cardinalityHash != null) json['cardinality_hash'] = cardinalityHash;
    if (effectiveDate != null)
      json['effective_date'] = effectiveDate == null
          ? null
          : effectiveDate.toUtc().toIso8601String();
    if (inactive != null) json['inactive'] = inactive;
    if (latest != null) json['latest'] = latest;
    if (revoked != null) json['revoked'] = revoked;
    if (revokedDate != null)
      json['revoked_date'] =
          revokedDate == null ? null : revokedDate.toUtc().toIso8601String();
    if (revokedBy != null) json['revoked_by'] = revokedBy;
    if (relatedTopics != null) json['related_topics'] = relatedTopics;
    if (attributes != null) json['attributes'] = attributes;
    return json;
  }

  static List<Credential> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Credential>()
        : json.map((value) => Credential.fromJson(value)).toList();
  }

  static Map<String, Credential> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Credential>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Credential.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Credential-objects as value to a dart map
  static Map<String, List<Credential>> mapListFromJson(
      Map<String, dynamic> json) {
    final map = Map<String, List<Credential>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Credential.listFromJson(value);
      });
    }
    return map;
  }
}
