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
public class ListFolderLongpollResult {
    protected final Long backoff;
    protected final boolean changes;

    public ListFolderLongpollResult(boolean z, Long l) {
        this.changes = z;
        this.backoff = l;
    }

    public ListFolderLongpollResult(boolean z) {
        this(z, null);
    }

    public boolean getChanges() {
        return this.changes;
    }

    public Long getBackoff() {
        return this.backoff;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.changes), this.backoff});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListFolderLongpollResult listFolderLongpollResult = (ListFolderLongpollResult) obj;
            if (this.changes == listFolderLongpollResult.changes) {
                if (this.backoff == listFolderLongpollResult.backoff) {
                    return true;
                }
                if (this.backoff != null && this.backoff.equals(listFolderLongpollResult.backoff)) {
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

    class Serializer extends StructSerializer<ListFolderLongpollResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFolderLongpollResult listFolderLongpollResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("changes");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listFolderLongpollResult.changes), gVar);
            if (listFolderLongpollResult.backoff != null) {
                gVar.a("backoff");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize(listFolderLongpollResult.backoff, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFolderLongpollResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long l;
            Boolean boolDeserialize;
            Long l2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("changes".equals(strD)) {
                        Long l3 = l2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        l = l3;
                    } else if ("backoff".equals(strD)) {
                        l = (Long) StoneSerializers.nullable(StoneSerializers.uInt64()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        l = l2;
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                    l2 = l;
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"changes\" missing.");
                }
                ListFolderLongpollResult listFolderLongpollResult = new ListFolderLongpollResult(bool.booleanValue(), l2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFolderLongpollResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
