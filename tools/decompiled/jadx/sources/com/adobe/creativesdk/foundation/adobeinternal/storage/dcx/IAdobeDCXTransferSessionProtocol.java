package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.os.Handler;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeDCXTransferSessionProtocol {
    boolean archiveDCXComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException;

    boolean createComposite(AdobeDCXComposite adobeDCXComposite, boolean z) throws AdobeCSDKException;

    AdobeNetworkHttpTaskHandle deleteComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler);

    AdobeNetworkHttpTaskHandle deleteComposite(AdobeDCXComposite adobeDCXComposite, IAdobeDCXCompositeRequestCompletionHandler iAdobeDCXCompositeRequestCompletionHandler, Handler handler);

    boolean deleteComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException;

    AdobeNetworkHttpTaskHandle downloadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler);

    AdobeNetworkHttpTaskHandle downloadFromHref(String str, AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str2, IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler);

    IAdobeDCXComponentManagerProtocol getComponentManager();

    Handler getComponentManagerHandler();

    AdobeNetworkHttpTaskHandle getHeaderInfoForManifestOfComposite(AdobeDCXComposite adobeDCXComposite, IAdobeDCXResourceRequestCompletionHandler iAdobeDCXResourceRequestCompletionHandler, Handler handler);

    AdobeStorageResourceItem getHeaderInfoForManifestOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException;

    AdobeDCXManifest getManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException;

    AdobeDCXManifest getManifest(AdobeDCXManifest adobeDCXManifest, String str, AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException;

    String getSyncGroupNameForComposite(AdobeDCXComposite adobeDCXComposite);

    boolean leaveSharedComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeCSDKException;

    AdobeStorageResourceItem resourceForManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite);

    void setComponentManager(IAdobeDCXComponentManagerProtocol iAdobeDCXComponentManagerProtocol);

    void setComponentManagerHandler(Handler handler);

    AdobeDCXManifest updateManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite, boolean z) throws AdobeCSDKException;

    AdobeNetworkHttpTaskHandle updateManifest(AdobeDCXManifest adobeDCXManifest, AdobeDCXComposite adobeDCXComposite, boolean z, IAdobeDCXManifestRequestCompletionHandler iAdobeDCXManifestRequestCompletionHandler, Handler handler);

    AdobeNetworkHttpTaskHandle uploadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, boolean z, IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler, Handler handler);

    AdobeNetworkHttpTaskHandle uploadServerAssetWithHref(String str, AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, boolean z, Handler handler, IAdobeDCXComponentRequestCompletionHandler iAdobeDCXComponentRequestCompletionHandler);
}
