package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PaperFolderLogInfo {
    protected final String folderId;
    protected final String folderName;

    public PaperFolderLogInfo(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'folderId' is null");
        }
        this.folderId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'folderName' is null");
        }
        this.folderName = str2;
    }

    public String getFolderId() {
        return this.folderId;
    }

    public String getFolderName() {
        return this.folderName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.folderId, this.folderName});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperFolderLogInfo paperFolderLogInfo = (PaperFolderLogInfo) obj;
            return (this.folderId == paperFolderLogInfo.folderId || this.folderId.equals(paperFolderLogInfo.folderId)) && (this.folderName == paperFolderLogInfo.folderName || this.folderName.equals(paperFolderLogInfo.folderName));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperFolderLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperFolderLogInfo paperFolderLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("folder_id");
            StoneSerializers.string().serialize(paperFolderLogInfo.folderId, gVar);
            gVar.a("folder_name");
            StoneSerializers.string().serialize(paperFolderLogInfo.folderName, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperFolderLogInfo deserialize(k kVar, boolean z) throws IOException {
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
                    if ("folder_id".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("folder_name".equals(strD)) {
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
                    throw new j(kVar, "Required field \"folder_id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"folder_name\" missing.");
                }
                PaperFolderLogInfo paperFolderLogInfo = new PaperFolderLogInfo(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperFolderLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
