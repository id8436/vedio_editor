package com.dropbox.core.v2.callbacks;

import com.dropbox.core.DbxException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DbxNetworkErrorCallback {
    public abstract void onNetworkError(DbxException dbxException);
}
