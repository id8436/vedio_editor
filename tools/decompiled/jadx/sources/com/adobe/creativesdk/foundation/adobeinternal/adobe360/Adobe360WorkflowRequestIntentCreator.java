package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.FileProvider;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.adobe360.Adobe360WorkflowPMHelper;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowRequestIntentCreator {
    protected static final String k360MessageAction = "360#action";
    protected static final String k360MessageActionId = "action_id";
    protected static final String k360MessageActionSubType = "action_sub_type";
    protected static final String kReceiverOwnsRequestMessage = "own_request_message";
    protected static final String kRequestMessagePath = "request_message_snapshot_uri";
    protected static final String kResponseMessagePath = "response_message_snapshot_uri";
    private Adobe360WorkflowAction _action;
    private String _authority;
    private Context _context;
    private boolean _receiverOwnsRequestMessage;
    private Adobe360Message _requestMessage;
    private String _requestMessagePath;
    private String _responseMessagePath;

    public Adobe360WorkflowRequestIntentCreator(Adobe360Message adobe360Message, Adobe360WorkflowAction adobe360WorkflowAction, String str, String str2, boolean z, Context context, String str3) {
        this._requestMessage = null;
        this._requestMessagePath = null;
        this._responseMessagePath = null;
        this._receiverOwnsRequestMessage = false;
        this._context = null;
        this._authority = null;
        this._action = null;
        this._requestMessage = adobe360Message;
        this._requestMessagePath = str;
        this._responseMessagePath = str2;
        this._receiverOwnsRequestMessage = z;
        this._context = context;
        this._authority = str3;
        this._action = adobe360WorkflowAction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleErrorCallback(final AdobeCSDKException adobeCSDKException, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, Handler handler) {
        if (iAdobeGenericErrorCallback != null) {
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestIntentCreator.1
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
    public void handleCompletionCallback(final Intent intent, final IAdobeGenericCompletionCallback<Intent> iAdobeGenericCompletionCallback, Handler handler) {
        if (iAdobeGenericCompletionCallback != null) {
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestIntentCreator.2
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

    public void createRequestIntent(final IAdobeGenericCompletionCallback<Intent> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, final Handler handler) {
        if (this._requestMessage == null || this._requestMessagePath == null || this._context == null || this._authority == null) {
            handleErrorCallback(new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorBadRequest), iAdobeGenericErrorCallback, handler);
        }
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestIntentCreator.3
            @Override // java.lang.Runnable
            public void run() {
                Uri uriForFile = null;
                final ReentrantLock reentrantLock = new ReentrantLock();
                final Condition conditionNewCondition = reentrantLock.newCondition();
                final boolean[] zArr = {false};
                final AdobeCSDKException[] adobeCSDKExceptionArr = {null};
                Adobe360WorkflowRequestIntentCreator.this._requestMessage.writeToSnapshotAtPath(Adobe360WorkflowRequestIntentCreator.this._requestMessagePath, true, null, new IAdobeGenericCompletionCallback<String>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestIntentCreator.3.1
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
                }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestIntentCreator.3.2
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
                    Adobe360WorkflowRequestIntentCreator.this.handleErrorCallback(adobeCSDKExceptionArr[0], iAdobeGenericErrorCallback, handler);
                    return;
                }
                Uri uriForFile2 = FileProvider.getUriForFile(Adobe360WorkflowRequestIntentCreator.this._context, Adobe360WorkflowRequestIntentCreator.this._authority, new File(Adobe360WorkflowRequestIntentCreator.this._requestMessagePath));
                if (Adobe360WorkflowRequestIntentCreator.this._responseMessagePath != null) {
                    File file = new File(FilenameUtils.getFullPath(Adobe360WorkflowRequestIntentCreator.this._responseMessagePath));
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    File file2 = new File(file, FilenameUtils.getName(Adobe360WorkflowRequestIntentCreator.this._responseMessagePath));
                    if (!file2.exists()) {
                        try {
                            file2.createNewFile();
                            uriForFile = FileProvider.getUriForFile(Adobe360WorkflowRequestIntentCreator.this._context, Adobe360WorkflowRequestIntentCreator.this._authority, file2);
                        } catch (IOException e3) {
                            adobeCSDKExceptionArr[0] = new Adobe360WorkflowException(Adobe360WorkflowErrorCode.Adobe360WorkflowErrorFileSystemError, null, e3);
                        }
                    }
                }
                if (adobeCSDKExceptionArr[0] != null) {
                    Adobe360WorkflowRequestIntentCreator.this.handleErrorCallback(adobeCSDKExceptionArr[0], iAdobeGenericErrorCallback, handler);
                    return;
                }
                Intent intent = new Intent();
                intent.setClassName(Adobe360WorkflowRequestIntentCreator.this._action.getApplicationPackageName(), Adobe360WorkflowRequestIntentCreator.this._action.getComponentName());
                switch (AnonymousClass4.$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360WorkflowActionType[Adobe360WorkflowRequestIntentCreator.this._action.getType().ordinal()]) {
                    case 1:
                        intent.setAction(Adobe360WorkflowPMHelper.kAdobeActionCapture);
                        break;
                    case 2:
                        intent.setAction(Adobe360WorkflowPMHelper.kAdobeActionCaptureN);
                        break;
                    case 3:
                        intent.setAction(Adobe360WorkflowPMHelper.kAdobeActionEdit);
                        break;
                    case 4:
                        intent.setAction(Adobe360WorkflowPMHelper.kAdobeActionEmbed);
                        break;
                    case 5:
                        intent.setAction(Adobe360WorkflowPMHelper.kAdobeActionEmbedN);
                        break;
                }
                Bundle bundle = new Bundle();
                bundle.putSerializable(Adobe360WorkflowRequestIntentCreator.k360MessageActionId, Adobe360WorkflowRequestIntentCreator.this._action.getActionId());
                if (Adobe360WorkflowRequestIntentCreator.this._action.getSubType() != null) {
                    bundle.putSerializable(Adobe360WorkflowRequestIntentCreator.k360MessageActionSubType, Adobe360WorkflowRequestIntentCreator.this._action.getSubType());
                }
                bundle.putParcelable(Adobe360WorkflowRequestIntentCreator.kRequestMessagePath, uriForFile2);
                bundle.putSerializable(Adobe360WorkflowRequestIntentCreator.kReceiverOwnsRequestMessage, Boolean.valueOf(Adobe360WorkflowRequestIntentCreator.this._receiverOwnsRequestMessage));
                if (uriForFile != null) {
                    bundle.putParcelable(Adobe360WorkflowRequestIntentCreator.kResponseMessagePath, uriForFile);
                }
                intent.putExtra(Adobe360WorkflowRequestIntentCreator.k360MessageAction, bundle);
                intent.addFlags(3);
                Adobe360WorkflowRequestIntentCreator.this._context.grantUriPermission(Adobe360WorkflowRequestIntentCreator.this._action.getApplicationPackageName(), uriForFile2, 3);
                if (uriForFile != null) {
                    Adobe360WorkflowRequestIntentCreator.this._context.grantUriPermission(Adobe360WorkflowRequestIntentCreator.this._action.getApplicationPackageName(), uriForFile, 3);
                }
                Adobe360WorkflowRequestIntentCreator.this.handleCompletionCallback(intent, iAdobeGenericCompletionCallback, handler);
            }
        }).start();
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360WorkflowRequestIntentCreator$4, reason: invalid class name */
    /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360WorkflowActionType = new int[Adobe360WorkflowActionType.values().length];

        static {
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360WorkflowActionType[Adobe360WorkflowActionType.Adobe360WorkflowActionCapture.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360WorkflowActionType[Adobe360WorkflowActionType.Adobe360WorkflowActionCaptureN.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360WorkflowActionType[Adobe360WorkflowActionType.Adobe360WorkflowActionEdit.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360WorkflowActionType[Adobe360WorkflowActionType.Adobe360WorkflowActionEmbed.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$adobe360$Adobe360WorkflowActionType[Adobe360WorkflowActionType.Adobe360WorkflowActionEmbedN.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
        }
    }
}
