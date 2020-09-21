part of orgbookapi.api;

class CredentialName {
  
  int id;
  
  String text;
  
  String language;
  
  int credentialId;
  
  String type;

  CredentialName({
    this.id,
    this.text,
    this.language,
    this.credentialId,
    this.type,
  });

  @override
  String toString() {
    return 'CredentialName[id=$id, text=$text, language=$language, credentialId=$credentialId, type=$type, ]';
  }

  CredentialName.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    text = json['text'];
    language = json['language'];
    credentialId = json['credential_id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (text != null)
      json['text'] = text;
    if (language != null)
      json['language'] = language;
    if (credentialId != null)
      json['credential_id'] = credentialId;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<CredentialName> listFromJson(List<dynamic> json) {
    return json == null ? List<CredentialName>() : json.map((value) => CredentialName.fromJson(value)).toList();
  }

  static Map<String, CredentialName> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CredentialName>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CredentialName.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CredentialName-objects as value to a dart map
  static Map<String, List<CredentialName>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CredentialName>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CredentialName.listFromJson(value);
      });
    }
    return map;
  }
}

