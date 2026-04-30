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
public final class TeamFolderArchiveError {
    public static final TeamFolderArchiveError OTHER = new TeamFolderArchiveError().withTag(Tag.OTHER);
    private Tag _tag;
    private TeamFolderAccessError accessErrorValue;
    private TeamFolderInvalidStatusError statusErrorValue;
    private TeamFolderTeamSharedDropboxError teamSharedDropboxErrorValue;

    public enum Tag {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER
    }

    private TeamFolderArchiveError() {
    }

    private TeamFolderArchiveError withTag(Tag tag) {
        TeamFolderArchiveError teamFolderArchiveError = new TeamFolderArchiveError();
        teamFolderArchiveError._tag = tag;
        return teamFolderArchiveError;
    }

    private TeamFolderArchiveError withTagAndAccessError(Tag tag, TeamFolderAccessError teamFolderAccessError) {
        TeamFolderArchiveError teamFolderArchiveError = new TeamFolderArchiveError();
        teamFolderArchiveError._tag = tag;
        teamFolderArchiveError.accessErrorValue = teamFolderAccessError;
        return teamFolderArchiveError;
    }

    private TeamFolderArchiveError withTagAndStatusError(Tag tag, TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        TeamFolderArchiveError teamFolderArchiveError = new TeamFolderArchiveError();
        teamFolderArchiveError._tag = tag;
        teamFolderArchiveError.statusErrorValue = teamFolderInvalidStatusError;
        return teamFolderArchiveError;
    }

    private TeamFolderArchiveError withTagAndTeamSharedDropboxError(Tag tag, TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        TeamFolderArchiveError teamFolderArchiveError = new TeamFolderArchiveError();
        teamFolderArchiveError._tag = tag;
        teamFolderArchiveError.teamSharedDropboxErrorValue = teamFolderTeamSharedDropboxError;
        return teamFolderArchiveError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static TeamFolderArchiveError accessError(TeamFolderAccessError teamFolderAccessError) {
        if (teamFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamFolderArchiveError().withTagAndAccessError(Tag.ACCESS_ERROR, teamFolderAccessError);
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

    public static TeamFolderArchiveError statusError(TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        if (teamFolderInvalidStatusError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamFolderArchiveError().withTagAndStatusError(Tag.STATUS_ERROR, teamFolderInvalidStatusError);
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

    public static TeamFolderArchiveError teamSharedDropboxError(TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        if (teamFolderTeamSharedDropboxError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamFolderArchiveError().withTagAndTeamSharedDropboxError(Tag.TEAM_SHARED_DROPBOX_ERROR, teamFolderTeamSharedDropboxError);
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

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.accessErrorValue, this.statusErrorValue, this.teamSharedDropboxErrorValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderArchiveError)) {
            return false;
        }
        TeamFolderArchiveError teamFolderArchiveError = (TeamFolderArchiveError) obj;
        if (this._tag != teamFolderArchiveError._tag) {
            return false;
        }
        switch (this._tag) {
            case ACCESS_ERROR:
                return this.accessErrorValue == teamFolderArchiveError.accessErrorValue || this.accessErrorValue.equals(teamFolderArchiveError.accessErrorValue);
            case STATUS_ERROR:
                return this.statusErrorValue == teamFolderArchiveError.statusErrorValue || this.statusErrorValue.equals(teamFolderArchiveError.statusErrorValue);
            case TEAM_SHARED_DROPBOX_ERROR:
                return this.teamSharedDropboxErrorValue == teamFolderArchiveError.teamSharedDropboxErrorValue || this.teamSharedDropboxErrorValue.equals(teamFolderArchiveError.teamSharedDropboxErrorValue);
            case OTHER:
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

    class Serializer extends UnionSerializer<TeamFolderArchiveError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderArchiveError teamFolderArchiveError, g gVar) throws IOException {
            switch (teamFolderArchiveError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    TeamFolderAccessError.Serializer.INSTANCE.serialize(teamFolderArchiveError.accessErrorValue, gVar);
                    gVar.f();
                    return;
                case STATUS_ERROR:
                    gVar.e();
                    writeTag("status_error", gVar);
                    gVar.a("status_error");
                    TeamFolderInvalidStatusError.Serializer.INSTANCE.serialize(teamFolderArchiveError.statusErrorValue, gVar);
                    gVar.f();
                    return;
                case TEAM_SHARED_DROPBOX_ERROR:
                    gVar.e();
                    writeTag("team_shared_dropbox_error", gVar);
                    gVar.a("team_shared_dropbox_error");
                    TeamFolderTeamSharedDropboxError.Serializer.INSTANCE.serialize(teamFolderArchiveError.teamSharedDropboxErrorValue, gVar);
                    gVar.f();
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + teamFolderArchiveError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamFolderArchiveError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamFolderArchiveError teamFolderArchiveErrorTeamSharedDropboxError;
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
                teamFolderArchiveErrorTeamSharedDropboxError = TeamFolderArchiveError.accessError(TeamFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("status_error".equals(tag)) {
                expectField("status_error", kVar);
                teamFolderArchiveErrorTeamSharedDropboxError = TeamFolderArchiveError.statusError(TeamFolderInvalidStatusError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("team_shared_dropbox_error".equals(tag)) {
                expectField("team_shared_dropbox_error", kVar);
                teamFolderArchiveErrorTeamSharedDropboxError = TeamFolderArchiveError.teamSharedDropboxError(TeamFolderTeamSharedDropboxError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("other".equals(tag)) {
                teamFolderArchiveErrorTeamSharedDropboxError = TeamFolderArchiveError.OTHER;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamFolderArchiveErrorTeamSharedDropboxError;
        }
    }
}
