package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.TeamFolderAccessError;
import com.dropbox.core.v2.team.TeamFolderInvalidStatusError;
import com.dropbox.core.v2.team.TeamFolderTeamSharedDropboxError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class TeamFolderRenameError {
    private Tag _tag;
    private TeamFolderAccessError accessErrorValue;
    private TeamFolderInvalidStatusError statusErrorValue;
    private TeamFolderTeamSharedDropboxError teamSharedDropboxErrorValue;
    public static final TeamFolderRenameError OTHER = new TeamFolderRenameError().withTag(Tag.OTHER);
    public static final TeamFolderRenameError INVALID_FOLDER_NAME = new TeamFolderRenameError().withTag(Tag.INVALID_FOLDER_NAME);
    public static final TeamFolderRenameError FOLDER_NAME_ALREADY_USED = new TeamFolderRenameError().withTag(Tag.FOLDER_NAME_ALREADY_USED);
    public static final TeamFolderRenameError FOLDER_NAME_RESERVED = new TeamFolderRenameError().withTag(Tag.FOLDER_NAME_RESERVED);

    public enum Tag {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER,
        INVALID_FOLDER_NAME,
        FOLDER_NAME_ALREADY_USED,
        FOLDER_NAME_RESERVED
    }

    private TeamFolderRenameError() {
    }

    private TeamFolderRenameError withTag(Tag tag) {
        TeamFolderRenameError teamFolderRenameError = new TeamFolderRenameError();
        teamFolderRenameError._tag = tag;
        return teamFolderRenameError;
    }

    private TeamFolderRenameError withTagAndAccessError(Tag tag, TeamFolderAccessError teamFolderAccessError) {
        TeamFolderRenameError teamFolderRenameError = new TeamFolderRenameError();
        teamFolderRenameError._tag = tag;
        teamFolderRenameError.accessErrorValue = teamFolderAccessError;
        return teamFolderRenameError;
    }

    private TeamFolderRenameError withTagAndStatusError(Tag tag, TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        TeamFolderRenameError teamFolderRenameError = new TeamFolderRenameError();
        teamFolderRenameError._tag = tag;
        teamFolderRenameError.statusErrorValue = teamFolderInvalidStatusError;
        return teamFolderRenameError;
    }

    private TeamFolderRenameError withTagAndTeamSharedDropboxError(Tag tag, TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        TeamFolderRenameError teamFolderRenameError = new TeamFolderRenameError();
        teamFolderRenameError._tag = tag;
        teamFolderRenameError.teamSharedDropboxErrorValue = teamFolderTeamSharedDropboxError;
        return teamFolderRenameError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static TeamFolderRenameError accessError(TeamFolderAccessError teamFolderAccessError) {
        if (teamFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamFolderRenameError().withTagAndAccessError(Tag.ACCESS_ERROR, teamFolderAccessError);
    }

    public TeamFolderAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isStatusError() {
        return this._tag == Tag.STATUS_ERROR;
    }

    public static TeamFolderRenameError statusError(TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        if (teamFolderInvalidStatusError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamFolderRenameError().withTagAndStatusError(Tag.STATUS_ERROR, teamFolderInvalidStatusError);
    }

    public TeamFolderInvalidStatusError getStatusErrorValue() {
        if (this._tag != Tag.STATUS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.STATUS_ERROR, but was Tag." + this._tag.name());
        }
        return this.statusErrorValue;
    }

    public boolean isTeamSharedDropboxError() {
        return this._tag == Tag.TEAM_SHARED_DROPBOX_ERROR;
    }

    public static TeamFolderRenameError teamSharedDropboxError(TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        if (teamFolderTeamSharedDropboxError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamFolderRenameError().withTagAndTeamSharedDropboxError(Tag.TEAM_SHARED_DROPBOX_ERROR, teamFolderTeamSharedDropboxError);
    }

    public TeamFolderTeamSharedDropboxError getTeamSharedDropboxErrorValue() {
        if (this._tag != Tag.TEAM_SHARED_DROPBOX_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_SHARED_DROPBOX_ERROR, but was Tag." + this._tag.name());
        }
        return this.teamSharedDropboxErrorValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public boolean isInvalidFolderName() {
        return this._tag == Tag.INVALID_FOLDER_NAME;
    }

    public boolean isFolderNameAlreadyUsed() {
        return this._tag == Tag.FOLDER_NAME_ALREADY_USED;
    }

    public boolean isFolderNameReserved() {
        return this._tag == Tag.FOLDER_NAME_RESERVED;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.accessErrorValue, this.statusErrorValue, this.teamSharedDropboxErrorValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderRenameError)) {
            return false;
        }
        TeamFolderRenameError teamFolderRenameError = (TeamFolderRenameError) obj;
        if (this._tag != teamFolderRenameError._tag) {
            return false;
        }
        switch (this._tag) {
            case ACCESS_ERROR:
                return this.accessErrorValue == teamFolderRenameError.accessErrorValue || this.accessErrorValue.equals(teamFolderRenameError.accessErrorValue);
            case STATUS_ERROR:
                return this.statusErrorValue == teamFolderRenameError.statusErrorValue || this.statusErrorValue.equals(teamFolderRenameError.statusErrorValue);
            case TEAM_SHARED_DROPBOX_ERROR:
                return this.teamSharedDropboxErrorValue == teamFolderRenameError.teamSharedDropboxErrorValue || this.teamSharedDropboxErrorValue.equals(teamFolderRenameError.teamSharedDropboxErrorValue);
            case OTHER:
                return true;
            case INVALID_FOLDER_NAME:
                return true;
            case FOLDER_NAME_ALREADY_USED:
                return true;
            case FOLDER_NAME_RESERVED:
                return true;
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<TeamFolderRenameError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderRenameError teamFolderRenameError, g gVar) throws IOException {
            switch (teamFolderRenameError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    TeamFolderAccessError.Serializer.INSTANCE.serialize(teamFolderRenameError.accessErrorValue, gVar);
                    gVar.f();
                    return;
                case STATUS_ERROR:
                    gVar.e();
                    writeTag("status_error", gVar);
                    gVar.a("status_error");
                    TeamFolderInvalidStatusError.Serializer.INSTANCE.serialize(teamFolderRenameError.statusErrorValue, gVar);
                    gVar.f();
                    return;
                case TEAM_SHARED_DROPBOX_ERROR:
                    gVar.e();
                    writeTag("team_shared_dropbox_error", gVar);
                    gVar.a("team_shared_dropbox_error");
                    TeamFolderTeamSharedDropboxError.Serializer.INSTANCE.serialize(teamFolderRenameError.teamSharedDropboxErrorValue, gVar);
                    gVar.f();
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case INVALID_FOLDER_NAME:
                    gVar.b("invalid_folder_name");
                    return;
                case FOLDER_NAME_ALREADY_USED:
                    gVar.b("folder_name_already_used");
                    return;
                case FOLDER_NAME_RESERVED:
                    gVar.b("folder_name_reserved");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + teamFolderRenameError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamFolderRenameError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamFolderRenameError teamFolderRenameErrorTeamSharedDropboxError;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                teamFolderRenameErrorTeamSharedDropboxError = TeamFolderRenameError.accessError(TeamFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("status_error".equals(tag)) {
                expectField("status_error", kVar);
                teamFolderRenameErrorTeamSharedDropboxError = TeamFolderRenameError.statusError(TeamFolderInvalidStatusError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("team_shared_dropbox_error".equals(tag)) {
                expectField("team_shared_dropbox_error", kVar);
                teamFolderRenameErrorTeamSharedDropboxError = TeamFolderRenameError.teamSharedDropboxError(TeamFolderTeamSharedDropboxError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("other".equals(tag)) {
                teamFolderRenameErrorTeamSharedDropboxError = TeamFolderRenameError.OTHER;
            } else if ("invalid_folder_name".equals(tag)) {
                teamFolderRenameErrorTeamSharedDropboxError = TeamFolderRenameError.INVALID_FOLDER_NAME;
            } else if ("folder_name_already_used".equals(tag)) {
                teamFolderRenameErrorTeamSharedDropboxError = TeamFolderRenameError.FOLDER_NAME_ALREADY_USED;
            } else if ("folder_name_reserved".equals(tag)) {
                teamFolderRenameErrorTeamSharedDropboxError = TeamFolderRenameError.FOLDER_NAME_RESERVED;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamFolderRenameErrorTeamSharedDropboxError;
        }
    }
}
