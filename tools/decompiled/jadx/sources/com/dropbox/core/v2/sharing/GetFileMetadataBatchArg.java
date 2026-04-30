package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.FileAction;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class GetFileMetadataBatchArg {
    protected final List<FileAction> actions;
    protected final List<String> files;

    public GetFileMetadataBatchArg(List<String> list, List<FileAction> list2) {
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
        if (list2 != null) {
            Iterator<FileAction> it = list2.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        this.actions = list2;
    }

    public GetFileMetadataBatchArg(List<String> list) {
        this(list, null);
    }

    public List<String> getFiles() {
        return this.files;
    }

    public List<FileAction> getActions() {
        return this.actions;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.files, this.actions});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetFileMetadataBatchArg getFileMetadataBatchArg = (GetFileMetadataBatchArg) obj;
            if (this.files == getFileMetadataBatchArg.files || this.files.equals(getFileMetadataBatchArg.files)) {
                if (this.actions == getFileMetadataBatchArg.actions) {
                    return true;
                }
                if (this.actions != null && this.actions.equals(getFileMetadataBatchArg.actions)) {
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

    class Serializer extends StructSerializer<GetFileMetadataBatchArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetFileMetadataBatchArg getFileMetadataBatchArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("files");
            StoneSerializers.list(StoneSerializers.string()).serialize(getFileMetadataBatchArg.files, gVar);
            if (getFileMetadataBatchArg.actions != null) {
                gVar.a("actions");
                StoneSerializers.nullable(StoneSerializers.list(FileAction.Serializer.INSTANCE)).serialize(getFileMetadataBatchArg.actions, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetFileMetadataBatchArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            List list2;
            List list3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("files".equals(strD)) {
                        List list5 = list3;
                        list2 = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
                        list = list5;
                    } else if ("actions".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(FileAction.Serializer.INSTANCE)).deserialize(kVar);
                        list2 = list4;
                    } else {
                        skipValue(kVar);
                        list = list3;
                        list2 = list4;
                    }
                    list4 = list2;
                    list3 = list;
                }
                if (list4 == null) {
                    throw new j(kVar, "Required field \"files\" missing.");
                }
                GetFileMetadataBatchArg getFileMetadataBatchArg = new GetFileMetadataBatchArg(list4, list3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getFileMetadataBatchArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
