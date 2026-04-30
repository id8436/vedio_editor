package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.Folder;
import com.dropbox.core.v2.paper.FolderSharingPolicyType;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FoldersContainingPaperDoc {
    protected final FolderSharingPolicyType folderSharingPolicyType;
    protected final List<Folder> folders;

    public FoldersContainingPaperDoc(FolderSharingPolicyType folderSharingPolicyType, List<Folder> list) {
        this.folderSharingPolicyType = folderSharingPolicyType;
        if (list != null) {
            Iterator<Folder> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'folders' is null");
                }
            }
        }
        this.folders = list;
    }

    public FoldersContainingPaperDoc() {
        this(null, null);
    }

    public FolderSharingPolicyType getFolderSharingPolicyType() {
        return this.folderSharingPolicyType;
    }

    public List<Folder> getFolders() {
        return this.folders;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected FolderSharingPolicyType folderSharingPolicyType = null;
        protected List<Folder> folders = null;

        protected Builder() {
        }

        public Builder withFolderSharingPolicyType(FolderSharingPolicyType folderSharingPolicyType) {
            this.folderSharingPolicyType = folderSharingPolicyType;
            return this;
        }

        public Builder withFolders(List<Folder> list) {
            if (list != null) {
                Iterator<Folder> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'folders' is null");
                    }
                }
            }
            this.folders = list;
            return this;
        }

        public FoldersContainingPaperDoc build() {
            return new FoldersContainingPaperDoc(this.folderSharingPolicyType, this.folders);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.folderSharingPolicyType, this.folders});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FoldersContainingPaperDoc foldersContainingPaperDoc = (FoldersContainingPaperDoc) obj;
            if (this.folderSharingPolicyType == foldersContainingPaperDoc.folderSharingPolicyType || (this.folderSharingPolicyType != null && this.folderSharingPolicyType.equals(foldersContainingPaperDoc.folderSharingPolicyType))) {
                if (this.folders == foldersContainingPaperDoc.folders) {
                    return true;
                }
                if (this.folders != null && this.folders.equals(foldersContainingPaperDoc.folders)) {
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

    class Serializer extends StructSerializer<FoldersContainingPaperDoc> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FoldersContainingPaperDoc foldersContainingPaperDoc, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (foldersContainingPaperDoc.folderSharingPolicyType != null) {
                gVar.a("folder_sharing_policy_type");
                StoneSerializers.nullable(FolderSharingPolicyType.Serializer.INSTANCE).serialize(foldersContainingPaperDoc.folderSharingPolicyType, gVar);
            }
            if (foldersContainingPaperDoc.folders != null) {
                gVar.a("folders");
                StoneSerializers.nullable(StoneSerializers.list(Folder.Serializer.INSTANCE)).serialize(foldersContainingPaperDoc.folders, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FoldersContainingPaperDoc deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            FolderSharingPolicyType folderSharingPolicyType;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                FolderSharingPolicyType folderSharingPolicyType2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("folder_sharing_policy_type".equals(strD)) {
                        List list3 = list2;
                        folderSharingPolicyType = (FolderSharingPolicyType) StoneSerializers.nullable(FolderSharingPolicyType.Serializer.INSTANCE).deserialize(kVar);
                        list = list3;
                    } else if ("folders".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(Folder.Serializer.INSTANCE)).deserialize(kVar);
                        folderSharingPolicyType = folderSharingPolicyType2;
                    } else {
                        skipValue(kVar);
                        list = list2;
                        folderSharingPolicyType = folderSharingPolicyType2;
                    }
                    folderSharingPolicyType2 = folderSharingPolicyType;
                    list2 = list;
                }
                FoldersContainingPaperDoc foldersContainingPaperDoc = new FoldersContainingPaperDoc(folderSharingPolicyType2, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return foldersContainingPaperDoc;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
