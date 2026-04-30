package com.dropbox.core.v2;

import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DbxClientV2 extends DbxClientV2Base {
    public DbxClientV2(DbxRequestConfig dbxRequestConfig, String str) {
        this(dbxRequestConfig, str, DbxHost.DEFAULT, null);
    }

    public DbxClientV2(DbxRequestConfig dbxRequestConfig, String str, String str2) {
        this(dbxRequestConfig, str, DbxHost.DEFAULT, str2);
    }

    public DbxClientV2(DbxRequestConfig dbxRequestConfig, String str, DbxHost dbxHost) {
        super(new DbxUserRawClientV2(dbxRequestConfig, str, dbxHost, null));
    }

    public DbxClientV2(DbxRequestConfig dbxRequestConfig, String str, DbxHost dbxHost, String str2) {
        super(new DbxUserRawClientV2(dbxRequestConfig, str, dbxHost, str2));
    }

    DbxClientV2(DbxRawClientV2 dbxRawClientV2) {
        super(dbxRawClientV2);
    }

    final class DbxUserRawClientV2 extends DbxRawClientV2 {
        private final String accessToken;

        public DbxUserRawClientV2(DbxRequestConfig dbxRequestConfig, String str, DbxHost dbxHost, String str2) {
            super(dbxRequestConfig, dbxHost, str2);
            if (str == null) {
                throw new NullPointerException("accessToken");
            }
            this.accessToken = str;
        }

        @Override // com.dropbox.core.v2.DbxRawClientV2
        protected void addAuthHeaders(List<HttpRequestor.Header> list) {
            DbxRequestUtil.addAuthHeader(list, this.accessToken);
        }
    }
}
