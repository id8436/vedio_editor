package com.adobe.creativesdk.foundation.sendtodesktop;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.support.annotation.NonNull;
import com.adobe.creativesdk.foundation.adobeinternal.sendtodesktop.AdobeSendToDesktopApplicationAdobeInternal;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class AdobeSendToDesktopApplication {
    public static final String UNTITLED = "Untitled";

    /* JADX INFO: loaded from: classes2.dex */
    enum sendItemType {
        data,
        bitmap,
        localFile,
        assetFile
    }

    /* JADX INFO: loaded from: classes2.dex */
    class SendToDesktopTask extends AsyncTask<Void, Void, Void> {
        AdobeCreativeCloudApplication application;
        AdobeAssetFile assetFile;
        InputStream data;
        Uri filePath;
        private Handler handler;
        Bitmap imageBitmap;
        String mimeType;
        String name;
        IAdobeSendToDesktopCallBack sendCallback;
        IAdobeSendToDesktopCallBack sendCallbackHelper;
        sendItemType type;

        public SendToDesktopTask(InputStream inputStream, String str, String str2, AdobeCreativeCloudApplication adobeCreativeCloudApplication, IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
            this.handler = null;
            this.data = inputStream;
            this.name = str;
            this.mimeType = str2;
            this.application = adobeCreativeCloudApplication;
            this.sendCallback = iAdobeSendToDesktopCallBack;
            this.type = sendItemType.data;
            init();
        }

        public SendToDesktopTask(Bitmap bitmap, String str, AdobeCreativeCloudApplication adobeCreativeCloudApplication, IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
            this.handler = null;
            this.imageBitmap = bitmap;
            this.name = str;
            this.application = adobeCreativeCloudApplication;
            this.sendCallback = iAdobeSendToDesktopCallBack;
            this.type = sendItemType.bitmap;
            init();
        }

        public SendToDesktopTask(Uri uri, String str, String str2, AdobeCreativeCloudApplication adobeCreativeCloudApplication, IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
            this.handler = null;
            this.filePath = uri;
            this.name = str;
            this.mimeType = str2;
            this.application = adobeCreativeCloudApplication;
            this.sendCallback = iAdobeSendToDesktopCallBack;
            this.type = sendItemType.localFile;
            init();
        }

        public SendToDesktopTask(AdobeAssetFile adobeAssetFile, String str, AdobeCreativeCloudApplication adobeCreativeCloudApplication, IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
            this.handler = null;
            this.assetFile = adobeAssetFile;
            this.name = str;
            this.application = adobeCreativeCloudApplication;
            this.sendCallback = iAdobeSendToDesktopCallBack;
            this.type = sendItemType.assetFile;
            init();
        }

        void init() {
            try {
                this.handler = new Handler();
            } catch (Exception e2) {
            }
            this.sendCallbackHelper = new IAdobeSendToDesktopCallBack() { // from class: com.adobe.creativesdk.foundation.sendtodesktop.AdobeSendToDesktopApplication.SendToDesktopTask.1
                @Override // com.adobe.creativesdk.foundation.sendtodesktop.IAdobeSendToDesktopCallBack
                public void onSuccess() {
                    if (SendToDesktopTask.this.handler != null) {
                        SendToDesktopTask.this.handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.sendtodesktop.AdobeSendToDesktopApplication.SendToDesktopTask.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SendToDesktopTask.this.sendCallback.onSuccess();
                            }
                        });
                    } else {
                        SendToDesktopTask.this.sendCallback.onSuccess();
                    }
                }

                @Override // com.adobe.creativesdk.foundation.sendtodesktop.IAdobeSendToDesktopCallBack
                public void onError(final AdobeSendToDesktopException adobeSendToDesktopException) {
                    if (SendToDesktopTask.this.handler != null) {
                        SendToDesktopTask.this.handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.sendtodesktop.AdobeSendToDesktopApplication.SendToDesktopTask.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                SendToDesktopTask.this.sendCallback.onError(adobeSendToDesktopException);
                            }
                        });
                    } else {
                        SendToDesktopTask.this.sendCallback.onError(adobeSendToDesktopException);
                    }
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            switch (this.type) {
                case data:
                    AdobeSendToDesktopApplicationAdobeInternal.sendData(this.data, this.mimeType, this.application, this.name, null, this.sendCallbackHelper);
                    return null;
                case bitmap:
                    AdobeSendToDesktopApplicationAdobeInternal.sendImage(this.imageBitmap, this.application, this.name, null, this.sendCallbackHelper);
                    return null;
                case localFile:
                    AdobeSendToDesktopApplicationAdobeInternal.sendLocalFile(this.filePath.getPath(), this.mimeType, this.application, this.name, null, this.sendCallbackHelper);
                    return null;
                case assetFile:
                    AdobeSendToDesktopApplicationAdobeInternal.sendAsset(this.assetFile, this.application, null, this.name, this.sendCallbackHelper);
                    return null;
                default:
                    return null;
            }
        }
    }

    public static void sendToDesktop(@NonNull InputStream inputStream, String str, @NonNull String str2, @NonNull AdobeCreativeCloudApplication adobeCreativeCloudApplication, @NonNull IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        String str3 = str == null ? UNTITLED : str;
        if (str2 == null || inputStream == null || adobeCreativeCloudApplication == null || iAdobeSendToDesktopCallBack == null) {
            iAdobeSendToDesktopCallBack.onError(new AdobeSendToDesktopException(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT));
        } else {
            new SendToDesktopTask(inputStream, str3, str2, adobeCreativeCloudApplication, iAdobeSendToDesktopCallBack).execute(new Void[0]);
        }
    }

    public static void sendToDesktop(@NonNull AdobeAssetFile adobeAssetFile, @NonNull AdobeCreativeCloudApplication adobeCreativeCloudApplication, @NonNull IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        if (adobeAssetFile == null || adobeCreativeCloudApplication == null || iAdobeSendToDesktopCallBack == null) {
            iAdobeSendToDesktopCallBack.onError(new AdobeSendToDesktopException(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT));
            return;
        }
        String name = adobeAssetFile.getName();
        if (name == null) {
            name = UNTITLED;
        }
        new SendToDesktopTask(adobeAssetFile, name, adobeCreativeCloudApplication, iAdobeSendToDesktopCallBack).execute(new Void[0]);
    }

    public static void sendToDesktop(@NonNull Uri uri, String str, @NonNull AdobeCreativeCloudApplication adobeCreativeCloudApplication, @NonNull IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        String mimeTypeForExtension;
        if (uri == null || adobeCreativeCloudApplication == null || iAdobeSendToDesktopCallBack == null) {
            iAdobeSendToDesktopCallBack.onError(new AdobeSendToDesktopException(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT));
            return;
        }
        if (!uri.toString().startsWith("content:") && !uri.toString().startsWith("file:")) {
            iAdobeSendToDesktopCallBack.onError(new AdobeSendToDesktopException(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_SCHEMA_NOT_SUPPORTED));
            return;
        }
        String name = new File(uri.getPath()).getName();
        if (uri.toString().startsWith("content:")) {
            try {
                InputStream inputStreamOpenInputStream = AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getContentResolver().openInputStream(uri);
                if (str == null || "".equals(str)) {
                    iAdobeSendToDesktopCallBack.onError(new AdobeSendToDesktopException(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT));
                } else {
                    new SendToDesktopTask(inputStreamOpenInputStream, name + "." + AdobeAssetFileExtensions.getExtensionForMimeType(str), str, adobeCreativeCloudApplication, iAdobeSendToDesktopCallBack).execute(new Void[0]);
                }
                return;
            } catch (FileNotFoundException e2) {
                iAdobeSendToDesktopCallBack.onError(new AdobeSendToDesktopException(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT));
                return;
            }
        }
        if (str == null || "".equals(str)) {
            String[] strArrSplit = name.split("\\.");
            if (strArrSplit.length > 0) {
                mimeTypeForExtension = AdobeAssetFileExtensions.getMimeTypeForExtension(name != null ? strArrSplit[strArrSplit.length - 1] : "");
            } else {
                mimeTypeForExtension = str;
            }
            if (mimeTypeForExtension == null) {
                iAdobeSendToDesktopCallBack.onError(new AdobeSendToDesktopException(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT));
                return;
            }
        } else {
            mimeTypeForExtension = str;
        }
        new SendToDesktopTask(uri, name, mimeTypeForExtension, adobeCreativeCloudApplication, iAdobeSendToDesktopCallBack).execute(new Void[0]);
    }

    public static void sendToDesktop(@NonNull Bitmap bitmap, String str, @NonNull AdobeCreativeCloudApplication adobeCreativeCloudApplication, @NonNull IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        if (str == null) {
            str = UNTITLED;
        }
        if (bitmap == null || adobeCreativeCloudApplication == null || iAdobeSendToDesktopCallBack == null) {
            iAdobeSendToDesktopCallBack.onError(new AdobeSendToDesktopException(AdobeSendToDesktopErrorCode.ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT));
        } else {
            new SendToDesktopTask(bitmap, str, adobeCreativeCloudApplication, iAdobeSendToDesktopCallBack).execute(new Void[0]);
        }
    }

    @Deprecated
    public static void sendImage(Bitmap bitmap, AdobeCreativeCloudApplication adobeCreativeCloudApplication, String str, IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        AdobeSendToDesktopApplicationAdobeInternal.sendImage(bitmap, adobeCreativeCloudApplication, str, null, iAdobeSendToDesktopCallBack);
    }

    @Deprecated
    public static void sendData(InputStream inputStream, String str, AdobeCreativeCloudApplication adobeCreativeCloudApplication, String str2, IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        AdobeSendToDesktopApplicationAdobeInternal.sendData(inputStream, str, adobeCreativeCloudApplication, str2, null, iAdobeSendToDesktopCallBack);
    }

    @Deprecated
    public static void sendAsset(AdobeAssetFile adobeAssetFile, AdobeCreativeCloudApplication adobeCreativeCloudApplication, String str, IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        AdobeSendToDesktopApplicationAdobeInternal.sendAsset(adobeAssetFile, adobeCreativeCloudApplication, null, str, iAdobeSendToDesktopCallBack);
    }

    @Deprecated
    public static void sendLocalFile(String str, String str2, AdobeCreativeCloudApplication adobeCreativeCloudApplication, String str3, IAdobeSendToDesktopCallBack iAdobeSendToDesktopCallBack) {
        AdobeSendToDesktopApplicationAdobeInternal.sendLocalFile(str, str2, adobeCreativeCloudApplication, str3, null, iAdobeSendToDesktopCallBack);
    }
}
