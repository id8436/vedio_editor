package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class ListFolderLongpollArg {
    protected final String cursor;
    protected final long timeout;

    public ListFolderLongpollArg(String str, long j) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'cursor' is shorter than 1");
        }
        this.cursor = str;
        if (j < 30) {
            throw new IllegalArgumentException("Number 'timeout' is smaller than 30L");
        }
        if (j > 480) {
            throw new IllegalArgumentException("Number 'timeout' is larger than 480L");
        }
        this.timeout = j;
    }

    public ListFolderLongpollArg(String str) {
        this(str, 30L);
    }

    public String getCursor() {
        return this.cursor;
    }

    public long getTimeout() {
        return this.timeout;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.cursor, Long.valueOf(this.timeout)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListFolderLongpollArg listFolderLongpollArg = (ListFolderLongpollArg) obj;
            return (this.cursor == listFolderLongpollArg.cursor || this.cursor.equals(listFolderLongpollArg.cursor)) && this.timeout == listFolderLongpollArg.timeout;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListFolderLongpollArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFolderLongpollArg listFolderLongpollArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("cursor");
            StoneSerializers.string().serialize(listFolderLongpollArg.cursor, gVar);
            gVar.a("timeout");
            StoneSerializers.uInt64().serialize(Long.valueOf(listFolderLongpollArg.timeout), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFolderLongpollArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            String strDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = 30L;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("cursor".equals(strD)) {
                        Long l2 = l;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("timeout".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    l = lDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"cursor\" missing.");
                }
                ListFolderLongpollArg listFolderLongpollArg = new ListFolderLongpollArg(str, l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFolderLongpollArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
