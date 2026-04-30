package com.dropbox.core;

import com.d.a.a.i;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.dropbox.core.util.StringUtil;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DbxAppInfo extends Dumpable {
    private final DbxHost host;
    private final String key;
    private final String secret;
    public static final JsonReader<DbxAppInfo> Reader = new JsonReader<DbxAppInfo>() { // from class: com.dropbox.core.DbxAppInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final DbxAppInfo read(k kVar) throws JsonReadException, IOException {
            DbxHost field;
            String str;
            String field2;
            DbxHost dbxHost = null;
            i iVarExpectObjectStart = JsonReader.expectObjectStart(kVar);
            String str2 = null;
            String str3 = null;
            while (kVar.c() == o.FIELD_NAME) {
                String strD = kVar.d();
                kVar.a();
                try {
                    if (strD.equals("key")) {
                        DbxHost dbxHost2 = dbxHost;
                        str = str2;
                        field2 = DbxAppInfo.KeyReader.readField(kVar, strD, str3);
                        field = dbxHost2;
                    } else if (strD.equals("secret")) {
                        String field3 = DbxAppInfo.SecretReader.readField(kVar, strD, str2);
                        field2 = str3;
                        field = dbxHost;
                        str = field3;
                    } else if (strD.equals("host")) {
                        field = DbxHost.Reader.readField(kVar, strD, dbxHost);
                        str = str2;
                        field2 = str3;
                    } else {
                        JsonReader.skipValue(kVar);
                        field = dbxHost;
                        str = str2;
                        field2 = str3;
                    }
                    str3 = field2;
                    str2 = str;
                    dbxHost = field;
                } catch (JsonReadException e2) {
                    throw e2.addFieldContext(strD);
                }
            }
            JsonReader.expectObjectEnd(kVar);
            if (str3 == null) {
                throw new JsonReadException("missing field \"key\"", iVarExpectObjectStart);
            }
            if (str2 == null) {
                throw new JsonReadException("missing field \"secret\"", iVarExpectObjectStart);
            }
            if (dbxHost == null) {
                dbxHost = DbxHost.DEFAULT;
            }
            return new DbxAppInfo(str3, str2, dbxHost);
        }
    };
    public static final JsonReader<String> KeyReader = new JsonReader<String>() { // from class: com.dropbox.core.DbxAppInfo.2
        @Override // com.dropbox.core.json.JsonReader
        public String read(k kVar) throws JsonReadException, IOException {
            try {
                String strG = kVar.g();
                String keyFormatError = DbxAppInfo.getKeyFormatError(strG);
                if (keyFormatError != null) {
                    throw new JsonReadException("bad format for app key: " + keyFormatError, kVar.e());
                }
                kVar.a();
                return strG;
            } catch (j e2) {
                throw JsonReadException.fromJackson(e2);
            }
        }
    };
    public static final JsonReader<String> SecretReader = new JsonReader<String>() { // from class: com.dropbox.core.DbxAppInfo.3
        @Override // com.dropbox.core.json.JsonReader
        public String read(k kVar) throws JsonReadException, IOException {
            try {
                String strG = kVar.g();
                String keyFormatError = DbxAppInfo.getKeyFormatError(strG);
                if (keyFormatError != null) {
                    throw new JsonReadException("bad format for app secret: " + keyFormatError, kVar.e());
                }
                kVar.a();
                return strG;
            } catch (j e2) {
                throw JsonReadException.fromJackson(e2);
            }
        }
    };

    public DbxAppInfo(String str, String str2) {
        checkKeyArg(str);
        checkSecretArg(str2);
        this.key = str;
        this.secret = str2;
        this.host = DbxHost.DEFAULT;
    }

    public DbxAppInfo(String str, String str2, DbxHost dbxHost) {
        checkKeyArg(str);
        checkSecretArg(str2);
        this.key = str;
        this.secret = str2;
        this.host = dbxHost;
    }

    public String getKey() {
        return this.key;
    }

    public String getSecret() {
        return this.secret;
    }

    public DbxHost getHost() {
        return this.host;
    }

    @Override // com.dropbox.core.util.Dumpable
    protected void dumpFields(DumpWriter dumpWriter) {
        dumpWriter.f("key").v(this.key);
        dumpWriter.f("secret").v(this.secret);
    }

    public static String getKeyFormatError(String str) {
        return getTokenPartError(str);
    }

    public static String getSecretFormatError(String str) {
        return getTokenPartError(str);
    }

    public static String getTokenPartError(String str) {
        if (str == null) {
            return "can't be null";
        }
        if (str.length() == 0) {
            return "can't be empty";
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt < '!' || cCharAt > '~') {
                return "invalid character at index " + i + ": " + StringUtil.jq("" + cCharAt);
            }
        }
        return null;
    }

    public static void checkKeyArg(String str) {
        String tokenPartError = getTokenPartError(str);
        if (tokenPartError != null) {
            throw new IllegalArgumentException("Bad 'key': " + tokenPartError);
        }
    }

    public static void checkSecretArg(String str) {
        String tokenPartError = getTokenPartError(str);
        if (tokenPartError != null) {
            throw new IllegalArgumentException("Bad 'secret': " + tokenPartError);
        }
    }
}
