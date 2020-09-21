part of orgbookapi.api;

class CredentialAddress {
  
  String province;
  
  String country;
  
  String city;
  
  DateTime updateTimestamp;
  
  DateTime createTimestamp;
  
  String addressee;
  
  int id;
  
  String civicAddress;
  
  String credentialId;
  
  String postalCode;

  CredentialAddress({
    this.province,
    this.country,
    this.city,
    this.updateTimestamp,
    this.createTimestamp,
    this.addressee,
    this.id,
    this.civicAddress,
    this.credentialId,
    this.postalCode,
  });

  @override
  String toString() {
    return 'CredentialAddress[province=$province, country=$country, city=$city, updateTimestamp=$updateTimestamp, createTimestamp=$createTimestamp, addressee=$addressee, id=$id, civicAddress=$civicAddress, credentialId=$credentialId, postalCode=$postalCode, ]';
  }

  CredentialAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    province = json['province'];
    country = json['country'];
    city = json['city'];
    updateTimestamp = (json['update_timestamp'] == null) ?
      null :
      DateTime.parse(json['update_timestamp']);
    createTimestamp = (json['create_timestamp'] == null) ?
      null :
      DateTime.parse(json['create_timestamp']);
    addressee = json['addressee'];
    id = json['id'];
    civicAddress = json['civic_address'];
    credentialId = json['credential_id'];
    postalCode = json['postal_code'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (province != null)
      json['province'] = province;
    if (country != null)
      json['country'] = country;
    if (city != null)
      json['city'] = city;
    if (updateTimestamp != null)
      json['update_timestamp'] = updateTimestamp == null ? null : updateTimestamp.toUtc().toIso8601String();
    if (createTimestamp != null)
      json['create_timestamp'] = createTimestamp == null ? null : createTimestamp.toUtc().toIso8601String();
    if (addressee != null)
      json['addressee'] = addressee;
    if (id != null)
      json['id'] = id;
    if (civicAddress != null)
      json['civic_address'] = civicAddress;
    if (credentialId != null)
      json['credential_id'] = credentialId;
    if (postalCode != null)
      json['postal_code'] = postalCode;
    return json;
  }

  static List<CredentialAddress> listFromJson(List<dynamic> json) {
    return json == null ? List<CredentialAddress>() : json.map((value) => CredentialAddress.fromJson(value)).toList();
  }

  static Map<String, CredentialAddress> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CredentialAddress>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CredentialAddress.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CredentialAddress-objects as value to a dart map
  static Map<String, List<CredentialAddress>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CredentialAddress>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CredentialAddress.listFromJson(value);
      });
    }
    return map;
  }
}

