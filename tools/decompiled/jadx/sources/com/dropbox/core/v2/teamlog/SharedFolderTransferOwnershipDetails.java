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
public class SharedFolderTransferOwnershipDetails {
    protected final String originalFolderName;
    protected final long targetAssetIndex;

    public SharedFolderTransferOwnershipDetails(long j, String str) {
        this.targetAssetIndex = j;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
        }
        this.originalFolderName = str;
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedFolderTransferOwnershipDetails sharedFolderTransferOwnershipDetails = (SharedFolderTransferOwnershipDetails) obj;
            return this.targetAssetIndex == sharedFolderTransferOwnershipDetails.targetAssetIndex && (this.originalFolderName == sharedFolderTransferOwnershipDetails.originalFolderName || this.originalFolderName.equals(sharedFolderTransferOwnershipDetails.originalFolderName));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SharedFolderTransferOwnershipDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedFolderTransferOwnershipDetails sharedFolderTransferOwnershipDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedFolderTransferOwnershipDetails.targetAssetIndex), gVar);
            gVar.a("original_folder_name");
            StoneSerializers.string().serialize(sharedFolderTransferOwnershipDetails.originalFolderName, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedFolderTransferOwnershipDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            Long lDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        String str2 = str;
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        strDeserialize = str2;
                    } else if ("original_folder_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                    str = strDeserialize;
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"original_folder_name\" missing.");
                }
                SharedFolderTransferOwnershipDetails sharedFolderTransferOwnershipDetails = new SharedFolderTransferOwnershipDetails(l.longValue(), str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedFolderTransferOwnershipDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
