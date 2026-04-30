package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.TeamFolderArchiveError;
import com.dropbox.core.v2.team.TeamFolderMetadata;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class TeamFolderArchiveJobStatus {
    public static final TeamFolderArchiveJobStatus IN_PROGRESS = new TeamFolderArchiveJobStatus().withTag(Tag.IN_PROGRESS);
    private Tag _tag;
    private TeamFolderMetadata completeValue;
    private TeamFolderArchiveError failedValue;

    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    private TeamFolderArchiveJobStatus() {
    }

    private TeamFolderArchiveJobStatus withTag(Tag tag) {
        TeamFolderArchiveJobStatus teamFolderArchiveJobStatus = new TeamFolderArchiveJobStatus();
        teamFolderArchiveJobStatus._tag = tag;
        return teamFolderArchiveJobStatus;
    }

    private TeamFolderArchiveJobStatus withTagAndComplete(Tag tag, TeamFolderMetadata teamFolderMetadata) {
        TeamFolderArchiveJobStatus teamFolderArchiveJobStatus = new TeamFolderArchiveJobStatus();
        teamFolderArchiveJobStatus._tag = tag;
        teamFolderArchiveJobStatus.completeValue = teamFolderMetadata;
        return teamFolderArchiveJobStatus;
    }

    private TeamFolderArchiveJobStatus withTagAndFailed(Tag tag, TeamFolderArchiveError teamFolderArchiveError) {
        TeamFolderArchiveJobStatus teamFolderArchiveJobStatus = new TeamFolderArchiveJobStatus();
        teamFolderArchiveJobStatus._tag = tag;
        teamFolderArchiveJobStatus.failedValue = teamFolderArchiveError;
        return teamFolderArchiveJobStatus;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isInProgress() {
        return this._tag == Tag.IN_PROGRESS;
    }

    public boolean isComplete() {
        return this._tag == Tag.COMPLETE;
    }

    public static TeamFolderArchiveJobStatus complete(TeamFolderMetadata teamFolderMetadata) {
        if (teamFolderMetadata == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamFolderArchiveJobStatus().withTagAndComplete(Tag.COMPLETE, teamFolderMetadata);
    }

    public TeamFolderMetadata getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public boolean isFailed() {
        return this._tag == Tag.FAILED;
    }

    public static TeamFolderArchiveJobStatus failed(TeamFolderArchiveError teamFolderArchiveError) {
        if (teamFolderArchiveError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamFolderArchiveJobStatus().withTagAndFailed(Tag.FAILED, teamFolderArchiveError);
    }

    public TeamFolderArchiveError getFailedValue() {
        if (this._tag != Tag.FAILED) {
            throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this._tag.name());
        }
        return this.failedValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.completeValue, this.failedValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderArchiveJobStatus)) {
            return false;
        }
        TeamFolderArchiveJobStatus teamFolderArchiveJobStatus = (TeamFolderArchiveJobStatus) obj;
        if (this._tag != teamFolderArchiveJobStatus._tag) {
            return false;
        }
        switch (this._tag) {
            case IN_PROGRESS:
                return true;
            case COMPLETE:
                return this.completeValue == teamFolderArchiveJobStatus.completeValue || this.completeValue.equals(teamFolderArchiveJobStatus.completeValue);
            case FAILED:
                return this.failedValue == teamFolderArchiveJobStatus.failedValue || this.failedValue.equals(teamFolderArchiveJobStatus.failedValue);
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

    class Serializer extends UnionSerializer<TeamFolderArchiveJobStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderArchiveJobStatus teamFolderArchiveJobStatus, g gVar) throws IOException {
            switch (teamFolderArchiveJobStatus.tag()) {
                case IN_PROGRESS:
                    gVar.b("in_progress");
                    return;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    TeamFolderMetadata.Serializer.INSTANCE.serialize(teamFolderArchiveJobStatus.completeValue, gVar, true);
                    gVar.f();
                    return;
                case FAILED:
                    gVar.e();
                    writeTag("failed", gVar);
                    gVar.a("failed");
                    TeamFolderArchiveError.Serializer.INSTANCE.serialize(teamFolderArchiveJobStatus.failedValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + teamFolderArchiveJobStatus.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamFolderArchiveJobStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamFolderArchiveJobStatus teamFolderArchiveJobStatusFailed;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("in_progress".equals(tag)) {
                teamFolderArchiveJobStatusFailed = TeamFolderArchiveJobStatus.IN_PROGRESS;
            } else if ("complete".equals(tag)) {
                teamFolderArchiveJobStatusFailed = TeamFolderArchiveJobStatus.complete(TeamFolderMetadata.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("failed".equals(tag)) {
                expectField("failed", kVar);
                teamFolderArchiveJobStatusFailed = TeamFolderArchiveJobStatus.failed(TeamFolderArchiveError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamFolderArchiveJobStatusFailed;
        }
    }
}
