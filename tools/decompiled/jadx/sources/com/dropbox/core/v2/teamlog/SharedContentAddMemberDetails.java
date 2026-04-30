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
public class SharedContentAddMemberDetails {
    protected final String originalFolderName;
    protected final String sharedFolderType;
    protected final String sharingPermission;
    protected final long targetAssetIndex;

    public SharedContentAddMemberDetails(long j, String str, String str2, String str3) {
        this.targetAssetIndex = j;
        this.originalFolderName = str;
        this.sharingPermission = str2;
        this.sharedFolderType = str3;
    }

    public SharedContentAddMemberDetails(long j) {
        this(j, null, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getSharingPermission() {
        return this.sharingPermission;
    }

    public String getSharedFolderType() {
        return this.sharedFolderType;
    }

    public static Builder newBuilder(long j) {
        return new Builder(j);
    }

    public class Builder {
        protected final long targetAssetIndex;
        protected String originalFolderName = null;
        protected String sharingPermission = null;
        protected String sharedFolderType = null;

        protected Builder(long j) {
            this.targetAssetIndex = j;
        }

        public Builder withOriginalFolderName(String str) {
            this.originalFolderName = str;
            return this;
        }

        public Builder withSharingPermission(String str) {
            this.sharingPermission = str;
            return this;
        }

        public Builder withSharedFolderType(String str) {
            this.sharedFolderType = str;
            return this;
        }

        public SharedContentAddMemberDetails build() {
            return new SharedContentAddMemberDetails(this.targetAssetIndex, this.originalFolderName, this.sharingPermission, this.sharedFolderType);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.sharingPermission, this.sharedFolderType});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedContentAddMemberDetails sharedContentAddMemberDetails = (SharedContentAddMemberDetails) obj;
            if (this.targetAssetIndex == sharedContentAddMemberDetails.targetAssetIndex && ((this.originalFolderName == sharedContentAddMemberDetails.originalFolderName || (this.originalFolderName != null && this.originalFolderName.equals(sharedContentAddMemberDetails.originalFolderName))) && (this.sharingPermission == sharedContentAddMemberDetails.sharingPermission || (this.sharingPermission != null && this.sharingPermission.equals(sharedContentAddMemberDetails.sharingPermission))))) {
                if (this.sharedFolderType == sharedContentAddMemberDetails.sharedFolderType) {
                    return true;
                }
                if (this.sharedFolderType != null && this.sharedFolderType.equals(sharedContentAddMemberDetails.sharedFolderType)) {
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

    class Serializer extends StructSerializer<SharedContentAddMemberDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentAddMemberDetails sharedContentAddMemberDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedContentAddMemberDetails.targetAssetIndex), gVar);
            if (sharedContentAddMemberDetails.originalFolderName != null) {
                gVar.a("original_folder_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentAddMemberDetails.originalFolderName, gVar);
            }
            if (sharedContentAddMemberDetails.sharingPermission != null) {
                gVar.a("sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentAddMemberDetails.sharingPermission, gVar);
            }
            if (sharedContentAddMemberDetails.sharedFolderType != null) {
                gVar.a("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentAddMemberDetails.sharedFolderType, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedContentAddMemberDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                String str3 = null;
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else if ("original_folder_name".equals(strD)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("sharing_permission".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("shared_folder_type".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                SharedContentAddMemberDetails sharedContentAddMemberDetails = new SharedContentAddMemberDetails(l.longValue(), str3, str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedContentAddMemberDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
