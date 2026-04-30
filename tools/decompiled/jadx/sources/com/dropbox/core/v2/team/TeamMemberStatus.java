package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.RemovedStatus;
import com.google.gdata.data.appsforyourdomain.Login;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class TeamMemberStatus {
    public static final TeamMemberStatus ACTIVE = new TeamMemberStatus().withTag(Tag.ACTIVE);
    public static final TeamMemberStatus INVITED = new TeamMemberStatus().withTag(Tag.INVITED);
    public static final TeamMemberStatus SUSPENDED = new TeamMemberStatus().withTag(Tag.SUSPENDED);
    private Tag _tag;
    private RemovedStatus removedValue;

    public enum Tag {
        ACTIVE,
        INVITED,
        SUSPENDED,
        REMOVED
    }

    private TeamMemberStatus() {
    }

    private TeamMemberStatus withTag(Tag tag) {
        TeamMemberStatus teamMemberStatus = new TeamMemberStatus();
        teamMemberStatus._tag = tag;
        return teamMemberStatus;
    }

    private TeamMemberStatus withTagAndRemoved(Tag tag, RemovedStatus removedStatus) {
        TeamMemberStatus teamMemberStatus = new TeamMemberStatus();
        teamMemberStatus._tag = tag;
        teamMemberStatus.removedValue = removedStatus;
        return teamMemberStatus;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isActive() {
        return this._tag == Tag.ACTIVE;
    }

    public boolean isInvited() {
        return this._tag == Tag.INVITED;
    }

    public boolean isSuspended() {
        return this._tag == Tag.SUSPENDED;
    }

    public boolean isRemoved() {
        return this._tag == Tag.REMOVED;
    }

    public static TeamMemberStatus removed(RemovedStatus removedStatus) {
        if (removedStatus == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamMemberStatus().withTagAndRemoved(Tag.REMOVED, removedStatus);
    }

    public RemovedStatus getRemovedValue() {
        if (this._tag != Tag.REMOVED) {
            throw new IllegalStateException("Invalid tag: required Tag.REMOVED, but was Tag." + this._tag.name());
        }
        return this.removedValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.removedValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamMemberStatus)) {
            return false;
        }
        TeamMemberStatus teamMemberStatus = (TeamMemberStatus) obj;
        if (this._tag != teamMemberStatus._tag) {
            return false;
        }
        switch (this._tag) {
            case ACTIVE:
                return true;
            case INVITED:
                return true;
            case SUSPENDED:
                return true;
            case REMOVED:
                return this.removedValue == teamMemberStatus.removedValue || this.removedValue.equals(teamMemberStatus.removedValue);
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

    class Serializer extends UnionSerializer<TeamMemberStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamMemberStatus teamMemberStatus, g gVar) throws IOException {
            switch (teamMemberStatus.tag()) {
                case ACTIVE:
                    gVar.b("active");
                    return;
                case INVITED:
                    gVar.b("invited");
                    return;
                case SUSPENDED:
                    gVar.b(Login.ATTRIBUTE_SUSPENDED);
                    return;
                case REMOVED:
                    gVar.e();
                    writeTag("removed", gVar);
                    RemovedStatus.Serializer.INSTANCE.serialize(teamMemberStatus.removedValue, gVar, true);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + teamMemberStatus.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamMemberStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamMemberStatus teamMemberStatusRemoved;
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
            if ("active".equals(tag)) {
                teamMemberStatusRemoved = TeamMemberStatus.ACTIVE;
            } else if ("invited".equals(tag)) {
                teamMemberStatusRemoved = TeamMemberStatus.INVITED;
            } else if (Login.ATTRIBUTE_SUSPENDED.equals(tag)) {
                teamMemberStatusRemoved = TeamMemberStatus.SUSPENDED;
            } else if ("removed".equals(tag)) {
                teamMemberStatusRemoved = TeamMemberStatus.removed(RemovedStatus.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamMemberStatusRemoved;
        }
    }
}
