package com.dropbox.core;

import com.d.a.a.g;
import com.d.a.a.i;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonWriter;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class DbxHost {
    public static final DbxHost DEFAULT = new DbxHost("api.dropboxapi.com", "content.dropboxapi.com", "www.dropbox.com", "notify.dropboxapi.com");
    public static final JsonReader<DbxHost> Reader = new JsonReader<DbxHost>() { // from class: com.dropbox.core.DbxHost.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public DbxHost read(k kVar) throws JsonReadException, IOException {
            String field;
            String str;
            String str2;
            String field2;
            String str3 = null;
            o oVarC = kVar.c();
            if (oVarC == o.VALUE_STRING) {
                String strG = kVar.g();
                JsonReader.nextToken(kVar);
                return DbxHost.fromBaseHost(strG);
            }
            if (oVarC == o.START_OBJECT) {
                i iVarE = kVar.e();
                nextToken(kVar);
                String str4 = null;
                String str5 = null;
                String str6 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    try {
                        if (strD.equals("api")) {
                            String str7 = str3;
                            str = str4;
                            str2 = str5;
                            field2 = JsonReader.StringReader.readField(kVar, strD, str6);
                            field = str7;
                        } else if (strD.equals("content")) {
                            String field3 = JsonReader.StringReader.readField(kVar, strD, str5);
                            field2 = str6;
                            String str8 = str4;
                            str2 = field3;
                            field = str3;
                            str = str8;
                        } else if (strD.equals("web")) {
                            String field4 = JsonReader.StringReader.readField(kVar, strD, str4);
                            str2 = str5;
                            field2 = str6;
                            String str9 = str3;
                            str = field4;
                            field = str9;
                        } else if (strD.equals("notify")) {
                            field = JsonReader.StringReader.readField(kVar, strD, str3);
                            str = str4;
                            str2 = str5;
                            field2 = str6;
                        } else {
                            throw new JsonReadException("unknown field", kVar.f());
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
                if (str6 == null) {
                    throw new JsonReadException("missing field \"api\"", iVarE);
                }
                if (str5 == null) {
                    throw new JsonReadException("missing field \"content\"", iVarE);
                }
                if (str4 == null) {
                    throw new JsonReadException("missing field \"web\"", iVarE);
                }
                if (str3 == null) {
                    throw new JsonReadException("missing field \"notify\"", iVarE);
                }
                return new DbxHost(str6, str5, str4, str3);
            }
            throw new JsonReadException("expecting a string or an object", kVar.e());
        }
    };
    public static final JsonWriter<DbxHost> Writer = new JsonWriter<DbxHost>() { // from class: com.dropbox.core.DbxHost.2
        @Override // com.dropbox.core.json.JsonWriter
        public void write(DbxHost dbxHost, g gVar) throws IOException {
            String strInferBaseHost = dbxHost.inferBaseHost();
            if (strInferBaseHost != null) {
                gVar.b(strInferBaseHost);
                return;
            }
            gVar.e();
            gVar.a("api", dbxHost.api);
            gVar.a("content", dbxHost.content);
            gVar.a("web", dbxHost.web);
            gVar.a("notify", dbxHost.notify);
            gVar.f();
        }
    };
    private final String api;
    private final String content;
    private final String notify;
    private final String web;

    public DbxHost(String str, String str2, String str3, String str4) {
        this.api = str;
        this.content = str2;
        this.web = str3;
        this.notify = str4;
    }

    public String getApi() {
        return this.api;
    }

    public String getContent() {
        return this.content;
    }

    public String getWeb() {
        return this.web;
    }

    public String getNotify() {
        return this.notify;
    }

    public int hashCode() {
        return Arrays.hashCode(new String[]{this.api, this.content, this.web, this.notify});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DbxHost)) {
            return false;
        }
        DbxHost dbxHost = (DbxHost) obj;
        return dbxHost.api.equals(this.api) && dbxHost.content.equals(this.content) && dbxHost.web.equals(this.web) && dbxHost.notify.equals(this.notify);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DbxHost fromBaseHost(String str) {
        return new DbxHost("api-" + str, "api-content-" + str, "meta-" + str, "api-notify-" + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String inferBaseHost() {
        if (this.web.startsWith("meta-") && this.api.startsWith("api-") && this.content.startsWith("api-content-") && this.notify.startsWith("api-notify-")) {
            String strSubstring = this.web.substring("meta-".length());
            String strSubstring2 = this.api.substring("api-".length());
            String strSubstring3 = this.content.substring("api-content-".length());
            String strSubstring4 = this.notify.substring("api-notify-".length());
            if (strSubstring.equals(strSubstring2) && strSubstring.equals(strSubstring3) && strSubstring.equals(strSubstring4)) {
                return strSubstring;
            }
        }
        return null;
    }
}
