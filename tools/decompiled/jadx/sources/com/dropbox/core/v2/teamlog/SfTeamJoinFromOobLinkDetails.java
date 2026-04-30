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
public class SfTeamJoinFromOobLinkDetails {
    protected final String originalFolderName;
    protected final String sharingPermission;
    protected final long targetAssetIndex;
    protected final String tokenKey;

    public SfTeamJoinFromOobLinkDetails(long j, String str, String str2, String str3) {
        this.targetAssetIndex = j;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
        }
        this.originalFolderName = str;
        this.tokenKey = str2;
        this.sharingPermission = str3;
    }

    public SfTeamJoinFromOobLinkDetails(long j, String str) {
        this(j, str, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getTokenKey() {
        return this.tokenKey;
    }

    public String getSharingPermission() {
        return this.sharingPermission;
    }

    public static Builder newBuilder(long j, String str) {
        return new Builder(j, str);
    }

    public class Builder {
        protected final String originalFolderName;
        protected String sharingPermission;
        protected final long targetAssetIndex;
        protected String tokenKey;

        protected Builder(long j, String str) {
            this.targetAssetIndex = j;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
            }
            this.originalFolderName = str;
            this.tokenKey = null;
            this.sharingPermission = null;
        }

        public Builder withTokenKey(String str) {
            this.tokenKey = str;
            return this;
        }

        public Builder withSharingPermission(String str) {
            this.sharingPermission = str;
            return this;
        }

        public SfTeamJoinFromOobLinkDetails build() {
            return new SfTeamJoinFromOobLinkDetails(this.targetAssetIndex, this.originalFolderName, this.tokenKey, this.sharingPermission);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.tokenKey, this.sharingPermission});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SfTeamJoinFromOobLinkDetails sfTeamJoinFromOobLinkDetails = (SfTeamJoinFromOobLinkDetails) obj;
            if (this.targetAssetIndex == sfTeamJoinFromOobLinkDetails.targetAssetIndex && ((this.originalFolderName == sfTeamJoinFromOobLinkDetails.originalFolderName || this.originalFolderName.equals(sfTeamJoinFromOobLinkDetails.originalFolderName)) && (this.tokenKey == sfTeamJoinFromOobLinkDetails.tokenKey || (this.tokenKey != null && this.tokenKey.equals(sfTeamJoinFromOobLinkDetails.tokenKey))))) {
                if (this.sharingPermission == sfTeamJoinFromOobLinkDetails.sharingPermission) {
                    return true;
                }
                if (this.sharingPermission != null && this.sharingPermission.equals(sfTeamJoinFromOobLinkDetails.sharingPermission)) {
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

    class Serializer extends StructSerializer<SfTeamJoinFromOobLinkDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SfTeamJoinFromOobLinkDetails sfTeamJoinFromOobLinkDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sfTeamJoinFromOobLinkDetails.targetAssetIndex), gVar);
            gVar.a("original_folder_name");
            StoneSerializers.string().serialize(sfTeamJoinFromOobLinkDetails.originalFolderName, gVar);
            if (sfTeamJoinFromOobLinkDetails.tokenKey != null) {
                gVar.a("token_key");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sfTeamJoinFromOobLinkDetails.tokenKey, gVar);
            }
            if (sfTeamJoinFromOobLinkDetails.sharingPermission != null) {
                gVar.a("sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sfTeamJoinFromOobLinkDetails.sharingPermission, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SfTeamJoinFromOobLinkDetails deserialize(k kVar, boolean z) throws IOException {
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
                    } else if ("token_key".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("sharing_permission".equals(strD)) {
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
                SfTeamJoinFromOobLinkDetails sfTeamJoinFromOobLinkDetails = new SfTeamJoinFromOobLinkDetails(l.longValue(), strDeserialize, str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sfTeamJoinFromOobLinkDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
