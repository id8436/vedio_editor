package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SharedFolderLinkPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharedFolderChangeLinkPolicyDetails {
    protected final SharedFolderLinkPolicy newValue;
    protected final String originalFolderName;
    protected final SharedFolderLinkPolicy previousValue;
    protected final String sharedFolderType;
    protected final long targetAssetIndex;

    public SharedFolderChangeLinkPolicyDetails(long j, String str, SharedFolderLinkPolicy sharedFolderLinkPolicy, String str2, SharedFolderLinkPolicy sharedFolderLinkPolicy2) {
        this.targetAssetIndex = j;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
        }
        this.originalFolderName = str;
        this.sharedFolderType = str2;
        if (sharedFolderLinkPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = sharedFolderLinkPolicy;
        this.previousValue = sharedFolderLinkPolicy2;
    }

    public SharedFolderChangeLinkPolicyDetails(long j, String str, SharedFolderLinkPolicy sharedFolderLinkPolicy) {
        this(j, str, sharedFolderLinkPolicy, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public SharedFolderLinkPolicy getNewValue() {
        return this.newValue;
    }

    public String getSharedFolderType() {
        return this.sharedFolderType;
    }

    public SharedFolderLinkPolicy getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder(long j, String str, SharedFolderLinkPolicy sharedFolderLinkPolicy) {
        return new Builder(j, str, sharedFolderLinkPolicy);
    }

    public class Builder {
        protected final SharedFolderLinkPolicy newValue;
        protected final String originalFolderName;
        protected SharedFolderLinkPolicy previousValue;
        protected String sharedFolderType;
        protected final long targetAssetIndex;

        protected Builder(long j, String str, SharedFolderLinkPolicy sharedFolderLinkPolicy) {
            this.targetAssetIndex = j;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
            }
            this.originalFolderName = str;
            if (sharedFolderLinkPolicy == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = sharedFolderLinkPolicy;
            this.sharedFolderType = null;
            this.previousValue = null;
        }

        public Builder withSharedFolderType(String str) {
            this.sharedFolderType = str;
            return this;
        }

        public Builder withPreviousValue(SharedFolderLinkPolicy sharedFolderLinkPolicy) {
            this.previousValue = sharedFolderLinkPolicy;
            return this;
        }

        public SharedFolderChangeLinkPolicyDetails build() {
            return new SharedFolderChangeLinkPolicyDetails(this.targetAssetIndex, this.originalFolderName, this.newValue, this.sharedFolderType, this.previousValue);
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
            SharedFolderChangeLinkPolicyDetails sharedFolderChangeLinkPolicyDetails = (SharedFolderChangeLinkPolicyDetails) obj;
            if (this.targetAssetIndex == sharedFolderChangeLinkPolicyDetails.targetAssetIndex && ((this.originalFolderName == sharedFolderChangeLinkPolicyDetails.originalFolderName || this.originalFolderName.equals(sharedFolderChangeLinkPolicyDetails.originalFolderName)) && ((this.newValue == sharedFolderChangeLinkPolicyDetails.newValue || this.newValue.equals(sharedFolderChangeLinkPolicyDetails.newValue)) && (this.sharedFolderType == sharedFolderChangeLinkPolicyDetails.sharedFolderType || (this.sharedFolderType != null && this.sharedFolderType.equals(sharedFolderChangeLinkPolicyDetails.sharedFolderType)))))) {
                if (this.previousValue == sharedFolderChangeLinkPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(sharedFolderChangeLinkPolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SharedFolderChangeLinkPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedFolderChangeLinkPolicyDetails sharedFolderChangeLinkPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedFolderChangeLinkPolicyDetails.targetAssetIndex), gVar);
            gVar.a("original_folder_name");
            StoneSerializers.string().serialize(sharedFolderChangeLinkPolicyDetails.originalFolderName, gVar);
            gVar.a("new_value");
            SharedFolderLinkPolicy.Serializer.INSTANCE.serialize(sharedFolderChangeLinkPolicyDetails.newValue, gVar);
            if (sharedFolderChangeLinkPolicyDetails.sharedFolderType != null) {
                gVar.a("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFolderChangeLinkPolicyDetails.sharedFolderType, gVar);
            }
            if (sharedFolderChangeLinkPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(SharedFolderLinkPolicy.Serializer.INSTANCE).serialize(sharedFolderChangeLinkPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedFolderChangeLinkPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            SharedFolderLinkPolicy sharedFolderLinkPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                SharedFolderLinkPolicy sharedFolderLinkPolicyDeserialize = null;
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
                    } else if ("new_value".equals(strD)) {
                        sharedFolderLinkPolicyDeserialize = SharedFolderLinkPolicy.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l;
                    } else if ("shared_folder_type".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("previous_value".equals(strD)) {
                        sharedFolderLinkPolicy = (SharedFolderLinkPolicy) StoneSerializers.nullable(SharedFolderLinkPolicy.Serializer.INSTANCE).deserialize(kVar);
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
                if (sharedFolderLinkPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SharedFolderChangeLinkPolicyDetails sharedFolderChangeLinkPolicyDetails = new SharedFolderChangeLinkPolicyDetails(l.longValue(), strDeserialize, sharedFolderLinkPolicyDeserialize, str, sharedFolderLinkPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedFolderChangeLinkPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
