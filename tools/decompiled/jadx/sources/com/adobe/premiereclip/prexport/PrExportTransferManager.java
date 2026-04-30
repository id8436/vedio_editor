package com.adobe.premiereclip.prexport;

import android.os.Handler;
import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import com.adobe.premiereclip.metrics.Metrics;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class PrExportTransferManager {
    private Handler mHandler;
    private TransferListener transferListener;
    private boolean exportCancelled = false;
    private AdobeAssetFile upload = null;
    private float uploadProgress = 0.0f;
    private ArrayList<PrExportTransfer> currentTransfers = new ArrayList<>();
    private int pendingTransfers = 0;
    private boolean exportResult = true;

    public interface TransferListener {
        void onCopyAllComplete(boolean z);

        void onItemExistsAtDestination(boolean z, PrExportTransfer prExportTransfer, AdobeDCXComponent adobeDCXComponent);

        void onUploadComplete(boolean z);

        void onUploadProgress();
    }

    public PrExportTransferManager(TransferListener transferListener, Handler handler) {
        this.transferListener = transferListener;
        this.mHandler = handler;
        Metrics.sharedInstance().didShowPremiereProExportView();
    }

    public float getMediaTransferProgress() {
        float f2;
        float progress = 0.0f;
        int size = this.currentTransfers.size();
        if (size <= 0) {
            f2 = 0.0f;
        } else {
            Iterator<PrExportTransfer> it = this.currentTransfers.iterator();
            while (true) {
                f2 = progress;
                if (!it.hasNext()) {
                    break;
                }
                PrExportTransfer next = it.next();
                if (next.getResult()) {
                    progress = (float) (((double) f2) + 100.0d);
                } else {
                    progress = next.getProgress() + f2;
                }
            }
        }
        return f2 / size;
    }

    public float getUploadTransferProgress() {
        return this.uploadProgress;
    }

    public void cancelAllTransfers() {
        if (this.currentTransfers.size() > 0) {
            Iterator<PrExportTransfer> it = this.currentTransfers.iterator();
            while (it.hasNext()) {
                it.next().cancelTransfer();
            }
        }
        if (this.upload != null) {
            this.upload.cancelCreationRequest();
        }
    }

    public void itemExistsAtDestination(final PrExportTransfer prExportTransfer, final AdobeDCXComponent adobeDCXComponent) {
        AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref("files/" + prExportTransfer.getTargetFolder() + URIUtil.SLASH + prExportTransfer.getTargetName());
        AdobeStorageSession adobeStorageSession = (AdobeStorageSession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
        Log.d("PrExportMgr", "itemexistsatdest - dest resource path : " + adobeStorageResourceItemResourceFromHref.getPath());
        adobeStorageSession.getHeaderInfoForFile(adobeStorageResourceItemResourceFromHref, new IAdobeStorageResourceRequestCompletionHandler() { // from class: com.adobe.premiereclip.prexport.PrExportTransferManager.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageResourceRequestCompletionHandler
            public void onComplete(AdobeStorageResourceItem adobeStorageResourceItem) {
                Log.d("PrExportMgr", "itemexistsatdest - got item path and md5 : " + adobeStorageResourceItem.getPath() + "   " + adobeStorageResourceItem.getMd5());
                if (adobeStorageResourceItem.getMd5() == null || adobeStorageResourceItem.getMd5().equals("")) {
                    PrExportTransferManager.this.transferListener.onItemExistsAtDestination(false, prExportTransfer, adobeDCXComponent);
                } else {
                    Log.d("PrExportManager", "file already exists at CC");
                    PrExportTransferManager.this.transferListener.onItemExistsAtDestination(true, prExportTransfer, adobeDCXComponent);
                }
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                adobeAssetException.printStackTrace();
                Log.d("PrExportMgr", "itemexistsatdestination - error at getheaderinfo : " + adobeAssetException.getHttpStatusCode() + "  error message : " + adobeAssetException.getMessage());
                PrExportTransferManager.this.transferListener.onItemExistsAtDestination(false, prExportTransfer, adobeDCXComponent);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                Log.d("PrExportMgr", "itemexistsatdestination - progress at getheaderinfo : " + String.valueOf(d2));
            }
        });
    }

    public void upload(final PrExportTransfer prExportTransfer) {
        try {
            final URL url = new File(prExportTransfer.getSourcePath()).toURI().toURL();
            Log.d("PrExportTransferMgr", "xml local file url : " + url.toString());
            AdobeAssetFolder folderFromHref = AdobeAssetFolder.getFolderFromHref(URI.create(getUrlEncodedPath(prExportTransfer.getTargetFolder())));
            if (folderFromHref != null) {
                Log.d("PrExportTransferMgr", "Starting xml upload to CC");
                this.upload = AdobeAssetFile.create(prExportTransfer.getTargetName(), folderFromHref, url, prExportTransfer.getTargetType(), new IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException>() { // from class: com.adobe.premiereclip.prexport.PrExportTransferManager.2
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                        Log.d("PrExportTransferMgr", "xml upload cancelled");
                        prExportTransfer.setResult(false);
                        PrExportTransferManager.this.transferListener.onUploadComplete(false);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(AdobeAssetFile adobeAssetFile) {
                        Log.d("PrExportTransferMgr", "xml upload success");
                        prExportTransfer.setResult(true);
                        PrExportTransferManager.this.transferListener.onUploadComplete(true);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeCSDKException adobeCSDKException) {
                        AdobeAssetException adobeAssetException = (AdobeAssetException) adobeCSDKException;
                        Log.d("PrExportTransferMgr", "xml upload error : " + adobeAssetException.getHttpStatusCode());
                        if (adobeAssetException.getHttpStatusCode().intValue() == 409) {
                            Log.d("PrExportTransferMgr", "xml already exists, updating it");
                            PrExportTransferManager.this.upload.update(url, prExportTransfer.getTargetType(), new IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException>() { // from class: com.adobe.premiereclip.prexport.PrExportTransferManager.2.1
                                @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                                public void onCancellation() {
                                    Log.d("PrExportTransferMgr", "xml update cancelled");
                                    prExportTransfer.setResult(false);
                                    PrExportTransferManager.this.transferListener.onUploadComplete(false);
                                }

                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                public void onCompletion(AdobeAssetFile adobeAssetFile) {
                                    Log.d("PrExportTransferMgr", "xml update success");
                                    prExportTransfer.setResult(true);
                                    PrExportTransferManager.this.transferListener.onUploadComplete(true);
                                }

                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                public void onError(AdobeCSDKException adobeCSDKException2) {
                                    AdobeAssetException adobeAssetException2 = (AdobeAssetException) adobeCSDKException2;
                                    if (adobeAssetException2.getHttpStatusCode().intValue() != 200) {
                                        Log.d("PrExportTransferMgr", "xml update error : " + adobeAssetException2.getHttpStatusCode());
                                        prExportTransfer.setResult(false);
                                        PrExportTransferManager.this.transferListener.onUploadComplete(false);
                                    } else {
                                        Log.d("PrExportTransferMgr", "xml update success");
                                        prExportTransfer.setResult(true);
                                        PrExportTransferManager.this.transferListener.onUploadComplete(true);
                                    }
                                }

                                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                                public void onProgress(double d2) {
                                    PrExportTransferManager.this.uploadProgress = (float) d2;
                                    PrExportTransferManager.this.transferListener.onUploadProgress();
                                }
                            }, PrExportTransferManager.this.mHandler);
                        } else {
                            prExportTransfer.setResult(false);
                            PrExportTransferManager.this.transferListener.onUploadComplete(false);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                        PrExportTransferManager.this.uploadProgress = (float) d2;
                        PrExportTransferManager.this.transferListener.onUploadProgress();
                    }
                }, this.mHandler);
            } else {
                Log.d("PrExportTransferMgr", "failed to get target folder from CC");
                prExportTransfer.setResult(false);
                this.transferListener.onUploadComplete(false);
            }
        } catch (MalformedURLException e2) {
            Log.d("PrExportTransferMgr", "localURL not formed properly");
            e2.printStackTrace();
            this.transferListener.onUploadComplete(false);
        }
    }

    public void copyAll(ArrayList<PrExportTransfer> arrayList) {
        this.currentTransfers = arrayList;
        this.pendingTransfers = arrayList.size();
        this.exportResult = true;
        Log.d("PrExportTransferMgr", "copyall - remaining transfers : " + String.valueOf(this.pendingTransfers));
        if (this.pendingTransfers == 0) {
            this.transferListener.onCopyAllComplete(this.exportResult);
            return;
        }
        Iterator<PrExportTransfer> it = this.currentTransfers.iterator();
        while (it.hasNext()) {
            copy(it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyOnCompletion(boolean z) {
        if (this.exportResult) {
            this.exportResult = z;
        }
        this.pendingTransfers--;
        Log.d("PrExportTransfer", "transfers left : " + this.pendingTransfers);
        if (this.pendingTransfers == 0) {
            this.currentTransfers.clear();
            this.transferListener.onCopyAllComplete(this.exportResult);
        }
    }

    private void copy(final PrExportTransfer prExportTransfer) {
        if (prExportTransfer != null) {
            final AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(prExportTransfer.getSourcePath());
            final AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref2 = AdobeStorageResourceItem.resourceFromHref("files/" + prExportTransfer.getTargetFolder() + URIUtil.SLASH + prExportTransfer.getTargetName());
            final AdobeStorageSession adobeStorageSession = (AdobeStorageSession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
            prExportTransfer.setRequest(adobeStorageSession.copyFile(adobeStorageResourceItemResourceFromHref, adobeStorageResourceItemResourceFromHref2, true, new IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeAssetException>() { // from class: com.adobe.premiereclip.prexport.PrExportTransferManager.3
                @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                public void onCancellation() {
                    Log.d("PrExportTransferMgr", "media server-to-server copy cancelled for " + prExportTransfer.getSourcePath());
                    prExportTransfer.setResult(false);
                    PrExportTransferManager.this.copyOnCompletion(false);
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem) {
                    Log.d("PrExportTransferMgr", "media server-to-server copy success for " + prExportTransfer.getSourcePath());
                    prExportTransfer.setResult(true);
                    PrExportTransferManager.this.copyOnCompletion(true);
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeAssetException adobeAssetException) {
                    Log.d("PrExportTransferMgr", "media server-to-server copy error : " + adobeAssetException.getHttpStatusCode());
                    if (adobeAssetException.getHttpStatusCode().intValue() == 409) {
                        prExportTransfer.setRequest(adobeStorageSession.copyFile(adobeStorageResourceItemResourceFromHref, adobeStorageResourceItemResourceFromHref2, false, new IAdobeGenericRequestCallback<AdobeStorageResourceItem, AdobeAssetException>() { // from class: com.adobe.premiereclip.prexport.PrExportTransferManager.3.1
                            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                            public void onCancellation() {
                                Log.d("PrExportTransferMgr", "media server-to-server copy cancelled for " + prExportTransfer.getSourcePath());
                                prExportTransfer.setResult(false);
                                PrExportTransferManager.this.copyOnCompletion(false);
                            }

                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem) {
                                Log.d("PrExportTransferMgr", "media server-to-server copy success for " + prExportTransfer.getSourcePath());
                                PrExportTransferManager.this.transferListener.onUploadProgress();
                                prExportTransfer.setResult(true);
                                PrExportTransferManager.this.copyOnCompletion(true);
                            }

                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(AdobeAssetException adobeAssetException2) {
                                Log.d("PrExportTransferMgr", "media server-to-server copy error : " + adobeAssetException2.getHttpStatusCode());
                                prExportTransfer.setResult(false);
                                PrExportTransferManager.this.copyOnCompletion(false);
                            }

                            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                            public void onProgress(double d2) {
                                Log.d("PrExportTransferMgr", "media server-to-server copy progess is " + String.valueOf(d2));
                                PrExportTransferManager.this.transferListener.onUploadProgress();
                            }
                        }));
                    } else {
                        prExportTransfer.setResult(false);
                        PrExportTransferManager.this.copyOnCompletion(false);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                    Log.d("PrExportTransferMgr", "media server-to-server copy progess is " + String.valueOf(d2));
                }
            }));
        }
    }

    private String getUrlEncodedPath(String str) {
        if (str.contains(" ")) {
            return str.replaceAll(" ", "%20");
        }
        return str;
    }
}
