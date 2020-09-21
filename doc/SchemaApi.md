# orgbookapi.api.SchemaApi

## Load the API package
```dart
import 'package:orgbookapi/api.dart';
```

All URIs are relative to *https://www.orgbook.gov.bc.ca/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**schemaList**](SchemaApi.md#schemaList) | **GET** /schema | 
[**schemaRead**](SchemaApi.md#schemaRead) | **GET** /schema/{id} | 


# **schemaList**
> InlineResponse2003 schemaList(id, name, version, originDid)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = SchemaApi();
var id = 8.14; // num | 
var name = name_example; // String | 
var version = version_example; // String | 
var originDid = originDid_example; // String | 

try { 
    var result = api_instance.schemaList(id, name, version, originDid);
    print(result);
} catch (e) {
    print("Exception when calling SchemaApi->schemaList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**|  | [optional] 
 **name** | **String**|  | [optional] 
 **version** | **String**|  | [optional] 
 **originDid** | **String**|  | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **schemaRead**
> Schema schemaRead(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = SchemaApi();
var id = 56; // int | A unique integer value identifying this schema.

try { 
    var result = api_instance.schemaRead(id);
    print(result);
} catch (e) {
    print("Exception when calling SchemaApi->schemaRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this schema. | 

### Return type

[**Schema**](Schema.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

