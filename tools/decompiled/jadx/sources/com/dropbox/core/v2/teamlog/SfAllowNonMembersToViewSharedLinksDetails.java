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
public class SfAllowNonMembersToViewSharedLinksDetails {
    protected final String originalFolderName;
    protected final String sharedFolderType;
    protected final long targetAssetIndex;

    public SfAllowNonMembersToViewSharedLinksDetails(long j, String str, String str2) {
        this.targetAssetIndex = j;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
        }
        this.originalFolderName = str;
        this.sharedFolderType = str2;
    }

    public SfAllowNonMembersToViewSharedLinksDetails(long j, String str) {
        this(j, str, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getSharedFolderType() {
        return this.sharedFolderType;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.sharedFolderType});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SfAllowNonMembersToViewSharedLinksDetails sfAllowNonMembersToViewSharedLinksDetails = (SfAllowNonMembersToViewSharedLinksDetails) obj;
            if (this.targetAssetIndex == sfAllowNonMembersToViewSharedLinksDetails.targetAssetIndex && (this.originalFolderName == sfAllowNonMembersToViewSharedLinksDetails.originalFolderName || this.originalFolderName.equals(sfAllowNonMembersToViewSharedLinksDetails.originalFolderName))) {
                if (this.sharedFolderType == sfAllowNonMembersToViewSharedLinksDetails.sharedFolderType) {
                    return true;
                }
                if (this.sharedFolderType != null && this.sharedFolderType.equals(sfAllowNonMembersToViewSharedLinksDetails.sharedFolderType)) {
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

    class Serializer extends StructSerializer<SfAllowNonMembersToViewSharedLinksDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SfAllowNonMembersToViewSharedLinksDetails sfAllowNonMembersToViewSharedLinksDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sfAllowNonMembersToViewSharedLinksDetails.targetAssetIndex), gVar);
            gVar.a("original_folder_name");
            StoneSerializers.string().serialize(sfAllowNonMembersToViewSharedLinksDetails.originalFolderName, gVar);
            if (sfAllowNonMembersToViewSharedLinksDetails.sharedFolderType != null) {
                gVar.a("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sfAllowNonMembersToViewSharedLinksDetails.sharedFolderType, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SfAllowNonMembersToViewSharedLinksDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String strDeserialize;
            Long lDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        String str4 = str2;
                        strDeserialize = str3;
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        str = str4;
                    } else if ("original_folder_name".equals(strD)) {
                        lDeserialize = l;
                        str = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("shared_folder_type".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        strDeserialize = str3;
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        strDeserialize = str3;
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                    str3 = strDeserialize;
                    str2 = str;
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"original_folder_name\" missing.");
                }
                SfAllowNonMembersToViewSharedLinksDetails sfAllowNonMembersToViewSharedLinksDetails = new SfAllowNonMembersToViewSharedLinksDetails(l.longValue(), str3, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sfAllowNonMembersToViewSharedLinksDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
