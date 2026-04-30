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
public class SfNestDetails {
    protected final String newParentNsId;
    protected final String originalFolderName;
    protected final String prevParentNsId;
    protected final long targetAssetIndex;

    public SfNestDetails(long j, String str, String str2, String str3) {
        this.targetAssetIndex = j;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
        }
        this.originalFolderName = str;
        if (str2 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
            throw new IllegalArgumentException("String 'prevParentNsId' does not match pattern");
        }
        this.prevParentNsId = str2;
        if (str3 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str3)) {
            throw new IllegalArgumentException("String 'newParentNsId' does not match pattern");
        }
        this.newParentNsId = str3;
    }

    public SfNestDetails(long j, String str) {
        this(j, str, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getPrevParentNsId() {
        return this.prevParentNsId;
    }

    public String getNewParentNsId() {
        return this.newParentNsId;
    }

    public static Builder newBuilder(long j, String str) {
        return new Builder(j, str);
    }

    public class Builder {
        protected String newParentNsId;
        protected final String originalFolderName;
        protected String prevParentNsId;
        protected final long targetAssetIndex;

        protected Builder(long j, String str) {
            this.targetAssetIndex = j;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
            }
            this.originalFolderName = str;
            this.prevParentNsId = null;
            this.newParentNsId = null;
        }

        public Builder withPrevParentNsId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'prevParentNsId' does not match pattern");
            }
            this.prevParentNsId = str;
            return this;
        }

        public Builder withNewParentNsId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'newParentNsId' does not match pattern");
            }
            this.newParentNsId = str;
            return this;
        }

        public SfNestDetails build() {
            return new SfNestDetails(this.targetAssetIndex, this.originalFolderName, this.prevParentNsId, this.newParentNsId);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.prevParentNsId, this.newParentNsId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SfNestDetails sfNestDetails = (SfNestDetails) obj;
            if (this.targetAssetIndex == sfNestDetails.targetAssetIndex && ((this.originalFolderName == sfNestDetails.originalFolderName || this.originalFolderName.equals(sfNestDetails.originalFolderName)) && (this.prevParentNsId == sfNestDetails.prevParentNsId || (this.prevParentNsId != null && this.prevParentNsId.equals(sfNestDetails.prevParentNsId))))) {
                if (this.newParentNsId == sfNestDetails.newParentNsId) {
                    return true;
                }
                if (this.newParentNsId != null && this.newParentNsId.equals(sfNestDetails.newParentNsId)) {
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

    class Serializer extends StructSerializer<SfNestDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SfNestDetails sfNestDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sfNestDetails.targetAssetIndex), gVar);
            gVar.a("original_folder_name");
            StoneSerializers.string().serialize(sfNestDetails.originalFolderName, gVar);
            if (sfNestDetails.prevParentNsId != null) {
                gVar.a("prev_parent_ns_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sfNestDetails.prevParentNsId, gVar);
            }
            if (sfNestDetails.newParentNsId != null) {
                gVar.a("new_parent_ns_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sfNestDetails.newParentNsId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SfNestDetails deserialize(k kVar, boolean z) throws IOException {
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
                    } else if ("prev_parent_ns_id".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("new_parent_ns_id".equals(strD)) {
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
                SfNestDetails sfNestDetails = new SfNestDetails(l.longValue(), strDeserialize, str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sfNestDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
