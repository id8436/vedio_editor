package com.dropbox.core.v2.users;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teampolicies.OfficeAddInPolicy;
import com.dropbox.core.v2.teampolicies.TeamSharingPolicies;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FullTeam extends Team {
    protected final OfficeAddInPolicy officeAddinPolicy;
    protected final TeamSharingPolicies sharingPolicies;

    public FullTeam(String str, String str2, TeamSharingPolicies teamSharingPolicies, OfficeAddInPolicy officeAddInPolicy) {
        super(str, str2);
        if (teamSharingPolicies == null) {
            throw new IllegalArgumentException("Required value for 'sharingPolicies' is null");
        }
        this.sharingPolicies = teamSharingPolicies;
        if (officeAddInPolicy == null) {
            throw new IllegalArgumentException("Required value for 'officeAddinPolicy' is null");
        }
        this.officeAddinPolicy = officeAddInPolicy;
    }

    @Override // com.dropbox.core.v2.users.Team
    public String getId() {
        return this.id;
    }

    @Override // com.dropbox.core.v2.users.Team
    public String getName() {
        return this.name;
    }

    public TeamSharingPolicies getSharingPolicies() {
        return this.sharingPolicies;
    }

    public OfficeAddInPolicy getOfficeAddinPolicy() {
        return this.officeAddinPolicy;
    }

    @Override // com.dropbox.core.v2.users.Team
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharingPolicies, this.officeAddinPolicy}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.users.Team
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FullTeam fullTeam = (FullTeam) obj;
            return (this.id == fullTeam.id || this.id.equals(fullTeam.id)) && (this.name == fullTeam.name || this.name.equals(fullTeam.name)) && ((this.sharingPolicies == fullTeam.sharingPolicies || this.sharingPolicies.equals(fullTeam.sharingPolicies)) && (this.officeAddinPolicy == fullTeam.officeAddinPolicy || this.officeAddinPolicy.equals(fullTeam.officeAddinPolicy)));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.users.Team
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.users.Team
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FullTeam> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FullTeam fullTeam, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("id");
            StoneSerializers.string().serialize(fullTeam.id, gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(fullTeam.name, gVar);
            gVar.a("sharing_policies");
            TeamSharingPolicies.Serializer.INSTANCE.serialize(fullTeam.sharingPolicies, gVar);
            gVar.a("office_addin_policy");
            OfficeAddInPolicy.Serializer.INSTANCE.serialize(fullTeam.officeAddinPolicy, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FullTeam deserialize(k kVar, boolean z) throws IOException {
            String tag;
            OfficeAddInPolicy officeAddInPolicyDeserialize;
            TeamSharingPolicies teamSharingPoliciesDeserialize;
            String strDeserialize;
            String strDeserialize2;
            OfficeAddInPolicy officeAddInPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TeamSharingPolicies teamSharingPolicies = null;
                String str = null;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("id".equals(strD)) {
                        OfficeAddInPolicy officeAddInPolicy2 = officeAddInPolicy;
                        teamSharingPoliciesDeserialize = teamSharingPolicies;
                        strDeserialize = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        officeAddInPolicyDeserialize = officeAddInPolicy2;
                    } else if ("name".equals(strD)) {
                        strDeserialize2 = str2;
                        TeamSharingPolicies teamSharingPolicies2 = teamSharingPolicies;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        officeAddInPolicyDeserialize = officeAddInPolicy;
                        teamSharingPoliciesDeserialize = teamSharingPolicies2;
                    } else if ("sharing_policies".equals(strD)) {
                        strDeserialize = str;
                        strDeserialize2 = str2;
                        OfficeAddInPolicy officeAddInPolicy3 = officeAddInPolicy;
                        teamSharingPoliciesDeserialize = TeamSharingPolicies.Serializer.INSTANCE.deserialize(kVar);
                        officeAddInPolicyDeserialize = officeAddInPolicy3;
                    } else if ("office_addin_policy".equals(strD)) {
                        officeAddInPolicyDeserialize = OfficeAddInPolicy.Serializer.INSTANCE.deserialize(kVar);
                        teamSharingPoliciesDeserialize = teamSharingPolicies;
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        officeAddInPolicyDeserialize = officeAddInPolicy;
                        teamSharingPoliciesDeserialize = teamSharingPolicies;
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                    teamSharingPolicies = teamSharingPoliciesDeserialize;
                    officeAddInPolicy = officeAddInPolicyDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (teamSharingPolicies == null) {
                    throw new j(kVar, "Required field \"sharing_policies\" missing.");
                }
                if (officeAddInPolicy == null) {
                    throw new j(kVar, "Required field \"office_addin_policy\" missing.");
                }
                FullTeam fullTeam = new FullTeam(str2, str, teamSharingPolicies, officeAddInPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fullTeam;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
