# orgbookapi.api.CredentialApi

## Load the API package
```dart
import 'package:orgbookapi/api.dart';
```

All URIs are relative to *https://www.orgbook.gov.bc.ca/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**credentialGetLatest**](CredentialApi.md#credentialGetLatest) | **GET** /credential/{id}/latest | 
[**credentialList**](CredentialApi.md#credentialList) | **GET** /credential | 
[**credentialRead**](CredentialApi.md#credentialRead) | **GET** /credential/{id} | 
[**credentialRetrieveFormatted**](CredentialApi.md#credentialRetrieveFormatted) | **GET** /credential/{id}/formatted | 
[**credentialVerify**](CredentialApi.md#credentialVerify) | **GET** /credential/{id}/verify | 


# **credentialGetLatest**
> Credential credentialGetLatest(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = CredentialApi();
var id = 56; // int | A unique integer value identifying this credential.

try { 
    var result = api_instance.credentialGetLatest(id);
    print(result);
} catch (e) {
    print("Exception when calling CredentialApi->credentialGetLatest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this credential. | 

### Return type

[**Credential**](Credential.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialList**
> InlineResponse200 credentialList()



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = CredentialApi();

try { 
    var result = api_instance.credentialList();
    print(result);
} catch (e) {
    print("Exception when calling CredentialApi->credentialList: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialRead**
> Credential credentialRead(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = CredentialApi();
var id = 56; // int | A unique integer value identifying this credential.

try { 
    var result = api_instance.credentialRead(id);
    print(result);
} catch (e) {
    print("Exception when calling CredentialApi->credentialRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this credential. | 

### Return type

[**Credential**](Credential.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialRetrieveFormatted**
> Credential credentialRetrieveFormatted(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = CredentialApi();
var id = 56; // int | A unique integer value identifying this credential.

try { 
    var result = api_instance.credentialRetrieveFormatted(id);
    print(result);
} catch (e) {
    print("Exception when calling CredentialApi->credentialRetrieveFormatted: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this credential. | 

### Return type

[**Credential**](Credential.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **credentialVerify**
> Credential credentialVerify(id)



### Example 
```dart
import 'package:orgbookapi/api.dart';
// TODO Configure HTTP basic authorization: basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basic').password = 'YOUR_PASSWORD';

var api_instance = CredentialApi();
var id = 56; // int | A unique integer value identifying this credential.

try { 
    var result = api_instance.credentialVerify(id);
    print(result);
} catch (e) {
    print("Exception when calling CredentialApi->credentialVerify: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this credential. | 

### Return type

[**Credential**](Credential.md)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

