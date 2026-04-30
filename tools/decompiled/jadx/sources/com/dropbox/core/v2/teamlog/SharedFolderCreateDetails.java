package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class SharedFolderCreateDetails {
    protected final String parentNsId;
    protected final long targetAssetIndex;

    public SharedFolderCreateDetails(long j, String str) {
        this.targetAssetIndex = j;
        if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'parentNsId' does not match pattern");
        }
        this.parentNsId = str;
    }

    public SharedFolderCreateDetails(long j) {
        this(j, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getParentNsId() {
        return this.parentNsId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.parentNsId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedFolderCreateDetails sharedFolderCreateDetails = (SharedFolderCreateDetails) obj;
            if (this.targetAssetIndex == sharedFolderCreateDetails.targetAssetIndex) {
                if (this.parentNsId == sharedFolderCreateDetails.parentNsId) {
                    return true;
                }
                if (this.parentNsId != null && this.parentNsId.equals(sharedFolderCreateDetails.parentNsId)) {
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

    class Serializer extends StructSerializer<SharedFolderCreateDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedFolderCreateDetails sharedFolderCreateDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedFolderCreateDetails.targetAssetIndex), gVar);
            if (sharedFolderCreateDetails.parentNsId != null) {
                gVar.a("parent_ns_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFolderCreateDetails.parentNsId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedFolderCreateDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            Long lDeserialize;
            String str2 = null;
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
                        String str3 = str2;
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        str = str3;
                    } else if ("parent_ns_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                    str2 = str;
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                SharedFolderCreateDetails sharedFolderCreateDetails = new SharedFolderCreateDetails(l.longValue(), str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedFolderCreateDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
