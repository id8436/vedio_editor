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
class ListUsersOnFolderArgs extends RefPaperDoc {
    protected final int limit;

    public ListUsersOnFolderArgs(String str, int i) {
        super(str);
        if (i < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1");
        }
        if (i > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000");
        }
        this.limit = i;
    }

    public ListUsersOnFolderArgs(String str) {
        this(str, 1000);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String getDocId() {
        return this.docId;
    }

    public int getLimit() {
        return this.limit;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.limit)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListUsersOnFolderArgs listUsersOnFolderArgs = (ListUsersOnFolderArgs) obj;
            return (this.docId == listUsersOnFolderArgs.docId || this.docId.equals(listUsersOnFolderArgs.docId)) && this.limit == listUsersOnFolderArgs.limit;
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

    class Serializer extends StructSerializer<ListUsersOnFolderArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListUsersOnFolderArgs listUsersOnFolderArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("doc_id");
            StoneSerializers.string().serialize(listUsersOnFolderArgs.docId, gVar);
            gVar.a("limit");
            StoneSerializers.int32().serialize(Integer.valueOf(listUsersOnFolderArgs.limit), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListUsersOnFolderArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Integer numDeserialize;
            String strDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Integer num = 1000;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("doc_id".equals(strD)) {
                        Integer num2 = num;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        numDeserialize = num2;
                    } else if ("limit".equals(strD)) {
                        numDeserialize = StoneSerializers.int32().deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        numDeserialize = num;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    num = numDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"doc_id\" missing.");
                }
                ListUsersOnFolderArgs listUsersOnFolderArgs = new ListUsersOnFolderArgs(str, num.intValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listUsersOnFolderArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
