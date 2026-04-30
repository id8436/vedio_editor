package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class ListFileMembersBatchArg {
    protected final List<String> files;
    protected final long limit;

    public ListFileMembersBatchArg(List<String> list, long j) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'files' is null");
        }
        if (list.size() > 100) {
            throw new IllegalArgumentException("List 'files' has more than 100 items");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list 'files' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("Stringan item in list 'files' is shorter than 1");
            }
            if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
                throw new IllegalArgumentException("Stringan item in list 'files' does not match pattern");
            }
        }
        this.files = list;
        if (j > 20) {
            throw new IllegalArgumentException("Number 'limit' is larger than 20L");
        }
        this.limit = j;
    }

    public ListFileMembersBatchArg(List<String> list) {
        this(list, 10L);
    }

    public List<String> getFiles() {
        return this.files;
    }

    public long getLimit() {
        return this.limit;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.files, Long.valueOf(this.limit)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListFileMembersBatchArg listFileMembersBatchArg = (ListFileMembersBatchArg) obj;
            return (this.files == listFileMembersBatchArg.files || this.files.equals(listFileMembersBatchArg.files)) && this.limit == listFileMembersBatchArg.limit;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListFileMembersBatchArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFileMembersBatchArg listFileMembersBatchArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("files");
            StoneSerializers.list(StoneSerializers.string()).serialize(listFileMembersBatchArg.files, gVar);
            gVar.a("limit");
            StoneSerializers.uInt32().serialize(Long.valueOf(listFileMembersBatchArg.limit), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFileMembersBatchArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            List list;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = 10L;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("files".equals(strD)) {
                        Long l2 = l;
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("limit".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                        list = list2;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        list = list2;
                    }
                    list2 = list;
                    l = lDeserialize;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"files\" missing.");
                }
                ListFileMembersBatchArg listFileMembersBatchArg = new ListFileMembersBatchArg(list2, l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFileMembersBatchArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
