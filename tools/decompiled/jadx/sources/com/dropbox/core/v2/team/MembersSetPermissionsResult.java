package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.AdminTier;
import com.google.gdata.client.appsforyourdomain.AppsGroupsService;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MembersSetPermissionsResult {
    protected final AdminTier role;
    protected final String teamMemberId;

    public MembersSetPermissionsResult(String str, AdminTier adminTier) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
        }
        this.teamMemberId = str;
        if (adminTier == null) {
            throw new IllegalArgumentException("Required value for 'role' is null");
        }
        this.role = adminTier;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public AdminTier getRole() {
        return this.role;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamMemberId, this.role});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MembersSetPermissionsResult membersSetPermissionsResult = (MembersSetPermissionsResult) obj;
            return (this.teamMemberId == membersSetPermissionsResult.teamMemberId || this.teamMemberId.equals(membersSetPermissionsResult.teamMemberId)) && (this.role == membersSetPermissionsResult.role || this.role.equals(membersSetPermissionsResult.role));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MembersSetPermissionsResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MembersSetPermissionsResult membersSetPermissionsResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_member_id");
            StoneSerializers.string().serialize(membersSetPermissionsResult.teamMemberId, gVar);
            gVar.a(AppsGroupsService.APPS_PROP_GROUP_ROLE);
            AdminTier.Serializer.INSTANCE.serialize(membersSetPermissionsResult.role, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MembersSetPermissionsResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            AdminTier adminTierDeserialize;
            String strDeserialize;
            AdminTier adminTier = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("team_member_id".equals(strD)) {
                        AdminTier adminTier2 = adminTier;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        adminTierDeserialize = adminTier2;
                    } else if (AppsGroupsService.APPS_PROP_GROUP_ROLE.equals(strD)) {
                        adminTierDeserialize = AdminTier.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        adminTierDeserialize = adminTier;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    adminTier = adminTierDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"team_member_id\" missing.");
                }
                if (adminTier == null) {
                    throw new j(kVar, "Required field \"role\" missing.");
                }
                MembersSetPermissionsResult membersSetPermissionsResult = new MembersSetPermissionsResult(str, adminTier);
                if (!z) {
                    expectEndObject(kVar);
                }
                return membersSetPermissionsResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
