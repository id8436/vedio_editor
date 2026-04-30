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
public class SharedContentClaimInvitationDetails {
    protected final String originalFolderName;
    protected final String sharedContentLink;
    protected final long targetAssetIndex;

    public SharedContentClaimInvitationDetails(long j, String str, String str2) {
        this.targetAssetIndex = j;
        this.originalFolderName = str;
        this.sharedContentLink = str2;
    }

    public SharedContentClaimInvitationDetails(long j) {
        this(j, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getSharedContentLink() {
        return this.sharedContentLink;
    }

    public static Builder newBuilder(long j) {
        return new Builder(j);
    }

    public class Builder {
        protected String originalFolderName = null;
        protected String sharedContentLink = null;
        protected final long targetAssetIndex;

        protected Builder(long j) {
            this.targetAssetIndex = j;
        }

        public Builder withOriginalFolderName(String str) {
            this.originalFolderName = str;
            return this;
        }

        public Builder withSharedContentLink(String str) {
            this.sharedContentLink = str;
            return this;
        }

        public SharedContentClaimInvitationDetails build() {
            return new SharedContentClaimInvitationDetails(this.targetAssetIndex, this.originalFolderName, this.sharedContentLink);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.sharedContentLink});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedContentClaimInvitationDetails sharedContentClaimInvitationDetails = (SharedContentClaimInvitationDetails) obj;
            if (this.targetAssetIndex == sharedContentClaimInvitationDetails.targetAssetIndex && (this.originalFolderName == sharedContentClaimInvitationDetails.originalFolderName || (this.originalFolderName != null && this.originalFolderName.equals(sharedContentClaimInvitationDetails.originalFolderName)))) {
                if (this.sharedContentLink == sharedContentClaimInvitationDetails.sharedContentLink) {
                    return true;
                }
                if (this.sharedContentLink != null && this.sharedContentLink.equals(sharedContentClaimInvitationDetails.sharedContentLink)) {
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

    class Serializer extends StructSerializer<SharedContentClaimInvitationDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentClaimInvitationDetails sharedContentClaimInvitationDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedContentClaimInvitationDetails.targetAssetIndex), gVar);
            if (sharedContentClaimInvitationDetails.originalFolderName != null) {
                gVar.a("original_folder_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentClaimInvitationDetails.originalFolderName, gVar);
            }
            if (sharedContentClaimInvitationDetails.sharedContentLink != null) {
                gVar.a("shared_content_link");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentClaimInvitationDetails.sharedContentLink, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedContentClaimInvitationDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            Long lDeserialize;
            String str3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str4 = null;
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        String str5 = str3;
                        str2 = str4;
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        str = str5;
                    } else if ("original_folder_name".equals(strD)) {
                        lDeserialize = l;
                        str = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("shared_content_link".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str4;
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        str = str3;
                        str2 = str4;
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                    str4 = str2;
                    str3 = str;
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                SharedContentClaimInvitationDetails sharedContentClaimInvitationDetails = new SharedContentClaimInvitationDetails(l.longValue(), str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedContentClaimInvitationDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
