package com.dropbox.core;

import com.d.a.a.g;
import com.d.a.a.i;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class DbxAuthInfo {
    public static final JsonReader<DbxAuthInfo> Reader = new JsonReader<DbxAuthInfo>() { // from class: com.dropbox.core.DbxAuthInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final DbxAuthInfo read(k kVar) throws JsonReadException, IOException {
            String field;
            DbxHost field2;
            String str = null;
            i iVarExpectObjectStart = JsonReader.expectObjectStart(kVar);
            DbxHost dbxHost = null;
            while (kVar.c() == o.FIELD_NAME) {
                String strD = kVar.d();
                kVar.a();
                try {
                    if (strD.equals("host")) {
                        String str2 = str;
                        field2 = DbxHost.Reader.readField(kVar, strD, dbxHost);
                        field = str2;
                    } else if (strD.equals("access_token")) {
                        field = StringReader.readField(kVar, strD, str);
                        field2 = dbxHost;
                    } else {
                        JsonReader.skipValue(kVar);
                        field = str;
                        field2 = dbxHost;
                    }
                    dbxHost = field2;
                    str = field;
                } catch (JsonReadException e2) {
                    throw e2.addFieldContext(strD);
                }
            }
            JsonReader.expectObjectEnd(kVar);
            if (str == null) {
                throw new JsonReadException("missing field \"access_token\"", iVarExpectObjectStart);
            }
            if (dbxHost == null) {
                dbxHost = DbxHost.DEFAULT;
            }
            return new DbxAuthInfo(str, dbxHost);
        }
    };
    public static final JsonWriter<DbxAuthInfo> Writer = new JsonWriter<DbxAuthInfo>() { // from class: com.dropbox.core.DbxAuthInfo.2
        @Override // com.dropbox.core.json.JsonWriter
        public void write(DbxAuthInfo dbxAuthInfo, g gVar) throws IOException {
            gVar.e();
            gVar.a("access_token", dbxAuthInfo.accessToken);
            if (!dbxAuthInfo.host.equals(DbxHost.DEFAULT)) {
                gVar.a("host");
                DbxHost.Writer.write(dbxAuthInfo.host, gVar);
            }
            gVar.f();
        }
    };
    private final String accessToken;
    private final DbxHost host;

    public DbxAuthInfo(String str, DbxHost dbxHost) {
        if (str == null) {
            throw new IllegalArgumentException("'accessToken' can't be null");
        }
        if (dbxHost == null) {
            throw new IllegalArgumentException("'host' can't be null");
        }
        this.accessToken = str;
        this.host = dbxHost;
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public DbxHost getHost() {
        return this.host;
    }
}
