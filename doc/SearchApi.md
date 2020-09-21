# orgbookapi.api.SearchApi

## Load the API package
```dart
import 'package:orgbookapi/api.dart';
```

All URIs are relative to *https://www.orgbook.gov.bc.ca/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchAutocompleteList**](SearchApi.md#searchAutocompleteList) | **GET** /search/autocomplete | 
[**searchAutocompleteRead**](SearchApi.md#searchAutocompleteRead) | **GET** /search/autocomplete/{id} | 
[**searchCredentialFacets**](SearchApi.md#searchCredentialFacets) | **GET** /search/credential/facets | 
[**searchCredentialList**](SearchApi.md#searchCredentialList) | **GET** /search/credential | 
[**searchCredentialRead**](SearchApi.md#searchCredentialRead) | **GET** /search/credential/{id} | 
[**searchCredentialTopicFacets**](SearchApi.md#searchCredentialTopicFacets) | **GET** /search/credential/topic/facets | 
[**searchCredentialTopicList**](SearchApi.md#searchCredentialTopicList) | **GET** /search/credential/topic | 
[**searchCredentialTopicRead**](SearchApi.md#searchCredentialTopicRead) | **GET** /search/credential/topic/{id} | 


# **searchAutocompleteList**
> InlineResponse2004 searchAutocompleteList(ordering, q, inactive, latest, revoked, category)



Return autocomplete results for a query string

### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = SearchApi();
var ordering = ordering_example; // String | Which field to use when ordering the results.
var q = q_example; // String | Query string
var inactive = inactive_example; // String | Show inactive credentials
var latest = latest_example; // String | Show only latest credentials
var revoked = revoked_example; // String | Show revoked credentials
var category = category_example; // String | Filter by credential category. The category name and value should be joined by '::'

try { 
    var result = api_instance.searchAutocompleteList(ordering, q, inactive, latest, revoked, category);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchAutocompleteList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **q** | **String**| Query string | [optional] 
 **inactive** | **String**| Show inactive credentials | [optional] [default to &quot;any&quot;]
 **latest** | **String**| Show only latest credentials | [optional] [default to &quot;true&quot;]
 **revoked** | **String**| Show revoked credentials | [optional] [default to &quot;false&quot;]
 **category** | **String**| Filter by credential category. The category name and value should be joined by &#39;::&#39; | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAutocompleteRead**
> CredentialAutocomplete searchAutocompleteRead(id)



Return autocomplete results for a query string

### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = SearchApi();
var id = id_example; // String | 

try { 
    var result = api_instance.searchAutocompleteRead(id);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchAutocompleteRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CredentialAutocomplete**](CredentialAutocomplete.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCredentialFacets**
> InlineResponse2005 searchCredentialFacets(ordering)



We want facet_counts from the less-restricted queryset

### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = SearchApi();
var ordering = ordering_example; // String | Which field to use when ordering the results.

try { 
    var result = api_instance.searchCredentialFacets(ordering);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCredentialFacets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCredentialList**
> InlineResponse2005 searchCredentialList(ordering, name, inactive, latest, revoked, category, credentialTypeId, topicCredentialTypeId, issuerId, topicId)



Provide credential search via Solr with both faceted (/facets) and unfaceted results

### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = SearchApi();
var ordering = ordering_example; // String | Which field to use when ordering the results.
var name = name_example; // String | Filter credentials by related name or topic source ID
var inactive = inactive_example; // String | Show inactive credentials
var latest = latest_example; // String | Show only latest credentials
var revoked = revoked_example; // String | Show revoked credentials
var category = category_example; // String | Filter by credential category. The category name and value should be joined by '::'
var credentialTypeId = 56; // int | Filter by Credential Type ID
var topicCredentialTypeId = topicCredentialTypeId_example; // String | Filter by any Credential Type ID owned by the Topic
var issuerId = issuerId_example; // String | Filter by Issuer ID
var topicId = topicId_example; // String | Filter by Topic ID

try { 
    var result = api_instance.searchCredentialList(ordering, name, inactive, latest, revoked, category, credentialTypeId, topicCredentialTypeId, issuerId, topicId);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCredentialList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **name** | **String**| Filter credentials by related name or topic source ID | [optional] 
 **inactive** | **String**| Show inactive credentials | [optional] [default to &quot;false&quot;]
 **latest** | **String**| Show only latest credentials | [optional] [default to &quot;true&quot;]
 **revoked** | **String**| Show revoked credentials | [optional] [default to &quot;false&quot;]
 **category** | **String**| Filter by credential category. The category name and value should be joined by &#39;::&#39; | [optional] 
 **credentialTypeId** | **int**| Filter by Credential Type ID | [optional] 
 **topicCredentialTypeId** | **String**| Filter by any Credential Type ID owned by the Topic | [optional] 
 **issuerId** | **String**| Filter by Issuer ID | [optional] 
 **topicId** | **String**| Filter by Topic ID | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCredentialRead**
> CredentialSearch searchCredentialRead(id, name, inactive, latest, revoked, category, credentialTypeId, topicCredentialTypeId, issuerId, topicId)



Provide credential search via Solr with both faceted (/facets) and unfaceted results

### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = SearchApi();
var id = id_example; // String | 
var name = name_example; // String | Filter credentials by related name or topic source ID
var inactive = inactive_example; // String | Show inactive credentials
var latest = latest_example; // String | Show only latest credentials
var revoked = revoked_example; // String | Show revoked credentials
var category = category_example; // String | Filter by credential category. The category name and value should be joined by '::'
var credentialTypeId = credentialTypeId_example; // String | Filter by Credential Type ID
var topicCredentialTypeId = topicCredentialTypeId_example; // String | Filter by any Credential Type ID owned by the Topic
var issuerId = issuerId_example; // String | Filter by Issuer ID
var topicId = topicId_example; // String | Filter by Topic ID

try { 
    var result = api_instance.searchCredentialRead(id, name, inactive, latest, revoked, category, credentialTypeId, topicCredentialTypeId, issuerId, topicId);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCredentialRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **name** | **String**| Filter credentials by related name or topic source ID | [optional] 
 **inactive** | **String**| Show inactive credentials | [optional] [default to &quot;false&quot;]
 **latest** | **String**| Show only latest credentials | [optional] [default to &quot;true&quot;]
 **revoked** | **String**| Show revoked credentials | [optional] [default to &quot;false&quot;]
 **category** | **String**| Filter by credential category. The category name and value should be joined by &#39;::&#39; | [optional] 
 **credentialTypeId** | **String**| Filter by Credential Type ID | [optional] 
 **topicCredentialTypeId** | **String**| Filter by any Credential Type ID owned by the Topic | [optional] 
 **issuerId** | **String**| Filter by Issuer ID | [optional] 
 **topicId** | **String**| Filter by Topic ID | [optional] 

### Return type

[**CredentialSearch**](CredentialSearch.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCredentialTopicFacets**
> InlineResponse2006 searchCredentialTopicFacets(ordering)



We want facet_counts from the less-restricted queryset

### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = SearchApi();
var ordering = ordering_example; // String | Which field to use when ordering the results.

try { 
    var result = api_instance.searchCredentialTopicFacets(ordering);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCredentialTopicFacets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCredentialTopicList**
> InlineResponse2006 searchCredentialTopicList(ordering, name, inactive, latest, revoked, category, credentialTypeId, topicCredentialTypeId, issuerId, topicId)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = SearchApi();
var ordering = ordering_example; // String | Which field to use when ordering the results.
var name = name_example; // String | Filter credentials by related name or topic source ID
var inactive = inactive_example; // String | Show inactive credentials
var latest = latest_example; // String | Show only latest credentials
var revoked = revoked_example; // String | Show revoked credentials
var category = category_example; // String | Filter by credential category. The category name and value should be joined by '::'
var credentialTypeId = credentialTypeId_example; // String | Filter by Credential Type ID
var topicCredentialTypeId = topicCredentialTypeId_example; // String | Filter by any Credential Type ID owned by the Topic
var issuerId = issuerId_example; // String | Filter by Issuer ID
var topicId = topicId_example; // String | Filter by Topic ID

try { 
    var result = api_instance.searchCredentialTopicList(ordering, name, inactive, latest, revoked, category, credentialTypeId, topicCredentialTypeId, issuerId, topicId);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCredentialTopicList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **name** | **String**| Filter credentials by related name or topic source ID | [optional] 
 **inactive** | **String**| Show inactive credentials | [optional] [default to &quot;false&quot;]
 **latest** | **String**| Show only latest credentials | [optional] [default to &quot;true&quot;]
 **revoked** | **String**| Show revoked credentials | [optional] [default to &quot;false&quot;]
 **category** | **String**| Filter by credential category. The category name and value should be joined by &#39;::&#39; | [optional] 
 **credentialTypeId** | **String**| Filter by Credential Type ID | [optional] 
 **topicCredentialTypeId** | **String**| Filter by any Credential Type ID owned by the Topic | [optional] 
 **issuerId** | **String**| Filter by Issuer ID | [optional] 
 **topicId** | **String**| Filter by Topic ID | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCredentialTopicRead**
> CredentialTopicSearch searchCredentialTopicRead(id, name, inactive, latest, revoked, category, credentialTypeId, topicCredentialTypeId, issuerId, topicId)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = SearchApi();
var id = id_example; // String | 
var name = name_example; // String | Filter credentials by related name or topic source ID
var inactive = inactive_example; // String | Show inactive credentials
var latest = latest_example; // String | Show only latest credentials
var revoked = revoked_example; // String | Show revoked credentials
var category = category_example; // String | Filter by credential category. The category name and value should be joined by '::'
var credentialTypeId = credentialTypeId_example; // String | Filter by Credential Type ID
var topicCredentialTypeId = topicCredentialTypeId_example; // String | Filter by any Credential Type ID owned by the Topic
var issuerId = issuerId_example; // String | Filter by Issuer ID
var topicId = topicId_example; // String | Filter by Topic ID

try { 
    var result = api_instance.searchCredentialTopicRead(id, name, inactive, latest, revoked, category, credentialTypeId, topicCredentialTypeId, issuerId, topicId);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCredentialTopicRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **name** | **String**| Filter credentials by related name or topic source ID | [optional] 
 **inactive** | **String**| Show inactive credentials | [optional] [default to &quot;false&quot;]
 **latest** | **String**| Show only latest credentials | [optional] [default to &quot;true&quot;]
 **revoked** | **String**| Show revoked credentials | [optional] [default to &quot;false&quot;]
 **category** | **String**| Filter by credential category. The category name and value should be joined by &#39;::&#39; | [optional] 
 **credentialTypeId** | **String**| Filter by Credential Type ID | [optional] 
 **topicCredentialTypeId** | **String**| Filter by any Credential Type ID owned by the Topic | [optional] 
 **issuerId** | **String**| Filter by Issuer ID | [optional] 
 **topicId** | **String**| Filter by Topic ID | [optional] 

### Return type

[**CredentialTopicSearch**](CredentialTopicSearch.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

