package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.TeamMemberProfile;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TokenGetAuthenticatedAdminResult {
    protected final TeamMemberProfile adminProfile;

    public TokenGetAuthenticatedAdminResult(TeamMemberProfile teamMemberProfile) {
        if (teamMemberProfile == null) {
            throw new IllegalArgumentException("Required value for 'adminProfile' is null");
        }
        this.adminProfile = teamMemberProfile;
    }

    public TeamMemberProfile getAdminProfile() {
        return this.adminProfile;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.adminProfile});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TokenGetAuthenticatedAdminResult tokenGetAuthenticatedAdminResult = (TokenGetAuthenticatedAdminResult) obj;
        return this.adminProfile == tokenGetAuthenticatedAdminResult.adminProfile || this.adminProfile.equals(tokenGetAuthenticatedAdminResult.adminProfile);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TokenGetAuthenticatedAdminResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TokenGetAuthenticatedAdminResult tokenGetAuthenticatedAdminResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("admin_profile");
            TeamMemberProfile.Serializer.INSTANCE.serialize(tokenGetAuthenticatedAdminResult.adminProfile, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TokenGetAuthenticatedAdminResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            TeamMemberProfile teamMemberProfileDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("admin_profile".equals(strD)) {
                        teamMemberProfileDeserialize = TeamMemberProfile.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (teamMemberProfileDeserialize == null) {
                    throw new j(kVar, "Required field \"admin_profile\" missing.");
                }
                TokenGetAuthenticatedAdminResult tokenGetAuthenticatedAdminResult = new TokenGetAuthenticatedAdminResult(teamMemberProfileDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return tokenGetAuthenticatedAdminResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
