package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.GroupUserManagementPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GroupUserManagementChangePolicyDetails {
    protected final GroupUserManagementPolicy newValue;
    protected final GroupUserManagementPolicy previousValue;

    public GroupUserManagementChangePolicyDetails(GroupUserManagementPolicy groupUserManagementPolicy, GroupUserManagementPolicy groupUserManagementPolicy2) {
        if (groupUserManagementPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = groupUserManagementPolicy;
        this.previousValue = groupUserManagementPolicy2;
    }

    public GroupUserManagementChangePolicyDetails(GroupUserManagementPolicy groupUserManagementPolicy) {
        this(groupUserManagementPolicy, null);
    }

    public GroupUserManagementPolicy getNewValue() {
        return this.newValue;
    }

    public GroupUserManagementPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupUserManagementChangePolicyDetails groupUserManagementChangePolicyDetails = (GroupUserManagementChangePolicyDetails) obj;
            if (this.newValue == groupUserManagementChangePolicyDetails.newValue || this.newValue.equals(groupUserManagementChangePolicyDetails.newValue)) {
                if (this.previousValue == groupUserManagementChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(groupUserManagementChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<GroupUserManagementChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupUserManagementChangePolicyDetails groupUserManagementChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            GroupUserManagementPolicy.Serializer.INSTANCE.serialize(groupUserManagementChangePolicyDetails.newValue, gVar);
            if (groupUserManagementChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(GroupUserManagementPolicy.Serializer.INSTANCE).serialize(groupUserManagementChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupUserManagementChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            GroupUserManagementPolicy groupUserManagementPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                GroupUserManagementPolicy groupUserManagementPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        groupUserManagementPolicyDeserialize = GroupUserManagementPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        groupUserManagementPolicy = (GroupUserManagementPolicy) StoneSerializers.nullable(GroupUserManagementPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (groupUserManagementPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                GroupUserManagementChangePolicyDetails groupUserManagementChangePolicyDetails = new GroupUserManagementChangePolicyDetails(groupUserManagementPolicyDeserialize, groupUserManagementPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupUserManagementChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
