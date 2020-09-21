part of orgbookapi.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "https://www.orgbook.gov.bc.ca/api/v2"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['basic'] = HttpBasicAuth();
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Credential':
          return Credential.fromJson(value);
        case 'CredentialAddress':
          return CredentialAddress.fromJson(value);
        case 'CredentialAttribute':
          return CredentialAttribute.fromJson(value);
        case 'CredentialAutocomplete':
          return CredentialAutocomplete.fromJson(value);
        case 'CredentialExt':
          return CredentialExt.fromJson(value);
        case 'CredentialName':
          return CredentialName.fromJson(value);
        case 'CredentialNamedTopic':
          return CredentialNamedTopic.fromJson(value);
        case 'CredentialSearch':
          return CredentialSearch.fromJson(value);
        case 'CredentialSet':
          return CredentialSet.fromJson(value);
        case 'CredentialTopicExt':
          return CredentialTopicExt.fromJson(value);
        case 'CredentialTopicSearch':
          return CredentialTopicSearch.fromJson(value);
        case 'CredentialType':
          return CredentialType.fromJson(value);
        case 'CredentialTypeSchema':
          return CredentialTypeSchema.fromJson(value);
        case 'CustomTopic':
          return CustomTopic.fromJson(value);
        case 'ExpandedCredential':
          return ExpandedCredential.fromJson(value);
        case 'ExpandedCredentialSet':
          return ExpandedCredentialSet.fromJson(value);
        case 'InlineResponse200':
          return InlineResponse200.fromJson(value);
        case 'InlineResponse2001':
          return InlineResponse2001.fromJson(value);
        case 'InlineResponse2002':
          return InlineResponse2002.fromJson(value);
        case 'InlineResponse2003':
          return InlineResponse2003.fromJson(value);
        case 'InlineResponse2004':
          return InlineResponse2004.fromJson(value);
        case 'InlineResponse2005':
          return InlineResponse2005.fromJson(value);
        case 'InlineResponse2006':
          return InlineResponse2006.fromJson(value);
        case 'InlineResponse2007':
          return InlineResponse2007.fromJson(value);
        case 'InlineResponse2008':
          return InlineResponse2008.fromJson(value);
        case 'Issuer':
          return Issuer.fromJson(value);
        case 'Schema':
          return Schema.fromJson(value);
        case 'Topic':
          return Topic.fromJson(value);
        case 'TopicAttribute':
          return TopicAttribute.fromJson(value);
        case 'TopicRelationship':
          return TopicRelationship.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String nullableContentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
      .where((p) => p.value != null)
      .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value)}');

    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    if (nullableContentType != null) {
      final contentType = nullableContentType;
      headerParams['Content-Type'] = contentType;
    }

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = nullableContentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      final nullableHeaderParams = (headerParams.isEmpty)? null: headerParams;
      switch(method) {
        case "POST":
          return client.post(url, headers: nullableHeaderParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: nullableHeaderParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: nullableHeaderParams);
        case "PATCH":
          return client.patch(url, headers: nullableHeaderParams, body: msgBody);
        case "HEAD":
          return client.head(url, headers: nullableHeaderParams);
        default:
          return client.get(url, headers: nullableHeaderParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }
}
