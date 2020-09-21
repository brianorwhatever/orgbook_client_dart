part of orgbookapi.api;

class Issuer {
  
  int id;
  
  bool hasLogo;
  
  DateTime createTimestamp;
  
  DateTime updateTimestamp;
  
  String did;
  
  String name;
  
  String abbreviation;
  
  String email;
  
  String url;
  
  String endpoint;

  Issuer({
    this.id,
    this.hasLogo,
    this.createTimestamp,
    this.updateTimestamp,
    @required this.did,
    @required this.name,
    @required this.abbreviation,
    @required this.email,
    @required this.url,
    this.endpoint,
  });

  @override
  String toString() {
    return 'Issuer[id=$id, hasLogo=$hasLogo, createTimestamp=$createTimestamp, updateTimestamp=$updateTimestamp, did=$did, name=$name, abbreviation=$abbreviation, email=$email, url=$url, endpoint=$endpoint, ]';
  }

  Issuer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    hasLogo = json['has_logo'];
    createTimestamp = (json['create_timestamp'] == null) ?
      null :
      DateTime.parse(json['create_timestamp']);
    updateTimestamp = (json['update_timestamp'] == null) ?
      null :
      DateTime.parse(json['update_timestamp']);
    did = json['did'];
    name = json['name'];
    abbreviation = json['abbreviation'];
    email = json['email'];
    url = json['url'];
    endpoint = json['endpoint'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (hasLogo != null)
      json['has_logo'] = hasLogo;
    if (createTimestamp != null)
      json['create_timestamp'] = createTimestamp == null ? null : createTimestamp.toUtc().toIso8601String();
    if (updateTimestamp != null)
      json['update_timestamp'] = updateTimestamp == null ? null : updateTimestamp.toUtc().toIso8601String();
    if (did != null)
      json['did'] = did;
    if (name != null)
      json['name'] = name;
    if (abbreviation != null)
      json['abbreviation'] = abbreviation;
    if (email != null)
      json['email'] = email;
    if (url != null)
      json['url'] = url;
      json['endpoint'] = endpoint;
    return json;
  }

  static List<Issuer> listFromJson(List<dynamic> json) {
    return json == null ? List<Issuer>() : json.map((value) => Issuer.fromJson(value)).toList();
  }

  static Map<String, Issuer> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Issuer>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Issuer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Issuer-objects as value to a dart map
  static Map<String, List<Issuer>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Issuer>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Issuer.listFromJson(value);
      });
    }
    return map;
  }
}

