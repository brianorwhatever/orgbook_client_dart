part of orgbookapi.api;



class SearchApi {
  final ApiClient apiClient;

  SearchApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// Return autocomplete results for a query string
  Future<Response> searchAutocompleteListWithHttpInfo({ String ordering, String q, String inactive, String latest, String revoked, String category }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/search/autocomplete".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(ordering != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ordering", ordering));
    }
    if(q != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    }
    if(inactive != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "inactive", inactive));
    }
    if(latest != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "latest", latest));
    }
    if(revoked != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "revoked", revoked));
    }
    if(category != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "category", category));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basic"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String ordering :
  ///     Which field to use when ordering the results.
  ///String q :
  ///     Query string
  ///String inactive :
  ///     Show inactive credentials
  ///String latest :
  ///     Show only latest credentials
  ///String revoked :
  ///     Show revoked credentials
  ///String category :
  ///     Filter by credential category. The category name and value should be joined by '::'
  /// Return autocomplete results for a query string
  Future<InlineResponse2004> searchAutocompleteList({ String ordering, String q, String inactive, String latest, String revoked, String category }) async {
    Response response = await searchAutocompleteListWithHttpInfo( ordering: ordering, q: q, inactive: inactive, latest: latest, revoked: revoked, category: category );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2004') as InlineResponse2004;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Return autocomplete results for a query string
  Future<Response> searchAutocompleteReadWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/search/autocomplete/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basic"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String id  (required):
  ///    
  /// Return autocomplete results for a query string
  Future<CredentialAutocomplete> searchAutocompleteRead(String id) async {
    Response response = await searchAutocompleteReadWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CredentialAutocomplete') as CredentialAutocomplete;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// We want facet_counts from the less-restricted queryset
  Future<Response> searchCredentialFacetsWithHttpInfo({ String ordering }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/search/credential/facets".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(ordering != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ordering", ordering));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basic"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String ordering :
  ///     Which field to use when ordering the results.
  /// We want facet_counts from the less-restricted queryset
  Future<InlineResponse2005> searchCredentialFacets({ String ordering }) async {
    Response response = await searchCredentialFacetsWithHttpInfo( ordering: ordering );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2005') as InlineResponse2005;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Provide credential search via Solr with both faceted (/facets) and unfaceted results
  Future<Response> searchCredentialListWithHttpInfo({ String ordering, String name, String inactive, String latest, String revoked, String category, int credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/search/credential".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(ordering != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ordering", ordering));
    }
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(inactive != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "inactive", inactive));
    }
    if(latest != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "latest", latest));
    }
    if(revoked != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "revoked", revoked));
    }
    if(category != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "category", category));
    }
    if(credentialTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "credential_type_id", credentialTypeId));
    }
    if(topicCredentialTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "topic_credential_type_id", topicCredentialTypeId));
    }
    if(issuerId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "issuer_id", issuerId));
    }
    if(topicId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "topic_id", topicId));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basic"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String ordering :
  ///     Which field to use when ordering the results.
  ///String name :
  ///     Filter credentials by related name or topic source ID
  ///String inactive :
  ///     Show inactive credentials
  ///String latest :
  ///     Show only latest credentials
  ///String revoked :
  ///     Show revoked credentials
  ///String category :
  ///     Filter by credential category. The category name and value should be joined by '::'
  ///int credentialTypeId :
  ///     Filter by Credential Type ID
  ///String topicCredentialTypeId :
  ///     Filter by any Credential Type ID owned by the Topic
  ///String issuerId :
  ///     Filter by Issuer ID
  ///String topicId :
  ///     Filter by Topic ID
  /// Provide credential search via Solr with both faceted (/facets) and unfaceted results
  Future<InlineResponse2005> searchCredentialList({ String ordering, String name, String inactive, String latest, String revoked, String category, int credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async {
    Response response = await searchCredentialListWithHttpInfo( ordering: ordering, name: name, inactive: inactive, latest: latest, revoked: revoked, category: category, credentialTypeId: credentialTypeId, topicCredentialTypeId: topicCredentialTypeId, issuerId: issuerId, topicId: topicId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2005') as InlineResponse2005;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Provide credential search via Solr with both faceted (/facets) and unfaceted results
  Future<Response> searchCredentialReadWithHttpInfo(String id, { String name, String inactive, String latest, String revoked, String category, String credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/search/credential/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(inactive != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "inactive", inactive));
    }
    if(latest != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "latest", latest));
    }
    if(revoked != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "revoked", revoked));
    }
    if(category != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "category", category));
    }
    if(credentialTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "credential_type_id", credentialTypeId));
    }
    if(topicCredentialTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "topic_credential_type_id", topicCredentialTypeId));
    }
    if(issuerId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "issuer_id", issuerId));
    }
    if(topicId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "topic_id", topicId));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basic"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String id  (required):
  ///    
  ///String name :
  ///     Filter credentials by related name or topic source ID
  ///String inactive :
  ///     Show inactive credentials
  ///String latest :
  ///     Show only latest credentials
  ///String revoked :
  ///     Show revoked credentials
  ///String category :
  ///     Filter by credential category. The category name and value should be joined by '::'
  ///String credentialTypeId :
  ///     Filter by Credential Type ID
  ///String topicCredentialTypeId :
  ///     Filter by any Credential Type ID owned by the Topic
  ///String issuerId :
  ///     Filter by Issuer ID
  ///String topicId :
  ///     Filter by Topic ID
  /// Provide credential search via Solr with both faceted (/facets) and unfaceted results
  Future<CredentialSearch> searchCredentialRead(String id, { String name, String inactive, String latest, String revoked, String category, String credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async {
    Response response = await searchCredentialReadWithHttpInfo(id,  name: name, inactive: inactive, latest: latest, revoked: revoked, category: category, credentialTypeId: credentialTypeId, topicCredentialTypeId: topicCredentialTypeId, issuerId: issuerId, topicId: topicId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CredentialSearch') as CredentialSearch;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// We want facet_counts from the less-restricted queryset
  Future<Response> searchCredentialTopicFacetsWithHttpInfo({ String ordering }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/search/credential/topic/facets".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(ordering != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ordering", ordering));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basic"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String ordering :
  ///     Which field to use when ordering the results.
  /// We want facet_counts from the less-restricted queryset
  Future<InlineResponse2006> searchCredentialTopicFacets({ String ordering }) async {
    Response response = await searchCredentialTopicFacetsWithHttpInfo( ordering: ordering );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2006') as InlineResponse2006;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> searchCredentialTopicListWithHttpInfo({ String ordering, String name, String inactive, String latest, String revoked, String category, String credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/search/credential/topic".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(ordering != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ordering", ordering));
    }
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(inactive != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "inactive", inactive));
    }
    if(latest != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "latest", latest));
    }
    if(revoked != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "revoked", revoked));
    }
    if(category != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "category", category));
    }
    if(credentialTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "credential_type_id", credentialTypeId));
    }
    if(topicCredentialTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "topic_credential_type_id", topicCredentialTypeId));
    }
    if(issuerId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "issuer_id", issuerId));
    }
    if(topicId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "topic_id", topicId));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basic"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String ordering :
  ///     Which field to use when ordering the results.
  ///String name :
  ///     Filter credentials by related name or topic source ID
  ///String inactive :
  ///     Show inactive credentials
  ///String latest :
  ///     Show only latest credentials
  ///String revoked :
  ///     Show revoked credentials
  ///String category :
  ///     Filter by credential category. The category name and value should be joined by '::'
  ///String credentialTypeId :
  ///     Filter by Credential Type ID
  ///String topicCredentialTypeId :
  ///     Filter by any Credential Type ID owned by the Topic
  ///String issuerId :
  ///     Filter by Issuer ID
  ///String topicId :
  ///     Filter by Topic ID
  /// 
  Future<InlineResponse2006> searchCredentialTopicList({ String ordering, String name, String inactive, String latest, String revoked, String category, String credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async {
    Response response = await searchCredentialTopicListWithHttpInfo( ordering: ordering, name: name, inactive: inactive, latest: latest, revoked: revoked, category: category, credentialTypeId: credentialTypeId, topicCredentialTypeId: topicCredentialTypeId, issuerId: issuerId, topicId: topicId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2006') as InlineResponse2006;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> searchCredentialTopicReadWithHttpInfo(String id, { String name, String inactive, String latest, String revoked, String category, String credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/search/credential/topic/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(inactive != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "inactive", inactive));
    }
    if(latest != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "latest", latest));
    }
    if(revoked != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "revoked", revoked));
    }
    if(category != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "category", category));
    }
    if(credentialTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "credential_type_id", credentialTypeId));
    }
    if(topicCredentialTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "topic_credential_type_id", topicCredentialTypeId));
    }
    if(issuerId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "issuer_id", issuerId));
    }
    if(topicId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "topic_id", topicId));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basic"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String id  (required):
  ///    
  ///String name :
  ///     Filter credentials by related name or topic source ID
  ///String inactive :
  ///     Show inactive credentials
  ///String latest :
  ///     Show only latest credentials
  ///String revoked :
  ///     Show revoked credentials
  ///String category :
  ///     Filter by credential category. The category name and value should be joined by '::'
  ///String credentialTypeId :
  ///     Filter by Credential Type ID
  ///String topicCredentialTypeId :
  ///     Filter by any Credential Type ID owned by the Topic
  ///String issuerId :
  ///     Filter by Issuer ID
  ///String topicId :
  ///     Filter by Topic ID
  /// 
  Future<CredentialTopicSearch> searchCredentialTopicRead(String id, { String name, String inactive, String latest, String revoked, String category, String credentialTypeId, String topicCredentialTypeId, String issuerId, String topicId }) async {
    Response response = await searchCredentialTopicReadWithHttpInfo(id,  name: name, inactive: inactive, latest: latest, revoked: revoked, category: category, credentialTypeId: credentialTypeId, topicCredentialTypeId: topicCredentialTypeId, issuerId: issuerId, topicId: topicId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'CredentialTopicSearch') as CredentialTopicSearch;
    } else {
      return null;
    }
  }

}
