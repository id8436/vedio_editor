package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.TeamFolderMetadata;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class TeamFolderArchiveLaunch {
    private Tag _tag;
    private String asyncJobIdValue;
    private TeamFolderMetadata completeValue;

    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE
    }

    private TeamFolderArchiveLaunch() {
    }

    private TeamFolderArchiveLaunch withTag(Tag tag) {
        TeamFolderArchiveLaunch teamFolderArchiveLaunch = new TeamFolderArchiveLaunch();
        teamFolderArchiveLaunch._tag = tag;
        return teamFolderArchiveLaunch;
    }

    private TeamFolderArchiveLaunch withTagAndAsyncJobId(Tag tag, String str) {
        TeamFolderArchiveLaunch teamFolderArchiveLaunch = new TeamFolderArchiveLaunch();
        teamFolderArchiveLaunch._tag = tag;
        teamFolderArchiveLaunch.asyncJobIdValue = str;
        return teamFolderArchiveLaunch;
    }

    private TeamFolderArchiveLaunch withTagAndComplete(Tag tag, TeamFolderMetadata teamFolderMetadata) {
        TeamFolderArchiveLaunch teamFolderArchiveLaunch = new TeamFolderArchiveLaunch();
        teamFolderArchiveLaunch._tag = tag;
        teamFolderArchiveLaunch.completeValue = teamFolderMetadata;
        return teamFolderArchiveLaunch;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAsyncJobId() {
        return this._tag == Tag.ASYNC_JOB_ID;
    }

    public static TeamFolderArchiveLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new TeamFolderArchiveLaunch().withTagAndAsyncJobId(Tag.ASYNC_JOB_ID, str);
    }

    public String getAsyncJobIdValue() {
        if (this._tag != Tag.ASYNC_JOB_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this._tag.name());
        }
        return this.asyncJobIdValue;
    }

    public boolean isComplete() {
        return this._tag == Tag.COMPLETE;
    }

    public static TeamFolderArchiveLaunch complete(TeamFolderMetadata teamFolderMetadata) {
        if (teamFolderMetadata == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamFolderArchiveLaunch().withTagAndComplete(Tag.COMPLETE, teamFolderMetadata);
    }

    public TeamFolderMetadata getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.asyncJobIdValue, this.completeValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderArchiveLaunch)) {
            return false;
        }
        TeamFolderArchiveLaunch teamFolderArchiveLaunch = (TeamFolderArchiveLaunch) obj;
        if (this._tag != teamFolderArchiveLaunch._tag) {
            return false;
        }
        switch (this._tag) {
            case ASYNC_JOB_ID:
                return this.asyncJobIdValue == teamFolderArchiveLaunch.asyncJobIdValue || this.asyncJobIdValue.equals(teamFolderArchiveLaunch.asyncJobIdValue);
            case COMPLETE:
                return this.completeValue == teamFolderArchiveLaunch.completeValue || this.completeValue.equals(teamFolderArchiveLaunch.completeValue);
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

    class Serializer extends UnionSerializer<TeamFolderArchiveLaunch> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderArchiveLaunch teamFolderArchiveLaunch, g gVar) throws IOException {
            switch (teamFolderArchiveLaunch.tag()) {
                case ASYNC_JOB_ID:
                    gVar.e();
                    writeTag("async_job_id", gVar);
                    gVar.a("async_job_id");
                    StoneSerializers.string().serialize(teamFolderArchiveLaunch.asyncJobIdValue, gVar);
                    gVar.f();
                    return;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    TeamFolderMetadata.Serializer.INSTANCE.serialize(teamFolderArchiveLaunch.completeValue, gVar, true);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + teamFolderArchiveLaunch.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamFolderArchiveLaunch deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamFolderArchiveLaunch teamFolderArchiveLaunchComplete;
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
            if ("async_job_id".equals(tag)) {
                expectField("async_job_id", kVar);
                teamFolderArchiveLaunchComplete = TeamFolderArchiveLaunch.asyncJobId(StoneSerializers.string().deserialize(kVar));
            } else if ("complete".equals(tag)) {
                teamFolderArchiveLaunchComplete = TeamFolderArchiveLaunch.complete(TeamFolderMetadata.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamFolderArchiveLaunchComplete;
        }
    }
}
