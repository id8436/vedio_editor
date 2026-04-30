package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXComponentManagerProtocol {
    void didDownloadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, AdobeCSDKException adobeCSDKException);

    void didUploadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, String str2, AdobeCSDKException adobeCSDKException);

    void requestFileToDownloadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, IAdobeDCXReadyWithDownloadFileCompletionHandler iAdobeDCXReadyWithDownloadFileCompletionHandler);

    void requestFileToUploadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, IAdobeDCXReadyWithUploadFileCompletionHandler iAdobeDCXReadyWithUploadFileCompletionHandler);
}
