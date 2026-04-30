package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.GetThumbnailBatchResultEntry;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GetThumbnailBatchResult {
    protected final List<GetThumbnailBatchResultEntry> entries;

    public GetThumbnailBatchResult(List<GetThumbnailBatchResultEntry> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        Iterator<GetThumbnailBatchResultEntry> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }
        this.entries = list;
    }

    public List<GetThumbnailBatchResultEntry> getEntries() {
        return this.entries;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.entries});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetThumbnailBatchResult getThumbnailBatchResult = (GetThumbnailBatchResult) obj;
        return this.entries == getThumbnailBatchResult.entries || this.entries.equals(getThumbnailBatchResult.entries);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetThumbnailBatchResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetThumbnailBatchResult getThumbnailBatchResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("entries");
            StoneSerializers.list(GetThumbnailBatchResultEntry.Serializer.INSTANCE).serialize(getThumbnailBatchResult.entries, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetThumbnailBatchResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("entries".equals(strD)) {
                        list = (List) StoneSerializers.list(GetThumbnailBatchResultEntry.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"entries\" missing.");
                }
                GetThumbnailBatchResult getThumbnailBatchResult = new GetThumbnailBatchResult(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getThumbnailBatchResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
