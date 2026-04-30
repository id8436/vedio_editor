package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamName {
    protected final String teamDisplayName;
    protected final String teamLegalName;

    public TeamName(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamDisplayName' is null");
        }
        this.teamDisplayName = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'teamLegalName' is null");
        }
        this.teamLegalName = str2;
    }

    public String getTeamDisplayName() {
        return this.teamDisplayName;
    }

    public String getTeamLegalName() {
        return this.teamLegalName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamDisplayName, this.teamLegalName});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamName teamName = (TeamName) obj;
            return (this.teamDisplayName == teamName.teamDisplayName || this.teamDisplayName.equals(teamName.teamDisplayName)) && (this.teamLegalName == teamName.teamLegalName || this.teamLegalName.equals(teamName.teamLegalName));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamName> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamName teamName, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_display_name");
            StoneSerializers.string().serialize(teamName.teamDisplayName, gVar);
            gVar.a("team_legal_name");
            StoneSerializers.string().serialize(teamName.teamLegalName, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamName deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            String strDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("team_display_name".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("team_legal_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"team_display_name\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"team_legal_name\" missing.");
                }
                TeamName teamName = new TeamName(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamName;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
