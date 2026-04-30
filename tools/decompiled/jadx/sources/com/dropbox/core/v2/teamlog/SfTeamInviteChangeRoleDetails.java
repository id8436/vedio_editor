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
public class SfTeamInviteChangeRoleDetails {
    protected final String newSharingPermission;
    protected final String originalFolderName;
    protected final String previousSharingPermission;
    protected final long targetAssetIndex;

    public SfTeamInviteChangeRoleDetails(long j, String str, String str2, String str3) {
        this.targetAssetIndex = j;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
        }
        this.originalFolderName = str;
        this.newSharingPermission = str2;
        this.previousSharingPermission = str3;
    }

    public SfTeamInviteChangeRoleDetails(long j, String str) {
        this(j, str, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getNewSharingPermission() {
        return this.newSharingPermission;
    }

    public String getPreviousSharingPermission() {
        return this.previousSharingPermission;
    }

    public static Builder newBuilder(long j, String str) {
        return new Builder(j, str);
    }

    public class Builder {
        protected String newSharingPermission;
        protected final String originalFolderName;
        protected String previousSharingPermission;
        protected final long targetAssetIndex;

        protected Builder(long j, String str) {
            this.targetAssetIndex = j;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
            }
            this.originalFolderName = str;
            this.newSharingPermission = null;
            this.previousSharingPermission = null;
        }

        public Builder withNewSharingPermission(String str) {
            this.newSharingPermission = str;
            return this;
        }

        public Builder withPreviousSharingPermission(String str) {
            this.previousSharingPermission = str;
            return this;
        }

        public SfTeamInviteChangeRoleDetails build() {
            return new SfTeamInviteChangeRoleDetails(this.targetAssetIndex, this.originalFolderName, this.newSharingPermission, this.previousSharingPermission);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.newSharingPermission, this.previousSharingPermission});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SfTeamInviteChangeRoleDetails sfTeamInviteChangeRoleDetails = (SfTeamInviteChangeRoleDetails) obj;
            if (this.targetAssetIndex == sfTeamInviteChangeRoleDetails.targetAssetIndex && ((this.originalFolderName == sfTeamInviteChangeRoleDetails.originalFolderName || this.originalFolderName.equals(sfTeamInviteChangeRoleDetails.originalFolderName)) && (this.newSharingPermission == sfTeamInviteChangeRoleDetails.newSharingPermission || (this.newSharingPermission != null && this.newSharingPermission.equals(sfTeamInviteChangeRoleDetails.newSharingPermission))))) {
                if (this.previousSharingPermission == sfTeamInviteChangeRoleDetails.previousSharingPermission) {
                    return true;
                }
                if (this.previousSharingPermission != null && this.previousSharingPermission.equals(sfTeamInviteChangeRoleDetails.previousSharingPermission)) {
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

    class Serializer extends StructSerializer<SfTeamInviteChangeRoleDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SfTeamInviteChangeRoleDetails sfTeamInviteChangeRoleDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sfTeamInviteChangeRoleDetails.targetAssetIndex), gVar);
            gVar.a("original_folder_name");
            StoneSerializers.string().serialize(sfTeamInviteChangeRoleDetails.originalFolderName, gVar);
            if (sfTeamInviteChangeRoleDetails.newSharingPermission != null) {
                gVar.a("new_sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sfTeamInviteChangeRoleDetails.newSharingPermission, gVar);
            }
            if (sfTeamInviteChangeRoleDetails.previousSharingPermission != null) {
                gVar.a("previous_sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sfTeamInviteChangeRoleDetails.previousSharingPermission, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SfTeamInviteChangeRoleDetails deserialize(k kVar, boolean z) throws IOException {
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
                String strDeserialize = null;
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else if ("original_folder_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("new_sharing_permission".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("previous_sharing_permission".equals(strD)) {
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
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"original_folder_name\" missing.");
                }
                SfTeamInviteChangeRoleDetails sfTeamInviteChangeRoleDetails = new SfTeamInviteChangeRoleDetails(l.longValue(), strDeserialize, str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sfTeamInviteChangeRoleDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
