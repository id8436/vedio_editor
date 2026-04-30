package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.TeamMembershipType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemberChangeMembershipTypeDetails {
    protected final TeamMembershipType newValue;
    protected final TeamMembershipType prevValue;

    public MemberChangeMembershipTypeDetails(TeamMembershipType teamMembershipType, TeamMembershipType teamMembershipType2) {
        if (teamMembershipType == null) {
            throw new IllegalArgumentException("Required value for 'prevValue' is null");
        }
        this.prevValue = teamMembershipType;
        if (teamMembershipType2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = teamMembershipType2;
    }

    public TeamMembershipType getPrevValue() {
        return this.prevValue;
    }

    public TeamMembershipType getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.prevValue, this.newValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MemberChangeMembershipTypeDetails memberChangeMembershipTypeDetails = (MemberChangeMembershipTypeDetails) obj;
            return (this.prevValue == memberChangeMembershipTypeDetails.prevValue || this.prevValue.equals(memberChangeMembershipTypeDetails.prevValue)) && (this.newValue == memberChangeMembershipTypeDetails.newValue || this.newValue.equals(memberChangeMembershipTypeDetails.newValue));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MemberChangeMembershipTypeDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberChangeMembershipTypeDetails memberChangeMembershipTypeDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("prev_value");
            TeamMembershipType.Serializer.INSTANCE.serialize(memberChangeMembershipTypeDetails.prevValue, gVar);
            gVar.a("new_value");
            TeamMembershipType.Serializer.INSTANCE.serialize(memberChangeMembershipTypeDetails.newValue, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberChangeMembershipTypeDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            TeamMembershipType teamMembershipTypeDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TeamMembershipType teamMembershipTypeDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("prev_value".equals(strD)) {
                        teamMembershipTypeDeserialize2 = TeamMembershipType.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("new_value".equals(strD)) {
                        teamMembershipTypeDeserialize = TeamMembershipType.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (teamMembershipTypeDeserialize2 == null) {
                    throw new j(kVar, "Required field \"prev_value\" missing.");
                }
                if (teamMembershipTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                MemberChangeMembershipTypeDetails memberChangeMembershipTypeDetails = new MemberChangeMembershipTypeDetails(teamMembershipTypeDeserialize2, teamMembershipTypeDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberChangeMembershipTypeDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
