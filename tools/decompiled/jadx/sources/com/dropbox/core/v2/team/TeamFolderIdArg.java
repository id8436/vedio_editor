package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class TeamFolderIdArg {
    protected final String teamFolderId;

    public TeamFolderIdArg(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'teamFolderId' does not match pattern");
        }
        this.teamFolderId = str;
    }

    public String getTeamFolderId() {
        return this.teamFolderId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamFolderId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamFolderIdArg teamFolderIdArg = (TeamFolderIdArg) obj;
        return this.teamFolderId == teamFolderIdArg.teamFolderId || this.teamFolderId.equals(teamFolderIdArg.teamFolderId);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamFolderIdArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamFolderIdArg teamFolderIdArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_folder_id");
            StoneSerializers.string().serialize(teamFolderIdArg.teamFolderId, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamFolderIdArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
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
                    if ("team_folder_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"team_folder_id\" missing.");
                }
                TeamFolderIdArg teamFolderIdArg = new TeamFolderIdArg(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamFolderIdArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
