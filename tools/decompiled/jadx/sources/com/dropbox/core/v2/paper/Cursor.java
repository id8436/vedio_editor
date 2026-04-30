package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class Cursor {
    protected final Date expiration;
    protected final String value;

    public Cursor(String str, Date date) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'value' is null");
        }
        this.value = str;
        this.expiration = LangUtil.truncateMillis(date);
    }

    public Cursor(String str) {
        this(str, null);
    }

    public String getValue() {
        return this.value;
    }

    public Date getExpiration() {
        return this.expiration;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.value, this.expiration});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            Cursor cursor = (Cursor) obj;
            if (this.value == cursor.value || this.value.equals(cursor.value)) {
                if (this.expiration == cursor.expiration) {
                    return true;
                }
                if (this.expiration != null && this.expiration.equals(cursor.expiration)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<Cursor> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(Cursor cursor, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("value");
            StoneSerializers.string().serialize(cursor.value, gVar);
            if (cursor.expiration != null) {
                gVar.a("expiration");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(cursor.expiration, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public Cursor deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Date date;
            String strDeserialize;
            Date date2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("value".equals(strD)) {
                        Date date3 = date2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        date = date3;
                    } else if ("expiration".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        date = date2;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    date2 = date;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"value\" missing.");
                }
                Cursor cursor = new Cursor(str, date2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return cursor;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
