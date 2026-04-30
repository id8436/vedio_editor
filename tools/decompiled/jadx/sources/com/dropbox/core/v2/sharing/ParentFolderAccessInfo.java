package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.MemberPermission;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class ParentFolderAccessInfo {
    protected final String folderName;
    protected final String path;
    protected final List<MemberPermission> permissions;
    protected final String sharedFolderId;

    public ParentFolderAccessInfo(String str, String str2, List<MemberPermission> list, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'folderName' is null");
        }
        this.folderName = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str2;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'permissions' is null");
        }
        Iterator<MemberPermission> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'permissions' is null");
            }
        }
        this.permissions = list;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        this.path = str3;
    }

    public String getFolderName() {
        return this.folderName;
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public List<MemberPermission> getPermissions() {
        return this.permissions;
    }

    public String getPath() {
        return this.path;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.folderName, this.sharedFolderId, this.permissions, this.path});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ParentFolderAccessInfo parentFolderAccessInfo = (ParentFolderAccessInfo) obj;
            return (this.folderName == parentFolderAccessInfo.folderName || this.folderName.equals(parentFolderAccessInfo.folderName)) && (this.sharedFolderId == parentFolderAccessInfo.sharedFolderId || this.sharedFolderId.equals(parentFolderAccessInfo.sharedFolderId)) && ((this.permissions == parentFolderAccessInfo.permissions || this.permissions.equals(parentFolderAccessInfo.permissions)) && (this.path == parentFolderAccessInfo.path || this.path.equals(parentFolderAccessInfo.path)));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ParentFolderAccessInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ParentFolderAccessInfo parentFolderAccessInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("folder_name");
            StoneSerializers.string().serialize(parentFolderAccessInfo.folderName, gVar);
            gVar.a("shared_folder_id");
            StoneSerializers.string().serialize(parentFolderAccessInfo.sharedFolderId, gVar);
            gVar.a("permissions");
            StoneSerializers.list(MemberPermission.Serializer.INSTANCE).serialize(parentFolderAccessInfo.permissions, gVar);
            gVar.a("path");
            StoneSerializers.string().serialize(parentFolderAccessInfo.path, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ParentFolderAccessInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            List list;
            String strDeserialize2;
            String strDeserialize3;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list2 = null;
                String str2 = null;
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("folder_name".equals(strD)) {
                        String str4 = str;
                        list = list2;
                        strDeserialize2 = str2;
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str4;
                    } else if ("shared_folder_id".equals(strD)) {
                        strDeserialize3 = str3;
                        List list3 = list2;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str;
                        list = list3;
                    } else if ("permissions".equals(strD)) {
                        strDeserialize2 = str2;
                        strDeserialize3 = str3;
                        String str5 = str;
                        list = (List) StoneSerializers.list(MemberPermission.Serializer.INSTANCE).deserialize(kVar);
                        strDeserialize = str5;
                    } else if ("path".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        list = list2;
                        strDeserialize2 = str2;
                        strDeserialize3 = str3;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        list = list2;
                        strDeserialize2 = str2;
                        strDeserialize3 = str3;
                    }
                    str3 = strDeserialize3;
                    str2 = strDeserialize2;
                    list2 = list;
                    str = strDeserialize;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"folder_name\" missing.");
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"shared_folder_id\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"permissions\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                ParentFolderAccessInfo parentFolderAccessInfo = new ParentFolderAccessInfo(str3, str2, list2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return parentFolderAccessInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
