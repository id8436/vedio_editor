package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.SharedFileMetadata;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ListFilesResult {
    protected final String cursor;
    protected final List<SharedFileMetadata> entries;

    public ListFilesResult(List<SharedFileMetadata> list, String str) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        Iterator<SharedFileMetadata> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }
        this.entries = list;
        this.cursor = str;
    }

    public ListFilesResult(List<SharedFileMetadata> list) {
        this(list, null);
    }

    public List<SharedFileMetadata> getEntries() {
        return this.entries;
    }

    public String getCursor() {
        return this.cursor;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.entries, this.cursor});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListFilesResult listFilesResult = (ListFilesResult) obj;
            if (this.entries == listFilesResult.entries || this.entries.equals(listFilesResult.entries)) {
                if (this.cursor == listFilesResult.cursor) {
                    return true;
                }
                if (this.cursor != null && this.cursor.equals(listFilesResult.cursor)) {
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

    class Serializer extends StructSerializer<ListFilesResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFilesResult listFilesResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("entries");
            StoneSerializers.list(SharedFileMetadata.Serializer.INSTANCE).serialize(listFilesResult.entries, gVar);
            if (listFilesResult.cursor != null) {
                gVar.a("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(listFilesResult.cursor, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFilesResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            List list;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("entries".equals(strD)) {
                        String str3 = str2;
                        list = (List) StoneSerializers.list(SharedFileMetadata.Serializer.INSTANCE).deserialize(kVar);
                        str = str3;
                    } else if ("cursor".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        list = list2;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        list = list2;
                    }
                    list2 = list;
                    str2 = str;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"entries\" missing.");
                }
                ListFilesResult listFilesResult = new ListFilesResult(list2, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFilesResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
