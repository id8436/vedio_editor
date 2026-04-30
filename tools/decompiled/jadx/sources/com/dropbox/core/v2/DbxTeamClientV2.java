package com.dropbox.core.v2;

import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DbxTeamClientV2 extends DbxTeamClientV2Base {
    private final String accessToken;

    public DbxTeamClientV2(DbxRequestConfig dbxRequestConfig, String str) {
        this(dbxRequestConfig, str, DbxHost.DEFAULT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DbxTeamClientV2(DbxRequestConfig dbxRequestConfig, String str, DbxHost dbxHost) {
        super(new DbxTeamRawClientV2(dbxRequestConfig, dbxHost, str, null, 0 == true ? 1 : 0));
        this.accessToken = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DbxTeamClientV2(DbxRequestConfig dbxRequestConfig, String str, DbxHost dbxHost, String str2) {
        super(new DbxTeamRawClientV2(dbxRequestConfig, dbxHost, str, str2, null));
        this.accessToken = str;
    }

    public DbxClientV2 asMember(String str) {
        if (str == null) {
            throw new IllegalArgumentException("'memberId' should not be null");
        }
        return new DbxClientV2(new DbxTeamRawClientV2(this._client.getRequestConfig(), this._client.getHost(), this.accessToken, this._client.getUserId(), str));
    }

    final class DbxTeamRawClientV2 extends DbxRawClientV2 {
        private final String accessToken;
        private final String memberId;

        private DbxTeamRawClientV2(DbxRequestConfig dbxRequestConfig, DbxHost dbxHost, String str) {
            this(dbxRequestConfig, dbxHost, str, null, null);
        }

        private DbxTeamRawClientV2(DbxRequestConfig dbxRequestConfig, DbxHost dbxHost, String str, String str2, String str3) {
            super(dbxRequestConfig, dbxHost, str2);
            if (str == null) {
                throw new NullPointerException("accessToken");
            }
            this.accessToken = str;
            this.memberId = str3;
        }

        @Override // com.dropbox.core.v2.DbxRawClientV2
        protected void addAuthHeaders(List<HttpRequestor.Header> list) {
            DbxRequestUtil.addAuthHeader(list, this.accessToken);
            if (this.memberId != null) {
                DbxRequestUtil.addSelectUserHeader(list, this.memberId);
            }
        }
    }
}
