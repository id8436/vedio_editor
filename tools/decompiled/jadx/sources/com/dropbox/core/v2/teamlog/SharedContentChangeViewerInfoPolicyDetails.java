package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SharedContentViewerInfoPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharedContentChangeViewerInfoPolicyDetails {
    protected final SharedContentViewerInfoPolicy newValue;
    protected final String originalFolderName;
    protected final SharedContentViewerInfoPolicy previousValue;
    protected final String sharedFolderType;
    protected final long targetAssetIndex;

    public SharedContentChangeViewerInfoPolicyDetails(long j, SharedContentViewerInfoPolicy sharedContentViewerInfoPolicy, String str, String str2, SharedContentViewerInfoPolicy sharedContentViewerInfoPolicy2) {
        this.targetAssetIndex = j;
        this.originalFolderName = str;
        this.sharedFolderType = str2;
        if (sharedContentViewerInfoPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = sharedContentViewerInfoPolicy;
        this.previousValue = sharedContentViewerInfoPolicy2;
    }

    public SharedContentChangeViewerInfoPolicyDetails(long j, SharedContentViewerInfoPolicy sharedContentViewerInfoPolicy) {
        this(j, sharedContentViewerInfoPolicy, null, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public SharedContentViewerInfoPolicy getNewValue() {
        return this.newValue;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getSharedFolderType() {
        return this.sharedFolderType;
    }

    public SharedContentViewerInfoPolicy getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder(long j, SharedContentViewerInfoPolicy sharedContentViewerInfoPolicy) {
        return new Builder(j, sharedContentViewerInfoPolicy);
    }

    public class Builder {
        protected final SharedContentViewerInfoPolicy newValue;
        protected String originalFolderName;
        protected SharedContentViewerInfoPolicy previousValue;
        protected String sharedFolderType;
        protected final long targetAssetIndex;

        protected Builder(long j, SharedContentViewerInfoPolicy sharedContentViewerInfoPolicy) {
            this.targetAssetIndex = j;
            if (sharedContentViewerInfoPolicy == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = sharedContentViewerInfoPolicy;
            this.originalFolderName = null;
            this.sharedFolderType = null;
            this.previousValue = null;
        }

        public Builder withOriginalFolderName(String str) {
            this.originalFolderName = str;
            return this;
        }

        public Builder withSharedFolderType(String str) {
            this.sharedFolderType = str;
            return this;
        }

        public Builder withPreviousValue(SharedContentViewerInfoPolicy sharedContentViewerInfoPolicy) {
            this.previousValue = sharedContentViewerInfoPolicy;
            return this;
        }

        public SharedContentChangeViewerInfoPolicyDetails build() {
            return new SharedContentChangeViewerInfoPolicyDetails(this.targetAssetIndex, this.newValue, this.originalFolderName, this.sharedFolderType, this.previousValue);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.sharedFolderType, this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedContentChangeViewerInfoPolicyDetails sharedContentChangeViewerInfoPolicyDetails = (SharedContentChangeViewerInfoPolicyDetails) obj;
            if (this.targetAssetIndex == sharedContentChangeViewerInfoPolicyDetails.targetAssetIndex && ((this.newValue == sharedContentChangeViewerInfoPolicyDetails.newValue || this.newValue.equals(sharedContentChangeViewerInfoPolicyDetails.newValue)) && ((this.originalFolderName == sharedContentChangeViewerInfoPolicyDetails.originalFolderName || (this.originalFolderName != null && this.originalFolderName.equals(sharedContentChangeViewerInfoPolicyDetails.originalFolderName))) && (this.sharedFolderType == sharedContentChangeViewerInfoPolicyDetails.sharedFolderType || (this.sharedFolderType != null && this.sharedFolderType.equals(sharedContentChangeViewerInfoPolicyDetails.sharedFolderType)))))) {
                if (this.previousValue == sharedContentChangeViewerInfoPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(sharedContentChangeViewerInfoPolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SharedContentChangeViewerInfoPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentChangeViewerInfoPolicyDetails sharedContentChangeViewerInfoPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedContentChangeViewerInfoPolicyDetails.targetAssetIndex), gVar);
            gVar.a("new_value");
            SharedContentViewerInfoPolicy.Serializer.INSTANCE.serialize(sharedContentChangeViewerInfoPolicyDetails.newValue, gVar);
            if (sharedContentChangeViewerInfoPolicyDetails.originalFolderName != null) {
                gVar.a("original_folder_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeViewerInfoPolicyDetails.originalFolderName, gVar);
            }
            if (sharedContentChangeViewerInfoPolicyDetails.sharedFolderType != null) {
                gVar.a("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeViewerInfoPolicyDetails.sharedFolderType, gVar);
            }
            if (sharedContentChangeViewerInfoPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(SharedContentViewerInfoPolicy.Serializer.INSTANCE).serialize(sharedContentChangeViewerInfoPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedContentChangeViewerInfoPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            SharedContentViewerInfoPolicy sharedContentViewerInfoPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                String str2 = null;
                SharedContentViewerInfoPolicy sharedContentViewerInfoPolicyDeserialize = null;
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else if ("new_value".equals(strD)) {
                        sharedContentViewerInfoPolicyDeserialize = SharedContentViewerInfoPolicy.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l;
                    } else if ("original_folder_name".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("shared_folder_type".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("previous_value".equals(strD)) {
                        sharedContentViewerInfoPolicy = (SharedContentViewerInfoPolicy) StoneSerializers.nullable(SharedContentViewerInfoPolicy.Serializer.INSTANCE).deserialize(kVar);
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
                if (sharedContentViewerInfoPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SharedContentChangeViewerInfoPolicyDetails sharedContentChangeViewerInfoPolicyDetails = new SharedContentChangeViewerInfoPolicyDetails(l.longValue(), sharedContentViewerInfoPolicyDeserialize, str2, str, sharedContentViewerInfoPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedContentChangeViewerInfoPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
