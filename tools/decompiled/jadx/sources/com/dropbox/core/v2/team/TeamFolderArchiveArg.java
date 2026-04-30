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
class TeamFolderArchiveArg extends TeamFolderIdArg {
    protected final boolean forceAsyncOff;

    public TeamFolderArchiveArg(String str, boolean z) {
        super(str);
        this.forceAsyncOff = z;
    }

    public TeamFolderArchiveArg(String str) {
        this(str, false);
    }

    @Override // com.dropbox.core.v2.team.TeamFolderIdArg
    public String getTeamFolderId() {
        return this.teamFolderId;
    }

    public boolean getForceAsyncOff() {
        return this.forceAsyncOff;
    }

    @Override // com.dropbox.core.v2.team.TeamFolderIdArg
    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.forceAsyncOff)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.TeamFolderIdArg
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamFolderArchiveArg teamFolderArchiveArg = (TeamFolderArchiveArg) obj;
            return (this.teamFolderId == teamFolderArchiveArg.teamFolderId || this.teamFolderId.equals(teamFolderArchiveArg.teamFolderId)) && this.forceAsyncOff == teamFolderArchiveArg.forceAsyncOff;
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

    class Serializer extends StructSerializer<TeamFolderArchiveArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamFolderArchiveArg teamFolderArchiveArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_folder_id");
            StoneSerializers.string().serialize(teamFolderArchiveArg.teamFolderId, gVar);
            gVar.a("force_async_off");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(teamFolderArchiveArg.forceAsyncOff), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamFolderArchiveArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("team_folder_id".equals(strD)) {
                        Boolean bool2 = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("force_async_off".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    bool = boolDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"team_folder_id\" missing.");
                }
                TeamFolderArchiveArg teamFolderArchiveArg = new TeamFolderArchiveArg(str, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamFolderArchiveArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
