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
public class RelocateAssetReferencesLogInfo {
    protected final long destAssetIndex;
    protected final long srcAssetIndex;

    public RelocateAssetReferencesLogInfo(long j, long j2) {
        this.srcAssetIndex = j;
        this.destAssetIndex = j2;
    }

    public long getSrcAssetIndex() {
        return this.srcAssetIndex;
    }

    public long getDestAssetIndex() {
        return this.destAssetIndex;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.srcAssetIndex), Long.valueOf(this.destAssetIndex)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RelocateAssetReferencesLogInfo relocateAssetReferencesLogInfo = (RelocateAssetReferencesLogInfo) obj;
            return this.srcAssetIndex == relocateAssetReferencesLogInfo.srcAssetIndex && this.destAssetIndex == relocateAssetReferencesLogInfo.destAssetIndex;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RelocateAssetReferencesLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RelocateAssetReferencesLogInfo relocateAssetReferencesLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("src_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(relocateAssetReferencesLogInfo.srcAssetIndex), gVar);
            gVar.a("dest_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(relocateAssetReferencesLogInfo.destAssetIndex), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RelocateAssetReferencesLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            Long lDeserialize2;
            Long l = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("src_asset_index".equals(strD)) {
                        Long l3 = l;
                        lDeserialize2 = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize = l3;
                    } else if ("dest_asset_index".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize2 = l2;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        lDeserialize2 = l2;
                    }
                    l2 = lDeserialize2;
                    l = lDeserialize;
                }
                if (l2 == null) {
                    throw new j(kVar, "Required field \"src_asset_index\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"dest_asset_index\" missing.");
                }
                RelocateAssetReferencesLogInfo relocateAssetReferencesLogInfo = new RelocateAssetReferencesLogInfo(l2.longValue(), l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return relocateAssetReferencesLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
