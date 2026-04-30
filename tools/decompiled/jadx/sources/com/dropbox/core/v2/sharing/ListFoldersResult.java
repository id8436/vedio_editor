package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.SharedFolderMetadata;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ListFoldersResult {
    protected final String cursor;
    protected final List<SharedFolderMetadata> entries;

    public ListFoldersResult(List<SharedFolderMetadata> list, String str) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        Iterator<SharedFolderMetadata> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }
        this.entries = list;
        this.cursor = str;
    }

    public ListFoldersResult(List<SharedFolderMetadata> list) {
        this(list, null);
    }

    public List<SharedFolderMetadata> getEntries() {
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
            ListFoldersResult listFoldersResult = (ListFoldersResult) obj;
            if (this.entries == listFoldersResult.entries || this.entries.equals(listFoldersResult.entries)) {
                if (this.cursor == listFoldersResult.cursor) {
                    return true;
                }
                if (this.cursor != null && this.cursor.equals(listFoldersResult.cursor)) {
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

    class Serializer extends StructSerializer<ListFoldersResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFoldersResult listFoldersResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("entries");
            StoneSerializers.list(SharedFolderMetadata.Serializer.INSTANCE).serialize(listFoldersResult.entries, gVar);
            if (listFoldersResult.cursor != null) {
                gVar.a("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(listFoldersResult.cursor, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFoldersResult deserialize(k kVar, boolean z) throws IOException {
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
                        list = (List) StoneSerializers.list(SharedFolderMetadata.Serializer.INSTANCE).deserialize(kVar);
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
                ListFoldersResult listFoldersResult = new ListFoldersResult(list2, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFoldersResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
