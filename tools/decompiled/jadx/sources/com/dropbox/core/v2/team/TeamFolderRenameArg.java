package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class TeamFolderRenameArg extends TeamFolderIdArg {
    protected final String name;

    public TeamFolderRenameArg(String str, String str2) {
        super(str);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str2;
    }

    @Override // com.dropbox.core.v2.team.TeamFolderIdArg
    public String getTeamFolderId() {
        return this.teamFolderId;
    }

    public String getName() {
        return this.name;
    }

    @Override // com.dropbox.core.v2.team.TeamFolderIdArg
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.TeamFolderIdArg
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamFolderRenameArg teamFolderRenameArg = (TeamFolderRenameArg) obj;
            return (this.teamFolderId == teamFolderRenameArg.teamFolderId || this.teamFolderId.equals(teamFolderRenameArg.teamFolderId)) && (this.name == teamFolderRenameArg.name || this.name.equals(teamFolderRenameArg.name));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.team.TeamFolderIdArg
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.team.TeamFolderIdArg
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamFolderRenameArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamFolderRenameArg teamFolderRenameArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_folder_id");
            StoneSerializers.string().serialize(teamFolderRenameArg.teamFolderId, gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(teamFolderRenameArg.name, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamFolderRenameArg deserialize(k kVar, boolean z) throws IOException {
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
                    if ("team_folder_id".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("name".equals(strD)) {
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
                    throw new j(kVar, "Required field \"team_folder_id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                TeamFolderRenameArg teamFolderRenameArg = new TeamFolderRenameArg(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamFolderRenameArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
