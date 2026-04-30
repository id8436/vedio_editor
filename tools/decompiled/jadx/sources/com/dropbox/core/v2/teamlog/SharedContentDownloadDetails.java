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
public class SharedContentDownloadDetails {
    protected final String sharedContentLink;
    protected final String sharingPermission;
    protected final long targetAssetIndex;

    public SharedContentDownloadDetails(String str, long j, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedContentLink' is null");
        }
        this.sharedContentLink = str;
        this.sharingPermission = str2;
        this.targetAssetIndex = j;
    }

    public SharedContentDownloadDetails(String str, long j) {
        this(str, j, null);
    }

    public String getSharedContentLink() {
        return this.sharedContentLink;
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getSharingPermission() {
        return this.sharingPermission;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedContentLink, this.sharingPermission, Long.valueOf(this.targetAssetIndex)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedContentDownloadDetails sharedContentDownloadDetails = (SharedContentDownloadDetails) obj;
            if ((this.sharedContentLink == sharedContentDownloadDetails.sharedContentLink || this.sharedContentLink.equals(sharedContentDownloadDetails.sharedContentLink)) && this.targetAssetIndex == sharedContentDownloadDetails.targetAssetIndex) {
                if (this.sharingPermission == sharedContentDownloadDetails.sharingPermission) {
                    return true;
                }
                if (this.sharingPermission != null && this.sharingPermission.equals(sharedContentDownloadDetails.sharingPermission)) {
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

    class Serializer extends StructSerializer<SharedContentDownloadDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentDownloadDetails sharedContentDownloadDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_content_link");
            StoneSerializers.string().serialize(sharedContentDownloadDetails.sharedContentLink, gVar);
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedContentDownloadDetails.targetAssetIndex), gVar);
            if (sharedContentDownloadDetails.sharingPermission != null) {
                gVar.a("sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentDownloadDetails.sharingPermission, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedContentDownloadDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            Long lDeserialize;
            String strDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = null;
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("shared_content_link".equals(strD)) {
                        String str4 = str2;
                        lDeserialize = l;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str4;
                    } else if ("target_asset_index".equals(strD)) {
                        strDeserialize = str3;
                        str = str2;
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else if ("sharing_permission".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                        strDeserialize = str3;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        lDeserialize = l;
                        strDeserialize = str3;
                    }
                    str3 = strDeserialize;
                    l = lDeserialize;
                    str2 = str;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"shared_content_link\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                SharedContentDownloadDetails sharedContentDownloadDetails = new SharedContentDownloadDetails(str3, l.longValue(), str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedContentDownloadDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
