package com.dropbox.core;

import com.d.a.a.i;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v1.DbxClientV1;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class DbxOAuth1Upgrader {
    public static final JsonReader<String> ResponseReader = new JsonReader<String>() { // from class: com.dropbox.core.DbxOAuth1Upgrader.3
        @Override // com.dropbox.core.json.JsonReader
        public String read(k kVar) throws JsonReadException, IOException {
            String field;
            String field2;
            String str = null;
            i iVarExpectObjectStart = JsonReader.expectObjectStart(kVar);
            String str2 = null;
            while (kVar.c() == o.FIELD_NAME) {
                String strD = kVar.d();
                JsonReader.nextToken(kVar);
                try {
                    if (strD.equals("token_type")) {
                        field = DbxAuthFinish.BearerTokenTypeReader.readField(kVar, strD, str);
                        field2 = str2;
                    } else if (strD.equals("access_token")) {
                        String str3 = str;
                        field2 = DbxAuthFinish.AccessTokenReader.readField(kVar, strD, str2);
                        field = str3;
                    } else {
                        JsonReader.skipValue(kVar);
                        field = str;
                        field2 = str2;
                    }
                    str2 = field2;
                    str = field;
                } catch (JsonReadException e2) {
                    throw e2.addFieldContext(strD);
                }
            }
            JsonReader.expectObjectEnd(kVar);
            if (str == null) {
                throw new JsonReadException("missing field \"token_type\"", iVarExpectObjectStart);
            }
            if (str2 == null) {
                throw new JsonReadException("missing field \"access_token\"", iVarExpectObjectStart);
            }
            return str2;
        }
    };
    private final DbxAppInfo appInfo;
    private final DbxRequestConfig requestConfig;

    public DbxOAuth1Upgrader(DbxRequestConfig dbxRequestConfig, DbxAppInfo dbxAppInfo) {
        if (dbxRequestConfig == null) {
            throw new IllegalArgumentException("'requestConfig' is null");
        }
        if (dbxAppInfo == null) {
            throw new IllegalArgumentException("'appInfo' is null");
        }
        this.requestConfig = dbxRequestConfig;
        this.appInfo = dbxAppInfo;
    }

    public String createOAuth2AccessToken(DbxOAuth1AccessToken dbxOAuth1AccessToken) throws DbxException {
        if (dbxOAuth1AccessToken == null) {
            throw new IllegalArgumentException("'token' can't be null");
        }
        return (String) DbxRequestUtil.doPostNoAuth(this.requestConfig, DbxClientV1.USER_AGENT_ID, this.appInfo.getHost().getApi(), "1/oauth2/token_from_oauth1", null, getHeaders(dbxOAuth1AccessToken), new DbxRequestUtil.ResponseHandler<String>() { // from class: com.dropbox.core.DbxOAuth1Upgrader.1
            @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
            public String handle(HttpRequestor.Response response) throws DbxException {
                if (response.getStatusCode() != 200) {
                    throw DbxRequestUtil.unexpectedStatus(response);
                }
                return (String) DbxRequestUtil.readJsonFromResponse(DbxOAuth1Upgrader.ResponseReader, response);
            }
        });
    }

    public void disableOAuth1AccessToken(DbxOAuth1AccessToken dbxOAuth1AccessToken) throws DbxException {
        if (dbxOAuth1AccessToken == null) {
            throw new IllegalArgumentException("'token' can't be null");
        }
        DbxRequestUtil.doPostNoAuth(this.requestConfig, DbxClientV1.USER_AGENT_ID, this.appInfo.getHost().getApi(), "1/disable_access_token", null, getHeaders(dbxOAuth1AccessToken), new DbxRequestUtil.ResponseHandler<Void>() { // from class: com.dropbox.core.DbxOAuth1Upgrader.2
            @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
            public Void handle(HttpRequestor.Response response) throws DbxException {
                if (response.getStatusCode() != 200) {
                    throw DbxRequestUtil.unexpectedStatus(response);
                }
                return null;
            }
        });
    }

    private ArrayList<HttpRequestor.Header> getHeaders(DbxOAuth1AccessToken dbxOAuth1AccessToken) {
        ArrayList<HttpRequestor.Header> arrayList = new ArrayList<>(1);
        arrayList.add(new HttpRequestor.Header("Authorization", buildOAuth1Header(dbxOAuth1AccessToken)));
        return arrayList;
    }

    private String buildOAuth1Header(DbxOAuth1AccessToken dbxOAuth1AccessToken) {
        StringBuilder sb = new StringBuilder();
        sb.append("OAuth oauth_version=\"1.0\", oauth_signature_method=\"PLAINTEXT\"");
        sb.append(", oauth_consumer_key=\"").append(encode(this.appInfo.getKey())).append("\"");
        sb.append(", oauth_token=\"").append(encode(dbxOAuth1AccessToken.getKey())).append("\"");
        sb.append(", oauth_signature=\"").append(encode(this.appInfo.getSecret())).append("&").append(encode(dbxOAuth1AccessToken.getSecret())).append("\"");
        return sb.toString();
    }

    private static String encode(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw LangUtil.mkAssert("UTF-8 should always be supported", e2);
        }
    }
}
