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
public class SharedContentRemoveMemberDetails {
    protected final String originalFolderName;
    protected final String sharedFolderType;
    protected final String sharingPermission;
    protected final long targetAssetIndex;

    public SharedContentRemoveMemberDetails(long j, String str, String str2, String str3) {
        this.targetAssetIndex = j;
        this.originalFolderName = str;
        this.sharingPermission = str2;
        this.sharedFolderType = str3;
    }

    public SharedContentRemoveMemberDetails(long j) {
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

        public SharedContentRemoveMemberDetails build() {
            return new SharedContentRemoveMemberDetails(this.targetAssetIndex, this.originalFolderName, this.sharingPermission, this.sharedFolderType);
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
            SharedContentRemoveMemberDetails sharedContentRemoveMemberDetails = (SharedContentRemoveMemberDetails) obj;
            if (this.targetAssetIndex == sharedContentRemoveMemberDetails.targetAssetIndex && ((this.originalFolderName == sharedContentRemoveMemberDetails.originalFolderName || (this.originalFolderName != null && this.originalFolderName.equals(sharedContentRemoveMemberDetails.originalFolderName))) && (this.sharingPermission == sharedContentRemoveMemberDetails.sharingPermission || (this.sharingPermission != null && this.sharingPermission.equals(sharedContentRemoveMemberDetails.sharingPermission))))) {
                if (this.sharedFolderType == sharedContentRemoveMemberDetails.sharedFolderType) {
                    return true;
                }
                if (this.sharedFolderType != null && this.sharedFolderType.equals(sharedContentRemoveMemberDetails.sharedFolderType)) {
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

    class Serializer extends StructSerializer<SharedContentRemoveMemberDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentRemoveMemberDetails sharedContentRemoveMemberDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedContentRemoveMemberDetails.targetAssetIndex), gVar);
            if (sharedContentRemoveMemberDetails.originalFolderName != null) {
                gVar.a("original_folder_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentRemoveMemberDetails.originalFolderName, gVar);
            }
            if (sharedContentRemoveMemberDetails.sharingPermission != null) {
                gVar.a("sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentRemoveMemberDetails.sharingPermission, gVar);
            }
            if (sharedContentRemoveMemberDetails.sharedFolderType != null) {
                gVar.a("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentRemoveMemberDetails.sharedFolderType, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedContentRemoveMemberDetails deserialize(k kVar, boolean z) throws IOException {
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
                SharedContentRemoveMemberDetails sharedContentRemoveMemberDetails = new SharedContentRemoveMemberDetails(l.longValue(), str3, str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedContentRemoveMemberDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
