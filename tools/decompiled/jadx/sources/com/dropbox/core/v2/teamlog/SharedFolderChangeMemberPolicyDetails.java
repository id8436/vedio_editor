package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SharedFolderMemberPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharedFolderChangeMemberPolicyDetails {
    protected final SharedFolderMemberPolicy newValue;
    protected final String originalFolderName;
    protected final SharedFolderMemberPolicy previousValue;
    protected final String sharedFolderType;
    protected final long targetAssetIndex;

    public SharedFolderChangeMemberPolicyDetails(long j, String str, SharedFolderMemberPolicy sharedFolderMemberPolicy, String str2, SharedFolderMemberPolicy sharedFolderMemberPolicy2) {
        this.targetAssetIndex = j;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
        }
        this.originalFolderName = str;
        this.sharedFolderType = str2;
        if (sharedFolderMemberPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = sharedFolderMemberPolicy;
        this.previousValue = sharedFolderMemberPolicy2;
    }

    public SharedFolderChangeMemberPolicyDetails(long j, String str, SharedFolderMemberPolicy sharedFolderMemberPolicy) {
        this(j, str, sharedFolderMemberPolicy, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public SharedFolderMemberPolicy getNewValue() {
        return this.newValue;
    }

    public String getSharedFolderType() {
        return this.sharedFolderType;
    }

    public SharedFolderMemberPolicy getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder(long j, String str, SharedFolderMemberPolicy sharedFolderMemberPolicy) {
        return new Builder(j, str, sharedFolderMemberPolicy);
    }

    public class Builder {
        protected final SharedFolderMemberPolicy newValue;
        protected final String originalFolderName;
        protected SharedFolderMemberPolicy previousValue;
        protected String sharedFolderType;
        protected final long targetAssetIndex;

        protected Builder(long j, String str, SharedFolderMemberPolicy sharedFolderMemberPolicy) {
            this.targetAssetIndex = j;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
            }
            this.originalFolderName = str;
            if (sharedFolderMemberPolicy == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = sharedFolderMemberPolicy;
            this.sharedFolderType = null;
            this.previousValue = null;
        }

        public Builder withSharedFolderType(String str) {
            this.sharedFolderType = str;
            return this;
        }

        public Builder withPreviousValue(SharedFolderMemberPolicy sharedFolderMemberPolicy) {
            this.previousValue = sharedFolderMemberPolicy;
            return this;
        }

        public SharedFolderChangeMemberPolicyDetails build() {
            return new SharedFolderChangeMemberPolicyDetails(this.targetAssetIndex, this.originalFolderName, this.newValue, this.sharedFolderType, this.previousValue);
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
            SharedFolderChangeMemberPolicyDetails sharedFolderChangeMemberPolicyDetails = (SharedFolderChangeMemberPolicyDetails) obj;
            if (this.targetAssetIndex == sharedFolderChangeMemberPolicyDetails.targetAssetIndex && ((this.originalFolderName == sharedFolderChangeMemberPolicyDetails.originalFolderName || this.originalFolderName.equals(sharedFolderChangeMemberPolicyDetails.originalFolderName)) && ((this.newValue == sharedFolderChangeMemberPolicyDetails.newValue || this.newValue.equals(sharedFolderChangeMemberPolicyDetails.newValue)) && (this.sharedFolderType == sharedFolderChangeMemberPolicyDetails.sharedFolderType || (this.sharedFolderType != null && this.sharedFolderType.equals(sharedFolderChangeMemberPolicyDetails.sharedFolderType)))))) {
                if (this.previousValue == sharedFolderChangeMemberPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(sharedFolderChangeMemberPolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SharedFolderChangeMemberPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedFolderChangeMemberPolicyDetails sharedFolderChangeMemberPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedFolderChangeMemberPolicyDetails.targetAssetIndex), gVar);
            gVar.a("original_folder_name");
            StoneSerializers.string().serialize(sharedFolderChangeMemberPolicyDetails.originalFolderName, gVar);
            gVar.a("new_value");
            SharedFolderMemberPolicy.Serializer.INSTANCE.serialize(sharedFolderChangeMemberPolicyDetails.newValue, gVar);
            if (sharedFolderChangeMemberPolicyDetails.sharedFolderType != null) {
                gVar.a("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFolderChangeMemberPolicyDetails.sharedFolderType, gVar);
            }
            if (sharedFolderChangeMemberPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(SharedFolderMemberPolicy.Serializer.INSTANCE).serialize(sharedFolderChangeMemberPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedFolderChangeMemberPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            SharedFolderMemberPolicy sharedFolderMemberPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                SharedFolderMemberPolicy sharedFolderMemberPolicyDeserialize = null;
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
                        sharedFolderMemberPolicyDeserialize = SharedFolderMemberPolicy.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l;
                    } else if ("shared_folder_type".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("previous_value".equals(strD)) {
                        sharedFolderMemberPolicy = (SharedFolderMemberPolicy) StoneSerializers.nullable(SharedFolderMemberPolicy.Serializer.INSTANCE).deserialize(kVar);
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
                if (sharedFolderMemberPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SharedFolderChangeMemberPolicyDetails sharedFolderChangeMemberPolicyDetails = new SharedFolderChangeMemberPolicyDetails(l.longValue(), strDeserialize, sharedFolderMemberPolicyDeserialize, str, sharedFolderMemberPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedFolderChangeMemberPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
