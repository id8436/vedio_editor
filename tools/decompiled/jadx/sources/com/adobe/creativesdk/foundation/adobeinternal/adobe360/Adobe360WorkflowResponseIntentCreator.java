package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.FileProvider;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360Utils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.io.FileUtils;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowResponseIntentCreator {
    protected static final String MESSAGE_360_ACTION_RESPONSE = "360#action-response";
    protected static final String RECEIVER_OWNS_RESPONSE_MESSAGE = "own_response_message";
    protected static final String RESPONSE_MESSAGE_PATH = "response_message_snapshot_uri";
    private String authority;
    private Context context;
    private boolean receiverOwnsRequestMessage;
    private Adobe360Message responseMessage;
    private String responseMessagePath;
    private Uri responseMessagePathInCaller;

    public Adobe360WorkflowResponseIntentCreator(Adobe360Message adobe360Message, String str, boolean z, Context context, String str2) {
        this.responseMessage = null;
        this.responseMessagePath = null;
        this.receiverOwnsRequestMessage = false;
        this.context = null;
        this.authority = null;
        this.responseMessagePathInCaller = null;
        this.responseMessage = adobe360Message;
        this.responseMessagePath = str;
        this.receiverOwnsRequestMessage = z;
        this.context = context;
        this.authority = str2;
    }

    public Adobe360WorkflowResponseIntentCreator(Uri uri, Context context) {
        this.responseMessage = null;
        this.responseMessagePath = null;
        this.receiverOwnsRequestMessage = false;
        this.context = null;
        this.authority = null;
        this.responseMessagePathInCaller = null;
        this.responseMessagePathInCaller = uri;
        this.context = context;
    }

    private void handleErrorCallback(final AdobeCSDKException adobeCSDKException, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, Handler handler) {
        if (iAdobeGenericErrorCallback != null) {
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentCreator.1
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

    private void handleCompletionCallback(final Intent intent, final IAdobeGenericCompletionCallback<Intent> iAdobeGenericCompletionCallback, Handler handler) {
        if (iAdobeGenericCompletionCallback != null) {
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentCreator.2
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeGenericCompletionCallback.onCompletion(intent);
                    }
                });
            } else {
                iAdobeGenericCompletionCallback.onCompletion(intent);
            }
        }
    }

    private void copyResponseMessageIntoCallerPath(File file) throws IOException {
        int i;
        OutputStream outputStreamOpenOutputStream = this.context.getContentResolver().openOutputStream(this.responseMessagePathInCaller);
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[1024];
        while (true) {
            try {
                i = fileInputStream.read(bArr);
            } catch (IOException e2) {
                e2.printStackTrace();
                i = 0;
            }
            if (i != -1) {
                outputStreamOpenOutputStream.write(bArr, 0, i);
            } else {
                fileInputStream.close();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerForResponseMessagePathInCaller(IAdobeGenericCompletionCallback<Intent> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, Handler handler) {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final boolean[] zArr = {false};
        final AdobeCSDKException[] adobeCSDKExceptionArr = {null};
        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(FileUtils.getTempDirectoryPath(), String.valueOf(new Date().getTime()));
        File file = new File(strStringByAppendingLastPathComponent);
        try {
            file.createNewFile();
        } catch (IOException e2) {
            adobeCSDKExceptionArr[0] = new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorFileSystemError, null, e2);
        }
        if (adobeCSDKExceptionArr[0] != null) {
            handleErrorCallback(adobeCSDKExceptionArr[0], iAdobeGenericErrorCallback, handler);
            return;
        }
        this.responseMessage.writeToSnapshotAtPath(strStringByAppendingLastPathComponent, true, null, new IAdobeGenericCompletionCallback<String>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentCreator.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(String str) {
                reentrantLock.lock();
                try {
                    zArr[0] = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentCreator.4
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
        while (!zArr[0]) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e3) {
                    AdobeLogger.log(Level.ERROR, "Adobe360WorkflowRequestIntentCreator", null, e3);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (adobeCSDKExceptionArr[0] != null) {
            handleErrorCallback(adobeCSDKExceptionArr[0], iAdobeGenericErrorCallback, handler);
            return;
        }
        try {
            copyResponseMessageIntoCallerPath(file);
        } catch (IOException e4) {
            adobeCSDKExceptionArr[0] = new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorFileSystemError, null, e4);
        }
        FileUtils.deleteQuietly(file);
        if (adobeCSDKExceptionArr[0] != null) {
            handleErrorCallback(adobeCSDKExceptionArr[0], iAdobeGenericErrorCallback, handler);
        } else {
            handleCompletionCallback(new Intent(), iAdobeGenericCompletionCallback, handler);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerForNonResponseMessagePathInCaller(IAdobeGenericCompletionCallback<Intent> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, Handler handler) {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final boolean[] zArr = {false};
        final AdobeCSDKException[] adobeCSDKExceptionArr = {null};
        this.responseMessage.writeToSnapshotAtPath(this.responseMessagePath, true, null, new IAdobeGenericCompletionCallback<String>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentCreator.5
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(String str) {
                reentrantLock.lock();
                try {
                    zArr[0] = true;
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentCreator.6
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
        while (!zArr[0]) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.ERROR, "Adobe360WorkflowRequestIntentCreator", null, e2);
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        if (adobeCSDKExceptionArr[0] != null) {
            handleErrorCallback(adobeCSDKExceptionArr[0], iAdobeGenericErrorCallback, handler);
            return;
        }
        Uri uriForFile = FileProvider.getUriForFile(this.context, this.authority, new File(this.responseMessagePath));
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putParcelable(RESPONSE_MESSAGE_PATH, uriForFile);
        bundle.putSerializable(RECEIVER_OWNS_RESPONSE_MESSAGE, Boolean.valueOf(this.receiverOwnsRequestMessage));
        intent.putExtra(MESSAGE_360_ACTION_RESPONSE, bundle);
        intent.addFlags(3);
        this.context.grantUriPermission(Adobe360Utils.getCallingAppPackageName(this.responseMessage), uriForFile, 3);
        handleCompletionCallback(intent, iAdobeGenericCompletionCallback, handler);
    }

    public void createResponseIntent(final IAdobeGenericCompletionCallback<Intent> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, final Handler handler) {
        if (this.responseMessagePathInCaller == null && (this.responseMessage == null || this.responseMessagePath == null || this.context == null || this.authority == null)) {
            handleErrorCallback(new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorBadRequest), iAdobeGenericErrorCallback, handler);
        } else if (this.responseMessagePathInCaller != null && this.context == null) {
            handleErrorCallback(new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorBadRequest), iAdobeGenericErrorCallback, handler);
        }
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowResponseIntentCreator.7
            @Override // java.lang.Runnable
            public void run() {
                if (Adobe360WorkflowResponseIntentCreator.this.responseMessagePathInCaller != null) {
                    Adobe360WorkflowResponseIntentCreator.this.handlerForResponseMessagePathInCaller(iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, handler);
                } else {
                    Adobe360WorkflowResponseIntentCreator.this.handlerForNonResponseMessagePathInCaller(iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, handler);
                }
            }
        }).start();
    }
}
