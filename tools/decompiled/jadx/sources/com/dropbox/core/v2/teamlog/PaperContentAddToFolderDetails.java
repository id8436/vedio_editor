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
public class PaperContentAddToFolderDetails {
    protected final String eventUuid;
    protected final long parentAssetIndex;
    protected final long targetAssetIndex;

    public PaperContentAddToFolderDetails(String str, long j, long j2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        this.targetAssetIndex = j;
        this.parentAssetIndex = j2;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public long getParentAssetIndex() {
        return this.parentAssetIndex;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, Long.valueOf(this.targetAssetIndex), Long.valueOf(this.parentAssetIndex)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperContentAddToFolderDetails paperContentAddToFolderDetails = (PaperContentAddToFolderDetails) obj;
            return (this.eventUuid == paperContentAddToFolderDetails.eventUuid || this.eventUuid.equals(paperContentAddToFolderDetails.eventUuid)) && this.targetAssetIndex == paperContentAddToFolderDetails.targetAssetIndex && this.parentAssetIndex == paperContentAddToFolderDetails.parentAssetIndex;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperContentAddToFolderDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperContentAddToFolderDetails paperContentAddToFolderDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("event_uuid");
            StoneSerializers.string().serialize(paperContentAddToFolderDetails.eventUuid, gVar);
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(paperContentAddToFolderDetails.targetAssetIndex), gVar);
            gVar.a("parent_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(paperContentAddToFolderDetails.parentAssetIndex), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperContentAddToFolderDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            String strDeserialize;
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
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("event_uuid".equals(strD)) {
                        lDeserialize2 = l2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("target_asset_index".equals(strD)) {
                        strDeserialize = str;
                        lDeserialize2 = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("parent_asset_index".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        Long l3 = l2;
                        strDeserialize = str;
                        lDeserialize2 = l3;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        Long l4 = l2;
                        strDeserialize = str;
                        lDeserialize2 = l4;
                    }
                    l = lDeserialize;
                    Long l5 = lDeserialize2;
                    str = strDeserialize;
                    l2 = l5;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"event_uuid\" missing.");
                }
                if (l2 == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"parent_asset_index\" missing.");
                }
                PaperContentAddToFolderDetails paperContentAddToFolderDetails = new PaperContentAddToFolderDetails(str, l2.longValue(), l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperContentAddToFolderDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
