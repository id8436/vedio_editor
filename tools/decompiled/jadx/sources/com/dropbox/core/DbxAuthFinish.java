package com.dropbox.core;

import com.d.a.a.i;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.StringUtil;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class DbxAuthFinish {
    private final String accessToken;
    private final String urlState;
    private final String userId;
    public static final JsonReader<DbxAuthFinish> Reader = new JsonReader<DbxAuthFinish>() { // from class: com.dropbox.core.DbxAuthFinish.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public DbxAuthFinish read(k kVar) throws JsonReadException, IOException {
            String field;
            String str;
            String str2;
            String field2;
            String str3 = null;
            i iVarExpectObjectStart = JsonReader.expectObjectStart(kVar);
            String str4 = null;
            String str5 = null;
            String str6 = null;
            while (kVar.c() == o.FIELD_NAME) {
                String strD = kVar.d();
                JsonReader.nextToken(kVar);
                try {
                    if (strD.equals("token_type")) {
                        String field3 = DbxAuthFinish.BearerTokenTypeReader.readField(kVar, strD, str5);
                        field2 = str6;
                        String str7 = str4;
                        str2 = field3;
                        field = str3;
                        str = str7;
                    } else if (strD.equals("access_token")) {
                        String str8 = str3;
                        str = str4;
                        str2 = str5;
                        field2 = DbxAuthFinish.AccessTokenReader.readField(kVar, strD, str6);
                        field = str8;
                    } else if (strD.equals("uid")) {
                        String field4 = JsonReader.StringReader.readField(kVar, strD, str4);
                        str2 = str5;
                        field2 = str6;
                        String str9 = str3;
                        str = field4;
                        field = str9;
                    } else if (strD.equals("state")) {
                        field = JsonReader.StringReader.readField(kVar, strD, str3);
                        str = str4;
                        str2 = str5;
                        field2 = str6;
                    } else {
                        JsonReader.skipValue(kVar);
                        field = str3;
                        str = str4;
                        str2 = str5;
                        field2 = str6;
                    }
                    str6 = field2;
                    str5 = str2;
                    str4 = str;
                    str3 = field;
                } catch (JsonReadException e2) {
                    throw e2.addFieldContext(strD);
                }
            }
            JsonReader.expectObjectEnd(kVar);
            if (str5 == null) {
                throw new JsonReadException("missing field \"token_type\"", iVarExpectObjectStart);
            }
            if (str6 == null) {
                throw new JsonReadException("missing field \"access_token\"", iVarExpectObjectStart);
            }
            if (str4 == null) {
                throw new JsonReadException("missing field \"uid\"", iVarExpectObjectStart);
            }
            return new DbxAuthFinish(str6, str4, str3);
        }
    };
    public static final JsonReader<String> BearerTokenTypeReader = new JsonReader<String>() { // from class: com.dropbox.core.DbxAuthFinish.2
        @Override // com.dropbox.core.json.JsonReader
        public String read(k kVar) throws JsonReadException, IOException {
            try {
                String strG = kVar.g();
                if (!strG.equals("Bearer") && !strG.equals("bearer")) {
                    throw new JsonReadException("expecting \"Bearer\": got " + StringUtil.jq(strG), kVar.e());
                }
                kVar.a();
                return strG;
            } catch (j e2) {
                throw JsonReadException.fromJackson(e2);
            }
        }
    };
    public static final JsonReader<String> AccessTokenReader = new JsonReader<String>() { // from class: com.dropbox.core.DbxAuthFinish.3
        @Override // com.dropbox.core.json.JsonReader
        public String read(k kVar) throws JsonReadException, IOException {
            try {
                String strG = kVar.g();
                String tokenPartError = DbxAppInfo.getTokenPartError(strG);
                if (tokenPartError != null) {
                    throw new JsonReadException(tokenPartError, kVar.e());
                }
                kVar.a();
                return strG;
            } catch (j e2) {
                throw JsonReadException.fromJackson(e2);
            }
        }
    };

    public DbxAuthFinish(String str, String str2, String str3) {
        this.accessToken = str;
        this.userId = str2;
        this.urlState = str3;
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUrlState() {
        return this.urlState;
    }

    DbxAuthFinish withUrlState(String str) {
        if (this.urlState != null) {
            throw new IllegalStateException("Already have URL state.");
        }
        return new DbxAuthFinish(this.accessToken, this.userId, str);
    }
}
