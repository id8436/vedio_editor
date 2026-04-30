package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public class Adobe360WorkflowRequestIntentData {
    private Adobe360Message requestMessage = null;
    private Uri responseMessagePathInCaller = null;
    private String actionId = null;
    private String actionSubType = null;

    Adobe360WorkflowRequestIntentData() {
        setRequestMessage(null);
        setResponseMessagePathInCaller(null);
        setActionId(null);
        setActionSubType(null);
    }

    public Adobe360Message getRequestMessage() {
        return this.requestMessage;
    }

    public void setRequestMessage(Adobe360Message adobe360Message) {
        this.requestMessage = adobe360Message;
    }

    public Uri getResponseMessagePathInCaller() {
        return this.responseMessagePathInCaller;
    }

    public void setResponseMessagePathInCaller(Uri uri) {
        this.responseMessagePathInCaller = uri;
    }

    public String getActionId() {
        return this.actionId;
    }

    public void setActionId(String str) {
        this.actionId = str;
    }

    public String getActionSubType() {
        return this.actionSubType;
    }

    public void setActionSubType(String str) {
        this.actionSubType = str;
    }
}
