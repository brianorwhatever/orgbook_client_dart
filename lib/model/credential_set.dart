part of orgbookapi.api;

class CredentialSet {
  
  int id;
  
  DateTime createTimestamp;
  
  DateTime updateTimestamp;
  
  int latestCredentialId;
  
  int topicId;
  
  DateTime firstEffectiveDate;
  
  DateTime lastEffectiveDate;

  CredentialSet({
    this.id,
    this.createTimestamp,
    this.updateTimestamp,
    this.latestCredentialId,
    this.topicId,
    this.firstEffectiveDate,
    this.lastEffectiveDate,
  });

  @override
  String toString() {
    return 'CredentialSet[id=$id, createTimestamp=$createTimestamp, updateTimestamp=$updateTimestamp, latestCredentialId=$latestCredentialId, topicId=$topicId, firstEffectiveDate=$firstEffectiveDate, lastEffectiveDate=$lastEffectiveDate, ]';
  }

  CredentialSet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createTimestamp = (json['create_timestamp'] == null) ?
      null :
      DateTime.parse(json['create_timestamp']);
    updateTimestamp = (json['update_timestamp'] == null) ?
      null :
      DateTime.parse(json['update_timestamp']);
    latestCredentialId = json['latest_credential_id'];
    topicId = json['topic_id'];
    firstEffectiveDate = (json['first_effective_date'] == null) ?
      null :
      DateTime.parse(json['first_effective_date']);
    lastEffectiveDate = (json['last_effective_date'] == null) ?
      null :
      DateTime.parse(json['last_effective_date']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (createTimestamp != null)
      json['create_timestamp'] = createTimestamp == null ? null : createTimestamp.toUtc().toIso8601String();
    if (updateTimestamp != null)
      json['update_timestamp'] = updateTimestamp == null ? null : updateTimestamp.toUtc().toIso8601String();
    if (latestCredentialId != null)
      json['latest_credential_id'] = latestCredentialId;
    if (topicId != null)
      json['topic_id'] = topicId;
    if (firstEffectiveDate != null)
      json['first_effective_date'] = firstEffectiveDate == null ? null : firstEffectiveDate.toUtc().toIso8601String();
    if (lastEffectiveDate != null)
      json['last_effective_date'] = lastEffectiveDate == null ? null : lastEffectiveDate.toUtc().toIso8601String();
    return json;
  }

  static List<CredentialSet> listFromJson(List<dynamic> json) {
    return json == null ? List<CredentialSet>() : json.map((value) => CredentialSet.fromJson(value)).toList();
  }

  static Map<String, CredentialSet> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CredentialSet>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CredentialSet.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CredentialSet-objects as value to a dart map
  static Map<String, List<CredentialSet>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CredentialSet>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CredentialSet.listFromJson(value);
      });
    }
    return map;
  }
}

