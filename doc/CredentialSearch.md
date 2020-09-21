# orgbookapi.model.CredentialSearch

## Load the model package
```dart
import 'package:orgbookapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] [readonly] 
**createTimestamp** | [**DateTime**](DateTime.md) |  | [optional] [readonly] 
**updateTimestamp** | [**DateTime**](DateTime.md) |  | [optional] [readonly] 
**effectiveDate** | [**DateTime**](DateTime.md) |  | [optional] [readonly] 
**inactive** | **bool** |  | [optional] [readonly] 
**latest** | **bool** |  | [optional] [readonly] 
**revoked** | **bool** |  | [optional] [readonly] 
**revokedDate** | [**DateTime**](DateTime.md) |  | [optional] [readonly] 
**credentialSet** | [**CredentialSet**](CredentialSet.md) |  | 
**credentialType** | [**CredentialType**](CredentialType.md) |  | 
**addresses** | [**List&lt;CredentialAddress&gt;**](CredentialAddress.md) |  | [default to const []]
**attributes** | [**List&lt;CredentialAttribute&gt;**](CredentialAttribute.md) |  | [default to const []]
**names** | [**List&lt;CredentialName&gt;**](CredentialName.md) |  | [default to const []]
**topic** | [**CredentialNamedTopic**](CredentialNamedTopic.md) |  | 
**relatedTopics** | [**List&lt;CredentialNamedTopic&gt;**](CredentialNamedTopic.md) |  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


