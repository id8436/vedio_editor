package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.Cursor;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ListPaperDocsResponse {
    protected final Cursor cursor;
    protected final List<String> docIds;
    protected final boolean hasMore;

    public ListPaperDocsResponse(List<String> list, Cursor cursor, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'docIds' is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'docIds' is null");
            }
        }
        this.docIds = list;
        if (cursor == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = cursor;
        this.hasMore = z;
    }

    public List<String> getDocIds() {
        return this.docIds;
    }

    public Cursor getCursor() {
        return this.cursor;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.docIds, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListPaperDocsResponse listPaperDocsResponse = (ListPaperDocsResponse) obj;
            return (this.docIds == listPaperDocsResponse.docIds || this.docIds.equals(listPaperDocsResponse.docIds)) && (this.cursor == listPaperDocsResponse.cursor || this.cursor.equals(listPaperDocsResponse.cursor)) && this.hasMore == listPaperDocsResponse.hasMore;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListPaperDocsResponse> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListPaperDocsResponse listPaperDocsResponse, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("doc_ids");
            StoneSerializers.list(StoneSerializers.string()).serialize(listPaperDocsResponse.docIds, gVar);
            gVar.a("cursor");
            Cursor.Serializer.INSTANCE.serialize(listPaperDocsResponse.cursor, gVar);
            gVar.a("has_more");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listPaperDocsResponse.hasMore), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListPaperDocsResponse deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Cursor cursorDeserialize;
            List list;
            Boolean bool = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Cursor cursor = null;
                List list2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("doc_ids".equals(strD)) {
                        Boolean bool2 = bool;
                        cursorDeserialize = cursor;
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("cursor".equals(strD)) {
                        list = list2;
                        boolDeserialize = bool;
                        cursorDeserialize = Cursor.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("has_more".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        cursorDeserialize = cursor;
                        list = list2;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        cursorDeserialize = cursor;
                        list = list2;
                    }
                    list2 = list;
                    cursor = cursorDeserialize;
                    bool = boolDeserialize;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"doc_ids\" missing.");
                }
                if (cursor == null) {
                    throw new j(kVar, "Required field \"cursor\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"has_more\" missing.");
                }
                ListPaperDocsResponse listPaperDocsResponse = new ListPaperDocsResponse(list2, cursor, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listPaperDocsResponse;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
