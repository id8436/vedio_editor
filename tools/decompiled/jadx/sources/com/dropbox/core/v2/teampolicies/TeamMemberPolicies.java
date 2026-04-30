package com.dropbox.core.v2.teampolicies;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teampolicies.EmmState;
import com.dropbox.core.v2.teampolicies.OfficeAddInPolicy;
import com.dropbox.core.v2.teampolicies.TeamSharingPolicies;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamMemberPolicies {
    protected final EmmState emmState;
    protected final OfficeAddInPolicy officeAddin;
    protected final TeamSharingPolicies sharing;

    public TeamMemberPolicies(TeamSharingPolicies teamSharingPolicies, EmmState emmState, OfficeAddInPolicy officeAddInPolicy) {
        if (teamSharingPolicies == null) {
            throw new IllegalArgumentException("Required value for 'sharing' is null");
        }
        this.sharing = teamSharingPolicies;
        if (emmState == null) {
            throw new IllegalArgumentException("Required value for 'emmState' is null");
        }
        this.emmState = emmState;
        if (officeAddInPolicy == null) {
            throw new IllegalArgumentException("Required value for 'officeAddin' is null");
        }
        this.officeAddin = officeAddInPolicy;
    }

    public TeamSharingPolicies getSharing() {
        return this.sharing;
    }

    public EmmState getEmmState() {
        return this.emmState;
    }

    public OfficeAddInPolicy getOfficeAddin() {
        return this.officeAddin;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharing, this.emmState, this.officeAddin});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamMemberPolicies teamMemberPolicies = (TeamMemberPolicies) obj;
            return (this.sharing == teamMemberPolicies.sharing || this.sharing.equals(teamMemberPolicies.sharing)) && (this.emmState == teamMemberPolicies.emmState || this.emmState.equals(teamMemberPolicies.emmState)) && (this.officeAddin == teamMemberPolicies.officeAddin || this.officeAddin.equals(teamMemberPolicies.officeAddin));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<TeamMemberPolicies> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamMemberPolicies teamMemberPolicies, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("sharing");
            TeamSharingPolicies.Serializer.INSTANCE.serialize(teamMemberPolicies.sharing, gVar);
            gVar.a("emm_state");
            EmmState.Serializer.INSTANCE.serialize(teamMemberPolicies.emmState, gVar);
            gVar.a("office_addin");
            OfficeAddInPolicy.Serializer.INSTANCE.serialize(teamMemberPolicies.officeAddin, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamMemberPolicies deserialize(k kVar, boolean z) throws IOException {
            String tag;
            OfficeAddInPolicy officeAddInPolicyDeserialize;
            EmmState emmStateDeserialize;
            TeamSharingPolicies teamSharingPoliciesDeserialize;
            OfficeAddInPolicy officeAddInPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                EmmState emmState = null;
                TeamSharingPolicies teamSharingPolicies = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("sharing".equals(strD)) {
                        OfficeAddInPolicy officeAddInPolicy2 = officeAddInPolicy;
                        emmStateDeserialize = emmState;
                        teamSharingPoliciesDeserialize = TeamSharingPolicies.Serializer.INSTANCE.deserialize(kVar);
                        officeAddInPolicyDeserialize = officeAddInPolicy2;
                    } else if ("emm_state".equals(strD)) {
                        teamSharingPoliciesDeserialize = teamSharingPolicies;
                        officeAddInPolicyDeserialize = officeAddInPolicy;
                        emmStateDeserialize = EmmState.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("office_addin".equals(strD)) {
                        officeAddInPolicyDeserialize = OfficeAddInPolicy.Serializer.INSTANCE.deserialize(kVar);
                        emmStateDeserialize = emmState;
                        teamSharingPoliciesDeserialize = teamSharingPolicies;
                    } else {
                        skipValue(kVar);
                        officeAddInPolicyDeserialize = officeAddInPolicy;
                        emmStateDeserialize = emmState;
                        teamSharingPoliciesDeserialize = teamSharingPolicies;
                    }
                    teamSharingPolicies = teamSharingPoliciesDeserialize;
                    emmState = emmStateDeserialize;
                    officeAddInPolicy = officeAddInPolicyDeserialize;
                }
                if (teamSharingPolicies == null) {
                    throw new j(kVar, "Required field \"sharing\" missing.");
                }
                if (emmState == null) {
                    throw new j(kVar, "Required field \"emm_state\" missing.");
                }
                if (officeAddInPolicy == null) {
                    throw new j(kVar, "Required field \"office_addin\" missing.");
                }
                TeamMemberPolicies teamMemberPolicies = new TeamMemberPolicies(teamSharingPolicies, emmState, officeAddInPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamMemberPolicies;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
