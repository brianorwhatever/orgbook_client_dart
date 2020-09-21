part of orgbookapi.api;

class CredentialAttribute {
  
  int id;
  
  String type;
  
  String format;
  
  String value;
  
  String credentialId;

  CredentialAttribute({
    this.id,
    this.type,
    this.format,
    this.value,
    this.credentialId,
  });

  @override
  String toString() {
    return 'CredentialAttribute[id=$id, type=$type, format=$format, value=$value, credentialId=$credentialId, ]';
  }

  CredentialAttribute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    type = json['type'];
    format = json['format'];
    value = json['value'];
    credentialId = json['credential_id'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (type != null)
      json['type'] = type;
    if (format != null)
      json['format'] = format;
    if (value != null)
      json['value'] = value;
    if (credentialId != null)
      json['credential_id'] = credentialId;
    return json;
  }

  static List<CredentialAttribute> listFromJson(List<dynamic> json) {
    return json == null ? List<CredentialAttribute>() : json.map((value) => CredentialAttribute.fromJson(value)).toList();
  }

  static Map<String, CredentialAttribute> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CredentialAttribute>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CredentialAttribute.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CredentialAttribute-objects as value to a dart map
  static Map<String, List<CredentialAttribute>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CredentialAttribute>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CredentialAttribute.listFromJson(value);
      });
    }
    return map;
  }
}

