package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.teamlog.NonTeamMemberLogInfo;
import com.dropbox.core.v2.teamlog.TeamMemberLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ContextLogInfo {
    private Tag _tag;
    private NonTeamMemberLogInfo nonTeamMemberValue;
    private TeamMemberLogInfo teamMemberValue;
    public static final ContextLogInfo TEAM = new ContextLogInfo().withTag(Tag.TEAM);
    public static final ContextLogInfo OTHER = new ContextLogInfo().withTag(Tag.OTHER);

    public enum Tag {
        TEAM_MEMBER,
        NON_TEAM_MEMBER,
        TEAM,
        OTHER
    }

    private ContextLogInfo() {
    }

    private ContextLogInfo withTag(Tag tag) {
        ContextLogInfo contextLogInfo = new ContextLogInfo();
        contextLogInfo._tag = tag;
        return contextLogInfo;
    }

    private ContextLogInfo withTagAndTeamMember(Tag tag, TeamMemberLogInfo teamMemberLogInfo) {
        ContextLogInfo contextLogInfo = new ContextLogInfo();
        contextLogInfo._tag = tag;
        contextLogInfo.teamMemberValue = teamMemberLogInfo;
        return contextLogInfo;
    }

    private ContextLogInfo withTagAndNonTeamMember(Tag tag, NonTeamMemberLogInfo nonTeamMemberLogInfo) {
        ContextLogInfo contextLogInfo = new ContextLogInfo();
        contextLogInfo._tag = tag;
        contextLogInfo.nonTeamMemberValue = nonTeamMemberLogInfo;
        return contextLogInfo;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isTeamMember() {
        return this._tag == Tag.TEAM_MEMBER;
    }

    public static ContextLogInfo teamMember(TeamMemberLogInfo teamMemberLogInfo) {
        if (teamMemberLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ContextLogInfo().withTagAndTeamMember(Tag.TEAM_MEMBER, teamMemberLogInfo);
    }

    public TeamMemberLogInfo getTeamMemberValue() {
        if (this._tag != Tag.TEAM_MEMBER) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_MEMBER, but was Tag." + this._tag.name());
        }
        return this.teamMemberValue;
    }

    public boolean isNonTeamMember() {
        return this._tag == Tag.NON_TEAM_MEMBER;
    }

    public static ContextLogInfo nonTeamMember(NonTeamMemberLogInfo nonTeamMemberLogInfo) {
        if (nonTeamMemberLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ContextLogInfo().withTagAndNonTeamMember(Tag.NON_TEAM_MEMBER, nonTeamMemberLogInfo);
    }

    public NonTeamMemberLogInfo getNonTeamMemberValue() {
        if (this._tag != Tag.NON_TEAM_MEMBER) {
            throw new IllegalStateException("Invalid tag: required Tag.NON_TEAM_MEMBER, but was Tag." + this._tag.name());
        }
        return this.nonTeamMemberValue;
    }

    public boolean isTeam() {
        return this._tag == Tag.TEAM;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.teamMemberValue, this.nonTeamMemberValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ContextLogInfo)) {
            return false;
        }
        ContextLogInfo contextLogInfo = (ContextLogInfo) obj;
        if (this._tag != contextLogInfo._tag) {
            return false;
        }
        switch (this._tag) {
            case TEAM_MEMBER:
                return this.teamMemberValue == contextLogInfo.teamMemberValue || this.teamMemberValue.equals(contextLogInfo.teamMemberValue);
            case NON_TEAM_MEMBER:
                return this.nonTeamMemberValue == contextLogInfo.nonTeamMemberValue || this.nonTeamMemberValue.equals(contextLogInfo.nonTeamMemberValue);
            case TEAM:
                return true;
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

    class Serializer extends UnionSerializer<ContextLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ContextLogInfo contextLogInfo, g gVar) throws IOException {
            switch (contextLogInfo.tag()) {
                case TEAM_MEMBER:
                    gVar.e();
                    writeTag("team_member", gVar);
                    TeamMemberLogInfo.Serializer.INSTANCE.serialize(contextLogInfo.teamMemberValue, gVar, true);
                    gVar.f();
                    break;
                case NON_TEAM_MEMBER:
                    gVar.e();
                    writeTag("non_team_member", gVar);
                    NonTeamMemberLogInfo.Serializer.INSTANCE.serialize(contextLogInfo.nonTeamMemberValue, gVar, true);
                    gVar.f();
                    break;
                case TEAM:
                    gVar.b("team");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ContextLogInfo deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ContextLogInfo contextLogInfoNonTeamMember;
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
            if ("team_member".equals(tag)) {
                contextLogInfoNonTeamMember = ContextLogInfo.teamMember(TeamMemberLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("non_team_member".equals(tag)) {
                contextLogInfoNonTeamMember = ContextLogInfo.nonTeamMember(NonTeamMemberLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team".equals(tag)) {
                contextLogInfoNonTeamMember = ContextLogInfo.TEAM;
            } else {
                contextLogInfoNonTeamMember = ContextLogInfo.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return contextLogInfoNonTeamMember;
        }
    }
}
