package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

/* JADX INFO: loaded from: classes.dex */
public enum AdobeCommunityErrorCode {
    AdobeCommunityErrorUnexpectedResponse(2),
    AdobeCommunityErrorFileReadFailure(8),
    AdobeCommunityErrorFileWriteFailure(9),
    AdobeCommunityErrorMissingJSONData(11),
    AdobeCommunityErrorNotEntitledToService(14),
    AdobeCommunityErrorInvalidPublicationRecord(15),
    AdobeCommunityErrorInvalidJSONRepresentation(16),
    AdobeCommunityErrorMissingCommunityID(17),
    AdobeCommunityErrorSizeExceedsAllowedValue(18),
    AdobeCommunityErrorQueryExceedsAllowedValue(18),
    AdobeCommunityErrorQueryURLEncodingFails(19),
    AdobeCommunityErrorNameCantBeEmptyOrNull(20),
    AdobeCommunityErrorAssetNotAttachedToCloud(21);

    private int _val;

    AdobeCommunityErrorCode(int i) {
        this._val = i;
    }

    public int getValue() {
        return this._val;
    }
}
