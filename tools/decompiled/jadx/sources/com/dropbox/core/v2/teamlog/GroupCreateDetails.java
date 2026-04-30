package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.GroupJoinPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GroupCreateDetails {
    protected final Boolean isCompanyManaged;
    protected final GroupJoinPolicy joinPolicy;

    public GroupCreateDetails(GroupJoinPolicy groupJoinPolicy, Boolean bool) {
        this.isCompanyManaged = bool;
        if (groupJoinPolicy == null) {
            throw new IllegalArgumentException("Required value for 'joinPolicy' is null");
        }
        this.joinPolicy = groupJoinPolicy;
    }

    public GroupCreateDetails(GroupJoinPolicy groupJoinPolicy) {
        this(groupJoinPolicy, null);
    }

    public GroupJoinPolicy getJoinPolicy() {
        return this.joinPolicy;
    }

    public Boolean getIsCompanyManaged() {
        return this.isCompanyManaged;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.isCompanyManaged, this.joinPolicy});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupCreateDetails groupCreateDetails = (GroupCreateDetails) obj;
            if (this.joinPolicy == groupCreateDetails.joinPolicy || this.joinPolicy.equals(groupCreateDetails.joinPolicy)) {
                if (this.isCompanyManaged == groupCreateDetails.isCompanyManaged) {
                    return true;
                }
                if (this.isCompanyManaged != null && this.isCompanyManaged.equals(groupCreateDetails.isCompanyManaged)) {
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

    class Serializer extends StructSerializer<GroupCreateDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupCreateDetails groupCreateDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("join_policy");
            GroupJoinPolicy.Serializer.INSTANCE.serialize(groupCreateDetails.joinPolicy, gVar);
            if (groupCreateDetails.isCompanyManaged != null) {
                gVar.a("is_company_managed");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(groupCreateDetails.isCompanyManaged, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupCreateDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean bool = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                GroupJoinPolicy groupJoinPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("join_policy".equals(strD)) {
                        groupJoinPolicyDeserialize = GroupJoinPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("is_company_managed".equals(strD)) {
                        bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (groupJoinPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"join_policy\" missing.");
                }
                GroupCreateDetails groupCreateDetails = new GroupCreateDetails(groupJoinPolicyDeserialize, bool);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupCreateDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
