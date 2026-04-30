package com.dropbox.core.v2;

import com.dropbox.core.v2.auth.DbxAppAuthRequests;

/* JADX INFO: loaded from: classes2.dex */
public class DbxAppClientV2Base {
    protected final DbxRawClientV2 _client;
    private final DbxAppAuthRequests auth;

    protected DbxAppClientV2Base(DbxRawClientV2 dbxRawClientV2) {
        this._client = dbxRawClientV2;
        this.auth = new DbxAppAuthRequests(dbxRawClientV2);
    }

    public DbxAppAuthRequests auth() {
        return this.auth;
    }
}
