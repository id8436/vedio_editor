package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360Utils;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSSecondaryAppStart360WorkflowEvent;
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
public class Adobe360WorkflowRequestIntentReader {
    private ContentResolver contentResolver;
    private Intent requestIntent;

    public Adobe360WorkflowRequestIntentReader(ContentResolver contentResolver, Intent intent) {
        this.contentResolver = contentResolver;
        this.requestIntent = intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleErrorCallback(final AdobeCSDKException adobeCSDKException, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, Handler handler) {
        if (iAdobeGenericErrorCallback != null) {
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestIntentReader.1
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
    public void handleCompletionCallback(final Adobe360WorkflowRequestIntentData adobe360WorkflowRequestIntentData, final IAdobeGenericCompletionCallback<Adobe360WorkflowRequestIntentData> iAdobeGenericCompletionCallback, Handler handler) {
        if (iAdobeGenericCompletionCallback != null) {
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestIntentReader.2
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericCompletionCallback.onCompletion(adobe360WorkflowRequestIntentData);
                    }
                });
            } else {
                iAdobeGenericCompletionCallback.onCompletion(adobe360WorkflowRequestIntentData);
            }
        }
    }

    public void readDataFromIntent(final IAdobeGenericCompletionCallback<Adobe360WorkflowRequestIntentData> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, final Handler handler) {
        if (this.contentResolver == null || this.requestIntent == null) {
            handleErrorCallback(new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorBadRequest), iAdobeGenericErrorCallback, handler);
        } else {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestIntentReader.3
                @Override // java.lang.Runnable
                public void run() {
                    Bundle bundleExtra = Adobe360WorkflowRequestIntentReader.this.requestIntent.getBundleExtra("360#action");
                    String str = (String) bundleExtra.getSerializable("action_id");
                    Uri uri = (Uri) bundleExtra.getParcelable("request_message_snapshot_uri");
                    boolean zBooleanValue = ((Boolean) bundleExtra.getSerializable("own_request_message")).booleanValue();
                    Uri uri2 = (Uri) bundleExtra.getParcelable("response_message_snapshot_uri");
                    String str2 = (String) bundleExtra.getSerializable("action_sub_type");
                    final AdobeCSDKException[] adobeCSDKExceptionArr = {null};
                    final Adobe360Message[] adobe360MessageArr = {null};
                    if (uri != null) {
                        try {
                            final ReentrantLock reentrantLock = new ReentrantLock();
                            final Condition conditionNewCondition = reentrantLock.newCondition();
                            final boolean[] zArr = {false};
                            InputStream inputStreamOpenInputStream = Adobe360WorkflowRequestIntentReader.this.contentResolver.openInputStream(uri);
                            String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), String.valueOf(new Date().getTime()));
                            File file = new File(strStringByAppendingLastPathComponent);
                            file.createNewFile();
                            FileOutputStream fileOutputStream = new FileOutputStream(file);
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int fromBuffer = Adobe360WorkflowRequestIntentReader.this.readFromBuffer(inputStreamOpenInputStream, bArr);
                                if (fromBuffer == -1) {
                                    break;
                                } else {
                                    fileOutputStream.write(bArr, 0, fromBuffer);
                                }
                            }
                            fileOutputStream.close();
                            Adobe360Message.readFromPath(strStringByAppendingLastPathComponent, null, new IAdobeGenericCompletionCallback<Adobe360Message>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestIntentReader.3.1
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
                            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestIntentReader.3.2
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
                            Adobe360WorkflowRequestIntentReader.this.loopUntilCondition(reentrantLock, conditionNewCondition, zArr);
                            FileUtils.deleteQuietly(file);
                            if (zBooleanValue) {
                                Adobe360WorkflowRequestIntentReader.this.contentResolver.delete(uri, null, null);
                            }
                        } catch (IOException e2) {
                            adobeCSDKExceptionArr[0] = new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorFileSystemError, null, e2);
                        }
                    }
                    if (adobeCSDKExceptionArr[0] != null) {
                        Adobe360WorkflowRequestIntentReader.this.handleErrorCallback(adobeCSDKExceptionArr[0], iAdobeGenericErrorCallback, handler);
                        return;
                    }
                    Adobe360WorkflowRequestIntentData adobe360WorkflowRequestIntentData = new Adobe360WorkflowRequestIntentData();
                    adobe360WorkflowRequestIntentData.setRequestMessage(adobe360MessageArr[0]);
                    adobe360WorkflowRequestIntentData.setActionId(str);
                    if (uri2 != null) {
                        adobe360WorkflowRequestIntentData.setResponseMessagePathInCaller(uri2);
                    }
                    if (str2 != null) {
                        adobe360WorkflowRequestIntentData.setActionSubType(str2);
                    }
                    if (adobe360WorkflowRequestIntentData.getRequestMessage() != null) {
                        new AdobeAnalyticsETSSecondaryAppStart360WorkflowEvent(adobe360WorkflowRequestIntentData.getRequestMessage().getActionId(), Adobe360Utils.getCallingAppPackageName(adobe360WorkflowRequestIntentData.getRequestMessage())).endAndTrackEvent();
                    }
                    Adobe360WorkflowRequestIntentReader.this.handleCompletionCallback(adobe360WorkflowRequestIntentData, iAdobeGenericCompletionCallback, handler);
                }
            }).start();
        }
    }

    public void loopUntilCondition(ReentrantLock reentrantLock, Condition condition, boolean[] zArr) {
        while (!zArr[0]) {
            try {
                try {
                    condition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "Adobe360WorkflowRequestIntentReader", null, e2);
                }
            } finally {
                reentrantLock.unlock();
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
