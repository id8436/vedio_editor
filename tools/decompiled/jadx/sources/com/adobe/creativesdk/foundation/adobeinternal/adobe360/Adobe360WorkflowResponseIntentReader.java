package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSPrimaryAppComplete360WorkflowEvent;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.io.FileUtils;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowResponseIntentReader {
    private ContentResolver contentresolver;
    private Intent responseIntent;

    public Adobe360WorkflowResponseIntentReader(ContentResolver contentResolver, Intent intent) {
        this.contentresolver = contentResolver;
        this.responseIntent = intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleErrorCallback(final AdobeCSDKException adobeCSDKException, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, Handler handler) {
        if (iAdobeGenericErrorCallback != null) {
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentReader.1
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericErrorCallback.onError(adobeCSDKException);
                    }
                });
            } else {
                iAdobeGenericErrorCallback.onError(adobeCSDKException);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCompletionCallback(final Adobe360WorkflowResponseIntentData adobe360WorkflowResponseIntentData, final IAdobeGenericCompletionCallback<Adobe360WorkflowResponseIntentData> iAdobeGenericCompletionCallback, Handler handler) {
        if (iAdobeGenericCompletionCallback != null) {
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentReader.2
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericCompletionCallback.onCompletion(adobe360WorkflowResponseIntentData);
                    }
                });
            } else {
                iAdobeGenericCompletionCallback.onCompletion(adobe360WorkflowResponseIntentData);
            }
        }
    }

    public void readDataFromIntent(final IAdobeGenericCompletionCallback<Adobe360WorkflowResponseIntentData> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, final Handler handler) {
        if (this.contentresolver == null || this.responseIntent == null) {
            handleErrorCallback(new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorBadRequest), iAdobeGenericErrorCallback, handler);
        }
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentReader.3
            @Override // java.lang.Runnable
            public void run() {
                Bundle bundleExtra = Adobe360WorkflowResponseIntentReader.this.responseIntent.getBundleExtra("360#action-response");
                if (bundleExtra == null) {
                    Adobe360WorkflowResponseIntentReader.this.handleErrorCallback(new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorBadRequest), iAdobeGenericErrorCallback, handler);
                    return;
                }
                Uri uri = (Uri) bundleExtra.getParcelable("response_message_snapshot_uri");
                boolean zBooleanValue = ((Boolean) bundleExtra.getSerializable("own_response_message")).booleanValue();
                final AdobeCSDKException[] adobeCSDKExceptionArr = {null};
                final Adobe360Message[] adobe360MessageArr = {null};
                if (uri != null) {
                    try {
                        final ReentrantLock reentrantLock = new ReentrantLock();
                        final Condition conditionNewCondition = reentrantLock.newCondition();
                        final boolean[] zArr = {false};
                        InputStream inputStreamOpenInputStream = Adobe360WorkflowResponseIntentReader.this.contentresolver.openInputStream(uri);
                        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), String.valueOf(new Date().getTime()));
                        File file = new File(strStringByAppendingLastPathComponent);
                        file.createNewFile();
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int fromBuffer = Adobe360WorkflowResponseIntentReader.this.readFromBuffer(inputStreamOpenInputStream, bArr);
                            if (fromBuffer == -1) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, fromBuffer);
                            }
                        }
                        fileOutputStream.close();
                        Adobe360Message.readFromPath(strStringByAppendingLastPathComponent, null, new IAdobeGenericCompletionCallback<Adobe360Message>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentReader.3.1
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(Adobe360Message adobe360Message) {
                                reentrantLock.lock();
                                try {
                                    zArr[0] = true;
                                    adobe360MessageArr[0] = adobe360Message;
                                    conditionNewCondition.signal();
                                } finally {
                                    reentrantLock.unlock();
                                }
                            }
                        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentReader.3.2
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(AdobeCSDKException adobeCSDKException) {
                                reentrantLock.lock();
                                try {
                                    zArr[0] = true;
                                    adobeCSDKExceptionArr[0] = adobeCSDKException;
                                    conditionNewCondition.signal();
                                } finally {
                                    reentrantLock.unlock();
                                }
                            }
                        });
                        reentrantLock.lock();
                        try {
                            Adobe360WorkflowResponseIntentReader.this.loopUntilCondition(conditionNewCondition, zArr);
                            reentrantLock.unlock();
                            FileUtils.deleteQuietly(file);
                            if (zBooleanValue) {
                                Adobe360WorkflowResponseIntentReader.this.contentresolver.delete(uri, null, null);
                            }
                        } catch (Throwable th) {
                            reentrantLock.unlock();
                            throw th;
                        }
                    } catch (IOException e2) {
                        adobeCSDKExceptionArr[0] = new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorFileSystemError, null, e2);
                    }
                }
                if (adobeCSDKExceptionArr[0] != null) {
                    Adobe360WorkflowResponseIntentReader.this.handleErrorCallback(adobeCSDKExceptionArr[0], iAdobeGenericErrorCallback, handler);
                }
                Adobe360WorkflowResponseIntentData adobe360WorkflowResponseIntentData = new Adobe360WorkflowResponseIntentData();
                adobe360WorkflowResponseIntentData.setResponseMessage(adobe360MessageArr[0]);
                new AdobeAnalyticsETSPrimaryAppComplete360WorkflowEvent(adobe360WorkflowResponseIntentData.getResponseMessage().getActionId()).endAndTrackEvent();
                Adobe360WorkflowResponseIntentReader.this.handleCompletionCallback(adobe360WorkflowResponseIntentData, iAdobeGenericCompletionCallback, handler);
            }
        }).start();
    }

    public void loopUntilCondition(Condition condition, boolean[] zArr) {
        while (!zArr[0]) {
            try {
                condition.await();
            } catch (InterruptedException e2) {
                AdobeLogger.log(Level.ERROR, "Adobe360WorkflowRequestIntentReader", null, e2);
            }
        }
    }

    public int readFromBuffer(InputStream inputStream, byte[] bArr) {
        try {
            return inputStream.read(bArr);
        } catch (IOException e2) {
            e2.printStackTrace();
            return 0;
        }
    }
}
