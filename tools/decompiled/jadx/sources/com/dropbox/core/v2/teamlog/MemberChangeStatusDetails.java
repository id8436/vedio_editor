package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.JoinTeamDetails;
import com.dropbox.core.v2.teamlog.MemberStatus;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemberChangeStatusDetails {
    protected final MemberStatus newValue;
    protected final MemberStatus previousValue;
    protected final JoinTeamDetails teamJoinDetails;

    public MemberChangeStatusDetails(MemberStatus memberStatus, MemberStatus memberStatus2, JoinTeamDetails joinTeamDetails) {
        this.previousValue = memberStatus2;
        if (memberStatus == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = memberStatus;
        this.teamJoinDetails = joinTeamDetails;
    }

    public MemberChangeStatusDetails(MemberStatus memberStatus) {
        this(memberStatus, null, null);
    }

    public MemberStatus getNewValue() {
        return this.newValue;
    }

    public MemberStatus getPreviousValue() {
        return this.previousValue;
    }

    public JoinTeamDetails getTeamJoinDetails() {
        return this.teamJoinDetails;
    }

    public static Builder newBuilder(MemberStatus memberStatus) {
        return new Builder(memberStatus);
    }

    public class Builder {
        protected final MemberStatus newValue;
        protected MemberStatus previousValue;
        protected JoinTeamDetails teamJoinDetails;

        protected Builder(MemberStatus memberStatus) {
            if (memberStatus == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = memberStatus;
            this.previousValue = null;
            this.teamJoinDetails = null;
        }

        public Builder withPreviousValue(MemberStatus memberStatus) {
            this.previousValue = memberStatus;
            return this;
        }

        public Builder withTeamJoinDetails(JoinTeamDetails joinTeamDetails) {
            this.teamJoinDetails = joinTeamDetails;
            return this;
        }

        public MemberChangeStatusDetails build() {
            return new MemberChangeStatusDetails(this.newValue, this.previousValue, this.teamJoinDetails);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue, this.teamJoinDetails});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MemberChangeStatusDetails memberChangeStatusDetails = (MemberChangeStatusDetails) obj;
            if ((this.newValue == memberChangeStatusDetails.newValue || this.newValue.equals(memberChangeStatusDetails.newValue)) && (this.previousValue == memberChangeStatusDetails.previousValue || (this.previousValue != null && this.previousValue.equals(memberChangeStatusDetails.previousValue)))) {
                if (this.teamJoinDetails == memberChangeStatusDetails.teamJoinDetails) {
                    return true;
                }
                if (this.teamJoinDetails != null && this.teamJoinDetails.equals(memberChangeStatusDetails.teamJoinDetails)) {
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

    class Serializer extends StructSerializer<MemberChangeStatusDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberChangeStatusDetails memberChangeStatusDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            MemberStatus.Serializer.INSTANCE.serialize(memberChangeStatusDetails.newValue, gVar);
            if (memberChangeStatusDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(MemberStatus.Serializer.INSTANCE).serialize(memberChangeStatusDetails.previousValue, gVar);
            }
            if (memberChangeStatusDetails.teamJoinDetails != null) {
                gVar.a("team_join_details");
                StoneSerializers.nullableStruct(JoinTeamDetails.Serializer.INSTANCE).serialize(memberChangeStatusDetails.teamJoinDetails, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberChangeStatusDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            JoinTeamDetails joinTeamDetails;
            MemberStatus memberStatus;
            MemberStatus memberStatusDeserialize;
            JoinTeamDetails joinTeamDetails2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                MemberStatus memberStatus2 = null;
                MemberStatus memberStatus3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        JoinTeamDetails joinTeamDetails3 = joinTeamDetails2;
                        memberStatus = memberStatus2;
                        memberStatusDeserialize = MemberStatus.Serializer.INSTANCE.deserialize(kVar);
                        joinTeamDetails = joinTeamDetails3;
                    } else if ("previous_value".equals(strD)) {
                        memberStatusDeserialize = memberStatus3;
                        joinTeamDetails = joinTeamDetails2;
                        memberStatus = (MemberStatus) StoneSerializers.nullable(MemberStatus.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("team_join_details".equals(strD)) {
                        joinTeamDetails = (JoinTeamDetails) StoneSerializers.nullableStruct(JoinTeamDetails.Serializer.INSTANCE).deserialize(kVar);
                        memberStatus = memberStatus2;
                        memberStatusDeserialize = memberStatus3;
                    } else {
                        skipValue(kVar);
                        joinTeamDetails = joinTeamDetails2;
                        memberStatus = memberStatus2;
                        memberStatusDeserialize = memberStatus3;
                    }
                    memberStatus3 = memberStatusDeserialize;
                    memberStatus2 = memberStatus;
                    joinTeamDetails2 = joinTeamDetails;
                }
                if (memberStatus3 == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                MemberChangeStatusDetails memberChangeStatusDetails = new MemberChangeStatusDetails(memberStatus3, memberStatus2, joinTeamDetails2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberChangeStatusDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
