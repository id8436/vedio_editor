package com.dropbox.core.v2;

import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DbxAppClientV2 extends DbxAppClientV2Base {
    public DbxAppClientV2(DbxRequestConfig dbxRequestConfig, String str, String str2) {
        this(dbxRequestConfig, str, str2, DbxHost.DEFAULT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DbxAppClientV2(DbxRequestConfig dbxRequestConfig, String str, String str2, DbxHost dbxHost) {
        super(new DbxAppRawClientV2(dbxRequestConfig, str, str2, dbxHost, null));
    }

    public DbxAppClientV2(DbxRequestConfig dbxRequestConfig, String str, String str2, DbxHost dbxHost, String str3) {
        super(new DbxAppRawClientV2(dbxRequestConfig, str, str2, dbxHost, str3));
    }

    final class DbxAppRawClientV2 extends DbxRawClientV2 {
        private final String key;
        private final String secret;

        private DbxAppRawClientV2(DbxRequestConfig dbxRequestConfig, String str, String str2, DbxHost dbxHost, String str3) {
            super(dbxRequestConfig, dbxHost, str3);
            this.key = str;
            this.secret = str2;
        }

        @Override // com.dropbox.core.v2.DbxRawClientV2
        protected void addAuthHeaders(List<HttpRequestor.Header> list) {
            DbxRequestUtil.addBasicAuthHeader(list, this.key, this.secret);
        }
    }
}
