part of orgbookapi.api;

class CredentialAutocomplete {
  
  int id;
  
  List<CredentialName> names = const [];
  
  bool inactive;

  CredentialAutocomplete({
    this.id,
    @required this.names,
    this.inactive,
  });

  @override
  String toString() {
    return 'CredentialAutocomplete[id=$id, names=$names, inactive=$inactive, ]';
  }

  CredentialAutocomplete.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    names = (json['names'] == null) ?
      null :
      CredentialName.listFromJson(json['names']);
    inactive = json['inactive'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (names != null)
      json['names'] = names;
    if (inactive != null)
      json['inactive'] = inactive;
    return json;
  }

  static List<CredentialAutocomplete> listFromJson(List<dynamic> json) {
    return json == null ? List<CredentialAutocomplete>() : json.map((value) => CredentialAutocomplete.fromJson(value)).toList();
  }

  static Map<String, CredentialAutocomplete> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CredentialAutocomplete>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CredentialAutocomplete.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CredentialAutocomplete-objects as value to a dart map
  static Map<String, List<CredentialAutocomplete>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CredentialAutocomplete>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CredentialAutocomplete.listFromJson(value);
      });
    }
    return map;
  }
}

