package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.os.Handler;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkCompositeHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;

/* JADX INFO: compiled from: AdobeDCXCompositeXfer.java */
/* JADX INFO: loaded from: classes.dex */
class ComponentManagerWrapper {
    AdobeNetworkCompositeHttpTaskHandle compRequest;
    IAdobeDCXComponentManagerProtocol componentManager;
    Handler componentManagerHandler;

    ComponentManagerWrapper(IAdobeSessionProtocol iAdobeSessionProtocol, AdobeNetworkCompositeHttpTaskHandle adobeNetworkCompositeHttpTaskHandle) {
        this.componentManager = iAdobeSessionProtocol.getComponentManager();
        this.componentManagerHandler = iAdobeSessionProtocol.getComponentManagerHandler();
        this.compRequest = adobeNetworkCompositeHttpTaskHandle;
    }

    public void dispatchRunnable(Runnable runnable) {
        if (this.componentManagerHandler != null) {
            this.componentManagerHandler.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Exception e2) {
            AdobeLogger.log(Level.ERROR, "ComponentManagerWrapper", "Error::ComponentManager method invocation : " + e2.getMessage(), e2);
            for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
                AdobeLogger.log(Level.DEBUG, "CompMgeWrapper:StackTrace:", stackTraceElement.toString());
            }
        }
    }

    public void requestFileToDownloadComponent(final AdobeDCXComponent adobeDCXComponent, final AdobeDCXComposite adobeDCXComposite, final String str, final IAdobeDCXReadyWithDownloadFileCompletionHandler iAdobeDCXReadyWithDownloadFileCompletionHandler, final AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler iCancellationHandler) {
        dispatchRunnable(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.ComponentManagerWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                ComponentManagerWrapper.this.compRequest.addCancellationHandler(iCancellationHandler);
                ComponentManagerWrapper.this.componentManager.requestFileToDownloadComponent(adobeDCXComponent, adobeDCXComposite, str, iAdobeDCXReadyWithDownloadFileCompletionHandler);
            }
        });
    }

    public void didDownloadComponent(final AdobeDCXComponent adobeDCXComponent, final AdobeDCXComposite adobeDCXComposite, final String str, final AdobeCSDKException adobeCSDKException) {
        dispatchRunnable(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.ComponentManagerWrapper.2
            @Override // java.lang.Runnable
            public void run() {
                ComponentManagerWrapper.this.componentManager.didDownloadComponent(adobeDCXComponent, adobeDCXComposite, str, adobeCSDKException);
            }
        });
    }

    public void requestFileToUploadComponent(final AdobeDCXComponent adobeDCXComponent, final AdobeDCXComposite adobeDCXComposite, final String str, final IAdobeDCXReadyWithUploadFileCompletionHandler iAdobeDCXReadyWithUploadFileCompletionHandler, final AdobeNetworkCompositeHttpTaskHandle.ICancellationHandler iCancellationHandler) {
        dispatchRunnable(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.ComponentManagerWrapper.3
            @Override // java.lang.Runnable
            public void run() {
                ComponentManagerWrapper.this.compRequest.addCancellationHandler(iCancellationHandler);
                ComponentManagerWrapper.this.componentManager.requestFileToUploadComponent(adobeDCXComponent, adobeDCXComposite, str, iAdobeDCXReadyWithUploadFileCompletionHandler);
            }
        });
    }

    public void didUploadComponent(final AdobeDCXComponent adobeDCXComponent, final AdobeDCXComposite adobeDCXComposite, final String str, final String str2, final AdobeCSDKException adobeCSDKException) {
        dispatchRunnable(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.ComponentManagerWrapper.4
            @Override // java.lang.Runnable
            public void run() {
                ComponentManagerWrapper.this.componentManager.didUploadComponent(adobeDCXComponent, adobeDCXComposite, str, str2, adobeCSDKException);
            }
        });
    }
}
