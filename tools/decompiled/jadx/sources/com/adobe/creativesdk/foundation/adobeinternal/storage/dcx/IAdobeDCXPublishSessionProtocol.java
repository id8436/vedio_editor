package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.os.Handler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.cloudupload.IAdobeCSDKCloudUploadService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXPublishSessionProtocol {
    AdobeNetworkHttpTaskHandle getPublishHrefOfComposite(AdobeDCXComposite adobeDCXComposite, IAdobePublicationRecordProtocol iAdobePublicationRecordProtocol, AdobeDCXComposite adobeDCXComposite2, Handler handler, IAdobeDCXPublishHrefCompletionHandler iAdobeDCXPublishHrefCompletionHandler);

    String getPublishedAssetIdFromAssetHref(String str);

    AdobeNetworkHttpTaskHandle publishCompositeUploadedTo(String str, String str2, JSONObject jSONObject, Handler handler, IAdobeDCXPublishHrefCompletionHandler iAdobeDCXPublishHrefCompletionHandler);

    void setUploadService(IAdobeCSDKCloudUploadService iAdobeCSDKCloudUploadService);

    AdobeNetworkHttpTaskHandle updateCompositePublishedAt(String str, JSONObject jSONObject, Handler handler, IAdobeDCXPublishHrefCompletionHandler iAdobeDCXPublishHrefCompletionHandler);

    AdobeNetworkHttpTaskHandle updatePublicationRecordData(JSONObject jSONObject, AdobeDCXCompositeBranch adobeDCXCompositeBranch, Handler handler, IAdobeDCXPublicationRecordDataCompletionHandler iAdobeDCXPublicationRecordDataCompletionHandler);
}
