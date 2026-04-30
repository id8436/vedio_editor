package com.adobe.premiereclip.sharing;

import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionQuotaCallback;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.sharing.SharingManager;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class CreativeCloudExport {
    private SharingManager.SharingComponentListener listener;
    private Handler mHandler = new Handler();
    private AdobeAssetFile upload = null;

    public void cancelUpload() {
        if (this.upload != null) {
            this.upload.cancelCreationRequest();
        }
    }

    public void upload(final Uri uri, final long j, SharingManager.SharingComponentListener sharingComponentListener) {
        this.listener = sharingComponentListener;
        ((AdobeStorageSession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage)).getQuotaInformationOnCompletion(new IAdobeStorageSessionQuotaCallback() { // from class: com.adobe.premiereclip.sharing.CreativeCloudExport.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionQuotaCallback
            public void onCompletion(Number number, Number number2, Number number3) {
                double d2 = j / 1.073741824E9d;
                Log.i("CreativeCloudExport", "Transfer size and available size in GB : " + String.valueOf(d2) + "  " + String.valueOf(number2.doubleValue()));
                if (number2.doubleValue() >= d2) {
                    CreativeCloudExport.this.userHasEnoughSpaceForMediaOnCompletion(uri, true);
                } else {
                    Log.i("CreativeCloudExport", "not enough space in CC for transfer");
                    CreativeCloudExport.this.userHasEnoughSpaceForMediaOnCompletion(uri, false);
                }
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
                Log.i("CreativeCloudExport", "unable to get CC quota");
                CreativeCloudExport.this.userHasEnoughSpaceForMediaOnCompletion(uri, true);
            }
        }, this.mHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void userHasEnoughSpaceForMediaOnCompletion(Uri uri, boolean z) {
        if (!z) {
            if (this.listener != null) {
                this.listener.onCompleted(false, PremiereClipApplication.getContext().getResources().getString(R.string.not_enough_space_cc_upload));
                return;
            }
            return;
        }
        try {
            final URL url = new URI(uri.toString()).toURL();
            Log.i("CreativeCloudExport", "local file url : " + url.toString());
            String strEscapeAssetName = AdobeStorageResourceItem.escapeAssetName("Premiere Clip");
            Log.i("CreativeCloudExport", strEscapeAssetName);
            AdobeAssetFolder folderFromHref = AdobeAssetFolder.getFolderFromHref(URI.create(strEscapeAssetName));
            if (folderFromHref != null) {
                Log.i("CreativeCloudExport", "Starting media upload to CC");
                this.upload = AdobeAssetFile.create(uri.getLastPathSegment(), folderFromHref, url, "video/mp4", new IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException>() { // from class: com.adobe.premiereclip.sharing.CreativeCloudExport.2
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                        Log.i("CreativeCloudExport", "media upload cancelled");
                        if (CreativeCloudExport.this.listener != null) {
                            CreativeCloudExport.this.listener.onCompleted(false, PremiereClipApplication.getContext().getString(R.string.cc_media_upload_cancelled));
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(AdobeAssetFile adobeAssetFile) {
                        Log.i("CreativeCloudExport", "media upload success");
                        if (CreativeCloudExport.this.listener != null) {
                            CreativeCloudExport.this.listener.onCompleted(true, null);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeCSDKException adobeCSDKException) {
                        AdobeAssetException adobeAssetException = (AdobeAssetException) adobeCSDKException;
                        Log.i("CreativeCloudExport", "media upload error : " + adobeAssetException.getHttpStatusCode());
                        if (adobeAssetException.getHttpStatusCode().intValue() != 409 && adobeAssetException.getHttpStatusCode().intValue() != 201) {
                            if (CreativeCloudExport.this.listener != null) {
                                CreativeCloudExport.this.listener.onCompleted(false, PremiereClipApplication.getContext().getString(R.string.cc_error_saving_video));
                            }
                        } else {
                            Log.i("CreativeCloudExport", "media already exists, updating it");
                            CreativeCloudExport.this.upload.update(url, "video/mp4", new IAdobeGenericRequestCallback<AdobeAssetFile, AdobeCSDKException>() { // from class: com.adobe.premiereclip.sharing.CreativeCloudExport.2.1
                                @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                                public void onCancellation() {
                                    Log.i("CreativeCloudExport", "media update cancelled");
                                    if (CreativeCloudExport.this.listener != null) {
                                        CreativeCloudExport.this.listener.onCompleted(false, PremiereClipApplication.getContext().getString(R.string.cc_media_upload_cancelled));
                                    }
                                }

                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                public void onCompletion(AdobeAssetFile adobeAssetFile) {
                                    Log.i("CreativeCloudExport", "media update success");
                                    if (CreativeCloudExport.this.listener != null) {
                                        CreativeCloudExport.this.listener.onCompleted(true, null);
                                    }
                                }

                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                public void onError(AdobeCSDKException adobeCSDKException2) {
                                    AdobeAssetException adobeAssetException2 = (AdobeAssetException) adobeCSDKException2;
                                    if (adobeAssetException2.getHttpStatusCode().intValue() != 200) {
                                        Log.i("CreativeCloudExport", "media update error : " + adobeAssetException2.getHttpStatusCode());
                                        if (CreativeCloudExport.this.listener != null) {
                                            CreativeCloudExport.this.listener.onCompleted(false, PremiereClipApplication.getContext().getString(R.string.cc_error_saving_video));
                                            return;
                                        }
                                        return;
                                    }
                                    Log.i("CreativeCloudExport", "media update success");
                                    if (CreativeCloudExport.this.listener != null) {
                                        CreativeCloudExport.this.listener.onCompleted(true, null);
                                    }
                                }

                                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                                public void onProgress(double d2) {
                                    if (CreativeCloudExport.this.listener != null) {
                                        CreativeCloudExport.this.listener.onProgress(d2);
                                    }
                                }
                            }, CreativeCloudExport.this.mHandler);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                        Log.i("CreativeCloudExport", "media upload progess is " + String.valueOf(d2));
                        if (CreativeCloudExport.this.listener != null) {
                            CreativeCloudExport.this.listener.onProgress(d2);
                        }
                    }
                }, this.mHandler);
            } else {
                Log.i("CreativeCloudExport", "failed to get target folder from CC");
            }
        } catch (MalformedURLException e2) {
            Log.i("CreativeCloudExport", "localURL not formed properly");
            e2.printStackTrace();
        } catch (URISyntaxException e3) {
            e3.printStackTrace();
        }
    }
}
