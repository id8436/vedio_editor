package com.dropbox.core.v2.teamlog;

import android.support.v4.provider.FontsContractCompat;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.FileOrFolderLogInfo;
import com.dropbox.core.v2.teamlog.PathLogInfo;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class FolderLogInfo extends FileOrFolderLogInfo {
    public FolderLogInfo(PathLogInfo pathLogInfo, String str, String str2) {
        super(pathLogInfo, str, str2);
    }

    public FolderLogInfo(PathLogInfo pathLogInfo) {
        this(pathLogInfo, null, null);
    }

    @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo
    public PathLogInfo getPath() {
        return this.path;
    }

    @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo
    public String getDisplayName() {
        return this.displayName;
    }

    @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo
    public String getFileId() {
        return this.fileId;
    }

    public static Builder newBuilder(PathLogInfo pathLogInfo) {
        return new Builder(pathLogInfo);
    }

    public class Builder extends FileOrFolderLogInfo.Builder {
        protected Builder(PathLogInfo pathLogInfo) {
            super(pathLogInfo);
        }

        @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo.Builder
        public Builder withDisplayName(String str) {
            super.withDisplayName(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo.Builder
        public Builder withFileId(String str) {
            super.withFileId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo.Builder
        public FolderLogInfo build() {
            return new FolderLogInfo(this.path, this.displayName, this.fileId);
        }
    }

    @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FolderLogInfo folderLogInfo = (FolderLogInfo) obj;
            if ((this.path == folderLogInfo.path || this.path.equals(folderLogInfo.path)) && (this.displayName == folderLogInfo.displayName || (this.displayName != null && this.displayName.equals(folderLogInfo.displayName)))) {
                if (this.fileId == folderLogInfo.fileId) {
                    return true;
                }
                if (this.fileId != null && this.fileId.equals(folderLogInfo.fileId)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.teamlog.FileOrFolderLogInfo
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FolderLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FolderLogInfo folderLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            PathLogInfo.Serializer.INSTANCE.serialize(folderLogInfo.path, gVar);
            if (folderLogInfo.displayName != null) {
                gVar.a("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(folderLogInfo.displayName, gVar);
            }
            if (folderLogInfo.fileId != null) {
                gVar.a(FontsContractCompat.Columns.FILE_ID);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(folderLogInfo.fileId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FolderLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            PathLogInfo pathLogInfoDeserialize;
            String str3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str4 = null;
                PathLogInfo pathLogInfo = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        String str5 = str3;
                        str2 = str4;
                        pathLogInfoDeserialize = PathLogInfo.Serializer.INSTANCE.deserialize(kVar);
                        str = str5;
                    } else if ("display_name".equals(strD)) {
                        pathLogInfoDeserialize = pathLogInfo;
                        str = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if (FontsContractCompat.Columns.FILE_ID.equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str4;
                        pathLogInfoDeserialize = pathLogInfo;
                    } else {
                        skipValue(kVar);
                        str = str3;
                        str2 = str4;
                        pathLogInfoDeserialize = pathLogInfo;
                    }
                    pathLogInfo = pathLogInfoDeserialize;
                    str4 = str2;
                    str3 = str;
                }
                if (pathLogInfo == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                FolderLogInfo folderLogInfo = new FolderLogInfo(pathLogInfo, str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return folderLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
