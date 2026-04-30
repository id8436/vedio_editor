package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SharedFolderMembershipManagementPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharedFolderChangeMemberManagementPolicyDetails {
    protected final SharedFolderMembershipManagementPolicy newValue;
    protected final String originalFolderName;
    protected final SharedFolderMembershipManagementPolicy previousValue;
    protected final String sharedFolderType;
    protected final long targetAssetIndex;

    public SharedFolderChangeMemberManagementPolicyDetails(long j, String str, SharedFolderMembershipManagementPolicy sharedFolderMembershipManagementPolicy, String str2, SharedFolderMembershipManagementPolicy sharedFolderMembershipManagementPolicy2) {
        this.targetAssetIndex = j;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
        }
        this.originalFolderName = str;
        this.sharedFolderType = str2;
        if (sharedFolderMembershipManagementPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = sharedFolderMembershipManagementPolicy;
        this.previousValue = sharedFolderMembershipManagementPolicy2;
    }

    public SharedFolderChangeMemberManagementPolicyDetails(long j, String str, SharedFolderMembershipManagementPolicy sharedFolderMembershipManagementPolicy) {
        this(j, str, sharedFolderMembershipManagementPolicy, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public SharedFolderMembershipManagementPolicy getNewValue() {
        return this.newValue;
    }

    public String getSharedFolderType() {
        return this.sharedFolderType;
    }

    public SharedFolderMembershipManagementPolicy getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder(long j, String str, SharedFolderMembershipManagementPolicy sharedFolderMembershipManagementPolicy) {
        return new Builder(j, str, sharedFolderMembershipManagementPolicy);
    }

    public class Builder {
        protected final SharedFolderMembershipManagementPolicy newValue;
        protected final String originalFolderName;
        protected SharedFolderMembershipManagementPolicy previousValue;
        protected String sharedFolderType;
        protected final long targetAssetIndex;

        protected Builder(long j, String str, SharedFolderMembershipManagementPolicy sharedFolderMembershipManagementPolicy) {
            this.targetAssetIndex = j;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
            }
            this.originalFolderName = str;
            if (sharedFolderMembershipManagementPolicy == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = sharedFolderMembershipManagementPolicy;
            this.sharedFolderType = null;
            this.previousValue = null;
        }

        public Builder withSharedFolderType(String str) {
            this.sharedFolderType = str;
            return this;
        }

        public Builder withPreviousValue(SharedFolderMembershipManagementPolicy sharedFolderMembershipManagementPolicy) {
            this.previousValue = sharedFolderMembershipManagementPolicy;
            return this;
        }

        public SharedFolderChangeMemberManagementPolicyDetails build() {
            return new SharedFolderChangeMemberManagementPolicyDetails(this.targetAssetIndex, this.originalFolderName, this.newValue, this.sharedFolderType, this.previousValue);
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
            SharedFolderChangeMemberManagementPolicyDetails sharedFolderChangeMemberManagementPolicyDetails = (SharedFolderChangeMemberManagementPolicyDetails) obj;
            if (this.targetAssetIndex == sharedFolderChangeMemberManagementPolicyDetails.targetAssetIndex && ((this.originalFolderName == sharedFolderChangeMemberManagementPolicyDetails.originalFolderName || this.originalFolderName.equals(sharedFolderChangeMemberManagementPolicyDetails.originalFolderName)) && ((this.newValue == sharedFolderChangeMemberManagementPolicyDetails.newValue || this.newValue.equals(sharedFolderChangeMemberManagementPolicyDetails.newValue)) && (this.sharedFolderType == sharedFolderChangeMemberManagementPolicyDetails.sharedFolderType || (this.sharedFolderType != null && this.sharedFolderType.equals(sharedFolderChangeMemberManagementPolicyDetails.sharedFolderType)))))) {
                if (this.previousValue == sharedFolderChangeMemberManagementPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(sharedFolderChangeMemberManagementPolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SharedFolderChangeMemberManagementPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedFolderChangeMemberManagementPolicyDetails sharedFolderChangeMemberManagementPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedFolderChangeMemberManagementPolicyDetails.targetAssetIndex), gVar);
            gVar.a("original_folder_name");
            StoneSerializers.string().serialize(sharedFolderChangeMemberManagementPolicyDetails.originalFolderName, gVar);
            gVar.a("new_value");
            SharedFolderMembershipManagementPolicy.Serializer.INSTANCE.serialize(sharedFolderChangeMemberManagementPolicyDetails.newValue, gVar);
            if (sharedFolderChangeMemberManagementPolicyDetails.sharedFolderType != null) {
                gVar.a("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFolderChangeMemberManagementPolicyDetails.sharedFolderType, gVar);
            }
            if (sharedFolderChangeMemberManagementPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(SharedFolderMembershipManagementPolicy.Serializer.INSTANCE).serialize(sharedFolderChangeMemberManagementPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedFolderChangeMemberManagementPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            SharedFolderMembershipManagementPolicy sharedFolderMembershipManagementPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                SharedFolderMembershipManagementPolicy sharedFolderMembershipManagementPolicyDeserialize = null;
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
                        sharedFolderMembershipManagementPolicyDeserialize = SharedFolderMembershipManagementPolicy.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l;
                    } else if ("shared_folder_type".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("previous_value".equals(strD)) {
                        sharedFolderMembershipManagementPolicy = (SharedFolderMembershipManagementPolicy) StoneSerializers.nullable(SharedFolderMembershipManagementPolicy.Serializer.INSTANCE).deserialize(kVar);
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
                if (sharedFolderMembershipManagementPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SharedFolderChangeMemberManagementPolicyDetails sharedFolderChangeMemberManagementPolicyDetails = new SharedFolderChangeMemberManagementPolicyDetails(l.longValue(), strDeserialize, sharedFolderMembershipManagementPolicyDeserialize, str, sharedFolderMembershipManagementPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedFolderChangeMemberManagementPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
