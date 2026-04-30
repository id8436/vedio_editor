package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class ListUsersOnPaperDocContinueArgs extends RefPaperDoc {
    protected final String cursor;

    public ListUsersOnPaperDocContinueArgs(String str, String str2) {
        super(str);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = str2;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String getDocId() {
        return this.docId;
    }

    public String getCursor() {
        return this.cursor;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.cursor}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListUsersOnPaperDocContinueArgs listUsersOnPaperDocContinueArgs = (ListUsersOnPaperDocContinueArgs) obj;
            return (this.docId == listUsersOnPaperDocContinueArgs.docId || this.docId.equals(listUsersOnPaperDocContinueArgs.docId)) && (this.cursor == listUsersOnPaperDocContinueArgs.cursor || this.cursor.equals(listUsersOnPaperDocContinueArgs.cursor));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListUsersOnPaperDocContinueArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListUsersOnPaperDocContinueArgs listUsersOnPaperDocContinueArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("doc_id");
            StoneSerializers.string().serialize(listUsersOnPaperDocContinueArgs.docId, gVar);
            gVar.a("cursor");
            StoneSerializers.string().serialize(listUsersOnPaperDocContinueArgs.cursor, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListUsersOnPaperDocContinueArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            String strDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("doc_id".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("cursor".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"doc_id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"cursor\" missing.");
                }
                ListUsersOnPaperDocContinueArgs listUsersOnPaperDocContinueArgs = new ListUsersOnPaperDocContinueArgs(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listUsersOnPaperDocContinueArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
