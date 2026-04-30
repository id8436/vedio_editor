package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.RelocateAssetReferencesLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharedContentCopyDetails {
    protected final RelocateAssetReferencesLogInfo relocateActionDetails;
    protected final String sharedContentLink;
    protected final String sharingPermission;
    protected final long targetAssetIndex;

    public SharedContentCopyDetails(String str, long j, RelocateAssetReferencesLogInfo relocateAssetReferencesLogInfo, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedContentLink' is null");
        }
        this.sharedContentLink = str;
        this.sharingPermission = str2;
        this.targetAssetIndex = j;
        if (relocateAssetReferencesLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'relocateActionDetails' is null");
        }
        this.relocateActionDetails = relocateAssetReferencesLogInfo;
    }

    public SharedContentCopyDetails(String str, long j, RelocateAssetReferencesLogInfo relocateAssetReferencesLogInfo) {
        this(str, j, relocateAssetReferencesLogInfo, null);
    }

    public String getSharedContentLink() {
        return this.sharedContentLink;
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public RelocateAssetReferencesLogInfo getRelocateActionDetails() {
        return this.relocateActionDetails;
    }

    public String getSharingPermission() {
        return this.sharingPermission;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedContentLink, this.sharingPermission, Long.valueOf(this.targetAssetIndex), this.relocateActionDetails});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedContentCopyDetails sharedContentCopyDetails = (SharedContentCopyDetails) obj;
            if ((this.sharedContentLink == sharedContentCopyDetails.sharedContentLink || this.sharedContentLink.equals(sharedContentCopyDetails.sharedContentLink)) && this.targetAssetIndex == sharedContentCopyDetails.targetAssetIndex && (this.relocateActionDetails == sharedContentCopyDetails.relocateActionDetails || this.relocateActionDetails.equals(sharedContentCopyDetails.relocateActionDetails))) {
                if (this.sharingPermission == sharedContentCopyDetails.sharingPermission) {
                    return true;
                }
                if (this.sharingPermission != null && this.sharingPermission.equals(sharedContentCopyDetails.sharingPermission)) {
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

    class Serializer extends StructSerializer<SharedContentCopyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentCopyDetails sharedContentCopyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_content_link");
            StoneSerializers.string().serialize(sharedContentCopyDetails.sharedContentLink, gVar);
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedContentCopyDetails.targetAssetIndex), gVar);
            gVar.a("relocate_action_details");
            RelocateAssetReferencesLogInfo.Serializer.INSTANCE.serialize(sharedContentCopyDetails.relocateActionDetails, gVar);
            if (sharedContentCopyDetails.sharingPermission != null) {
                gVar.a("sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentCopyDetails.sharingPermission, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedContentCopyDetails deserialize(k kVar, boolean z) throws IOException {
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
                RelocateAssetReferencesLogInfo relocateAssetReferencesLogInfoDeserialize = null;
                Long l = null;
                String strDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("shared_content_link".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("target_asset_index".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else if ("relocate_action_details".equals(strD)) {
                        relocateAssetReferencesLogInfoDeserialize = RelocateAssetReferencesLogInfo.Serializer.INSTANCE.deserialize(kVar);
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
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"shared_content_link\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                if (relocateAssetReferencesLogInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"relocate_action_details\" missing.");
                }
                SharedContentCopyDetails sharedContentCopyDetails = new SharedContentCopyDetails(strDeserialize, l.longValue(), relocateAssetReferencesLogInfoDeserialize, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedContentCopyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
