package com.dropbox.core.v1;

import com.d.a.a.i;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DbxLongpollDeltaResult {
    public static final JsonReader<DbxLongpollDeltaResult> Reader = new JsonReader<DbxLongpollDeltaResult>() { // from class: com.dropbox.core.v1.DbxLongpollDeltaResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public DbxLongpollDeltaResult read(k kVar) throws JsonReadException, IOException {
            long unsignedLongField;
            Boolean field;
            i iVarExpectObjectStart = JsonReader.expectObjectStart(kVar);
            Boolean bool = null;
            long j = -1;
            while (kVar.c() == o.FIELD_NAME) {
                String strD = kVar.d();
                kVar.a();
                try {
                    if (strD.equals("changes")) {
                        long j2 = j;
                        field = JsonReader.BooleanReader.readField(kVar, strD, bool);
                        unsignedLongField = j2;
                    } else if (strD.equals("backoff")) {
                        unsignedLongField = JsonReader.readUnsignedLongField(kVar, strD, j);
                        field = bool;
                    } else {
                        JsonReader.skipValue(kVar);
                        unsignedLongField = j;
                        field = bool;
                    }
                    bool = field;
                    j = unsignedLongField;
                } catch (JsonReadException e2) {
                    throw e2.addFieldContext(strD);
                }
            }
            JsonReader.expectObjectEnd(kVar);
            if (bool == null) {
                throw new JsonReadException("missing field \"changes\"", iVarExpectObjectStart);
            }
            return new DbxLongpollDeltaResult(bool.booleanValue(), j);
        }
    };
    public long backoff;
    public boolean mightHaveChanges;

    public DbxLongpollDeltaResult(boolean z, long j) {
        this.mightHaveChanges = z;
        this.backoff = j;
    }
}
