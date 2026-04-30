package com.dropbox.core.v2.team;

import android.support.v4.app.NotificationCompat;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.TeamFolderStatus;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class TeamFolderMetadata {
    protected final boolean isTeamSharedDropbox;
    protected final String name;
    protected final TeamFolderStatus status;
    protected final String teamFolderId;

    public TeamFolderMetadata(String str, String str2, TeamFolderStatus teamFolderStatus, boolean z) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'teamFolderId' does not match pattern");
        }
        this.teamFolderId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str2;
        if (teamFolderStatus == null) {
            throw new IllegalArgumentException("Required value for 'status' is null");
        }
        this.status = teamFolderStatus;
        this.isTeamSharedDropbox = z;
    }

    public String getTeamFolderId() {
        return this.teamFolderId;
    }

    public String getName() {
        return this.name;
    }

    public TeamFolderStatus getStatus() {
        return this.status;
    }

    public boolean getIsTeamSharedDropbox() {
        return this.isTeamSharedDropbox;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamFolderId, this.name, this.status, Boolean.valueOf(this.isTeamSharedDropbox)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamFolderMetadata teamFolderMetadata = (TeamFolderMetadata) obj;
            return (this.teamFolderId == teamFolderMetadata.teamFolderId || this.teamFolderId.equals(teamFolderMetadata.teamFolderId)) && (this.name == teamFolderMetadata.name || this.name.equals(teamFolderMetadata.name)) && ((this.status == teamFolderMetadata.status || this.status.equals(teamFolderMetadata.status)) && this.isTeamSharedDropbox == teamFolderMetadata.isTeamSharedDropbox);
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamFolderMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamFolderMetadata teamFolderMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_folder_id");
            StoneSerializers.string().serialize(teamFolderMetadata.teamFolderId, gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(teamFolderMetadata.name, gVar);
            gVar.a(NotificationCompat.CATEGORY_STATUS);
            TeamFolderStatus.Serializer.INSTANCE.serialize(teamFolderMetadata.status, gVar);
            gVar.a("is_team_shared_dropbox");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(teamFolderMetadata.isTeamSharedDropbox), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamFolderMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            TeamFolderStatus teamFolderStatusDeserialize;
            String strDeserialize;
            String strDeserialize2;
            Boolean bool = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TeamFolderStatus teamFolderStatus = null;
                String str = null;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("team_folder_id".equals(strD)) {
                        Boolean bool2 = bool;
                        teamFolderStatusDeserialize = teamFolderStatus;
                        strDeserialize = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("name".equals(strD)) {
                        strDeserialize2 = str2;
                        TeamFolderStatus teamFolderStatus2 = teamFolderStatus;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                        teamFolderStatusDeserialize = teamFolderStatus2;
                    } else if (NotificationCompat.CATEGORY_STATUS.equals(strD)) {
                        strDeserialize = str;
                        strDeserialize2 = str2;
                        Boolean bool3 = bool;
                        teamFolderStatusDeserialize = TeamFolderStatus.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool3;
                    } else if ("is_team_shared_dropbox".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        teamFolderStatusDeserialize = teamFolderStatus;
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        teamFolderStatusDeserialize = teamFolderStatus;
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                    teamFolderStatus = teamFolderStatusDeserialize;
                    bool = boolDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"team_folder_id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (teamFolderStatus == null) {
                    throw new j(kVar, "Required field \"status\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"is_team_shared_dropbox\" missing.");
                }
                TeamFolderMetadata teamFolderMetadata = new TeamFolderMetadata(str2, str, teamFolderStatus, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamFolderMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
