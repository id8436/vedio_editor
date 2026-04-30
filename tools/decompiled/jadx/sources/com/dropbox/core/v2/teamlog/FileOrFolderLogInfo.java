package com.dropbox.core.v2.teamlog;

import android.support.v4.provider.FontsContractCompat;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.PathLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FileOrFolderLogInfo {
    protected final String displayName;
    protected final String fileId;
    protected final PathLogInfo path;

    public FileOrFolderLogInfo(PathLogInfo pathLogInfo, String str, String str2) {
        if (pathLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        this.path = pathLogInfo;
        this.displayName = str;
        this.fileId = str2;
    }

    public FileOrFolderLogInfo(PathLogInfo pathLogInfo) {
        this(pathLogInfo, null, null);
    }

    public PathLogInfo getPath() {
        return this.path;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getFileId() {
        return this.fileId;
    }

    public static Builder newBuilder(PathLogInfo pathLogInfo) {
        return new Builder(pathLogInfo);
    }

    public class Builder {
        protected String displayName;
        protected String fileId;
        protected final PathLogInfo path;

        protected Builder(PathLogInfo pathLogInfo) {
            if (pathLogInfo == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            this.path = pathLogInfo;
            this.displayName = null;
            this.fileId = null;
        }

        public Builder withDisplayName(String str) {
            this.displayName = str;
            return this;
        }

        public Builder withFileId(String str) {
            this.fileId = str;
            return this;
        }

        public FileOrFolderLogInfo build() {
            return new FileOrFolderLogInfo(this.path, this.displayName, this.fileId);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.displayName, this.fileId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FileOrFolderLogInfo fileOrFolderLogInfo = (FileOrFolderLogInfo) obj;
            if ((this.path == fileOrFolderLogInfo.path || this.path.equals(fileOrFolderLogInfo.path)) && (this.displayName == fileOrFolderLogInfo.displayName || (this.displayName != null && this.displayName.equals(fileOrFolderLogInfo.displayName)))) {
                if (this.fileId == fileOrFolderLogInfo.fileId) {
                    return true;
                }
                if (this.fileId != null && this.fileId.equals(fileOrFolderLogInfo.fileId)) {
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

    class Serializer extends StructSerializer<FileOrFolderLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileOrFolderLogInfo fileOrFolderLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            PathLogInfo.Serializer.INSTANCE.serialize(fileOrFolderLogInfo.path, gVar);
            if (fileOrFolderLogInfo.displayName != null) {
                gVar.a("display_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileOrFolderLogInfo.displayName, gVar);
            }
            if (fileOrFolderLogInfo.fileId != null) {
                gVar.a(FontsContractCompat.Columns.FILE_ID);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileOrFolderLogInfo.fileId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileOrFolderLogInfo deserialize(k kVar, boolean z) throws IOException {
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
                FileOrFolderLogInfo fileOrFolderLogInfo = new FileOrFolderLogInfo(pathLogInfo, str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileOrFolderLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
