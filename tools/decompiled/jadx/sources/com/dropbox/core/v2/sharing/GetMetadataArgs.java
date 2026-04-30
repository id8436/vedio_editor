package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.FolderAction;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class GetMetadataArgs {
    protected final List<FolderAction> actions;
    protected final String sharedFolderId;

    public GetMetadataArgs(String str, List<FolderAction> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str;
        if (list != null) {
            Iterator<FolderAction> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        this.actions = list;
    }

    public GetMetadataArgs(String str) {
        this(str, null);
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public List<FolderAction> getActions() {
        return this.actions;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderId, this.actions});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetMetadataArgs getMetadataArgs = (GetMetadataArgs) obj;
            if (this.sharedFolderId == getMetadataArgs.sharedFolderId || this.sharedFolderId.equals(getMetadataArgs.sharedFolderId)) {
                if (this.actions == getMetadataArgs.actions) {
                    return true;
                }
                if (this.actions != null && this.actions.equals(getMetadataArgs.actions)) {
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

    class Serializer extends StructSerializer<GetMetadataArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetMetadataArgs getMetadataArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_folder_id");
            StoneSerializers.string().serialize(getMetadataArgs.sharedFolderId, gVar);
            if (getMetadataArgs.actions != null) {
                gVar.a("actions");
                StoneSerializers.nullable(StoneSerializers.list(FolderAction.Serializer.INSTANCE)).serialize(getMetadataArgs.actions, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetMetadataArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            String strDeserialize;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("shared_folder_id".equals(strD)) {
                        List list3 = list2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        list = list3;
                    } else if ("actions".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(FolderAction.Serializer.INSTANCE)).deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        list = list2;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    list2 = list;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"shared_folder_id\" missing.");
                }
                GetMetadataArgs getMetadataArgs = new GetMetadataArgs(str, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getMetadataArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
