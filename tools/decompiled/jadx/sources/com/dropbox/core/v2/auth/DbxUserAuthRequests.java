package com.dropbox.core.v2.auth;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;

/* JADX INFO: loaded from: classes2.dex */
public class DbxUserAuthRequests {
    private final DbxRawClientV2 client;

    public DbxUserAuthRequests(DbxRawClientV2 dbxRawClientV2) {
        this.client = dbxRawClientV2;
    }

    public void tokenRevoke() throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/auth/token/revoke", null, false, StoneSerializers.void_(), StoneSerializers.void_(), StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"token/revoke\":" + e2.getErrorValue());
        }
    }
}
