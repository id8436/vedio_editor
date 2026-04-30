package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.files.FileMetadata;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ListRevisionsResult {
    protected final List<FileMetadata> entries;
    protected final boolean isDeleted;
    protected final Date serverDeleted;

    public ListRevisionsResult(boolean z, List<FileMetadata> list, Date date) {
        this.isDeleted = z;
        this.serverDeleted = LangUtil.truncateMillis(date);
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        Iterator<FileMetadata> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }
        this.entries = list;
    }

    public ListRevisionsResult(boolean z, List<FileMetadata> list) {
        this(z, list, null);
    }

    public boolean getIsDeleted() {
        return this.isDeleted;
    }

    public List<FileMetadata> getEntries() {
        return this.entries;
    }

    public Date getServerDeleted() {
        return this.serverDeleted;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.isDeleted), this.serverDeleted, this.entries});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListRevisionsResult listRevisionsResult = (ListRevisionsResult) obj;
            if (this.isDeleted == listRevisionsResult.isDeleted && (this.entries == listRevisionsResult.entries || this.entries.equals(listRevisionsResult.entries))) {
                if (this.serverDeleted == listRevisionsResult.serverDeleted) {
                    return true;
                }
                if (this.serverDeleted != null && this.serverDeleted.equals(listRevisionsResult.serverDeleted)) {
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

    class Serializer extends StructSerializer<ListRevisionsResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListRevisionsResult listRevisionsResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("is_deleted");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listRevisionsResult.isDeleted), gVar);
            gVar.a("entries");
            StoneSerializers.list(FileMetadata.Serializer.INSTANCE).serialize(listRevisionsResult.entries, gVar);
            if (listRevisionsResult.serverDeleted != null) {
                gVar.a("server_deleted");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(listRevisionsResult.serverDeleted, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListRevisionsResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Date date;
            List list;
            Boolean boolDeserialize;
            Date date2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list2 = null;
                Boolean bool = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("is_deleted".equals(strD)) {
                        Date date3 = date2;
                        list = list2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        date = date3;
                    } else if ("entries".equals(strD)) {
                        boolDeserialize = bool;
                        date = date2;
                        list = (List) StoneSerializers.list(FileMetadata.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("server_deleted".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        list = list2;
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        date = date2;
                        list = list2;
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                    list2 = list;
                    date2 = date;
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"is_deleted\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"entries\" missing.");
                }
                ListRevisionsResult listRevisionsResult = new ListRevisionsResult(bool.booleanValue(), list2, date2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listRevisionsResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
