package com.dropbox.core.v1;

import com.d.a.a.i;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import java.io.IOException;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public final class DbxUrlWithExpiration {
    public static final JsonReader<DbxUrlWithExpiration> Reader = new JsonReader<DbxUrlWithExpiration>() { // from class: com.dropbox.core.v1.DbxUrlWithExpiration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public DbxUrlWithExpiration read(k kVar) throws JsonReadException, IOException {
            Date field;
            String field2;
            Date date = null;
            i iVarExpectObjectStart = JsonReader.expectObjectStart(kVar);
            String str = null;
            while (kVar.c() == o.FIELD_NAME) {
                String strD = kVar.d();
                kVar.a();
                try {
                    if (strD.equals("url")) {
                        Date date2 = date;
                        field2 = JsonReader.StringReader.readField(kVar, strD, str);
                        field = date2;
                    } else if (strD.equals("expires")) {
                        field = JsonDateReader.Dropbox.readField(kVar, strD, date);
                        field2 = str;
                    } else {
                        JsonReader.skipValue(kVar);
                        field = date;
                        field2 = str;
                    }
                    str = field2;
                    date = field;
                } catch (JsonReadException e2) {
                    throw e2.addFieldContext(strD);
                }
            }
            JsonReader.expectObjectEnd(kVar);
            if (str == null) {
                throw new JsonReadException("missing field \"url\"", iVarExpectObjectStart);
            }
            if (date == null) {
                throw new JsonReadException("missing field \"expires\"", iVarExpectObjectStart);
            }
            return new DbxUrlWithExpiration(str, date);
        }
    };
    public final Date expires;
    public final String url;

    public DbxUrlWithExpiration(String str, Date date) {
        this.url = str;
        this.expires = date;
    }
}
