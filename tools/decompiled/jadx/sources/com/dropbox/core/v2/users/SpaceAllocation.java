package com.dropbox.core.v2.users;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.users.IndividualSpaceAllocation;
import com.dropbox.core.v2.users.TeamSpaceAllocation;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SpaceAllocation {
    public static final SpaceAllocation OTHER = new SpaceAllocation().withTag(Tag.OTHER);
    private Tag _tag;
    private IndividualSpaceAllocation individualValue;
    private TeamSpaceAllocation teamValue;

    public enum Tag {
        INDIVIDUAL,
        TEAM,
        OTHER
    }

    private SpaceAllocation() {
    }

    private SpaceAllocation withTag(Tag tag) {
        SpaceAllocation spaceAllocation = new SpaceAllocation();
        spaceAllocation._tag = tag;
        return spaceAllocation;
    }

    private SpaceAllocation withTagAndIndividual(Tag tag, IndividualSpaceAllocation individualSpaceAllocation) {
        SpaceAllocation spaceAllocation = new SpaceAllocation();
        spaceAllocation._tag = tag;
        spaceAllocation.individualValue = individualSpaceAllocation;
        return spaceAllocation;
    }

    private SpaceAllocation withTagAndTeam(Tag tag, TeamSpaceAllocation teamSpaceAllocation) {
        SpaceAllocation spaceAllocation = new SpaceAllocation();
        spaceAllocation._tag = tag;
        spaceAllocation.teamValue = teamSpaceAllocation;
        return spaceAllocation;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isIndividual() {
        return this._tag == Tag.INDIVIDUAL;
    }

    public static SpaceAllocation individual(IndividualSpaceAllocation individualSpaceAllocation) {
        if (individualSpaceAllocation == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new SpaceAllocation().withTagAndIndividual(Tag.INDIVIDUAL, individualSpaceAllocation);
    }

    public IndividualSpaceAllocation getIndividualValue() {
        if (this._tag != Tag.INDIVIDUAL) {
            throw new IllegalStateException("Invalid tag: required Tag.INDIVIDUAL, but was Tag." + this._tag.name());
        }
        return this.individualValue;
    }

    public boolean isTeam() {
        return this._tag == Tag.TEAM;
    }

    public static SpaceAllocation team(TeamSpaceAllocation teamSpaceAllocation) {
        if (teamSpaceAllocation == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new SpaceAllocation().withTagAndTeam(Tag.TEAM, teamSpaceAllocation);
    }

    public TeamSpaceAllocation getTeamValue() {
        if (this._tag != Tag.TEAM) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM, but was Tag." + this._tag.name());
        }
        return this.teamValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.individualValue, this.teamValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SpaceAllocation)) {
            return false;
        }
        SpaceAllocation spaceAllocation = (SpaceAllocation) obj;
        if (this._tag != spaceAllocation._tag) {
            return false;
        }
        switch (this._tag) {
            case INDIVIDUAL:
                return this.individualValue == spaceAllocation.individualValue || this.individualValue.equals(spaceAllocation.individualValue);
            case TEAM:
                return this.teamValue == spaceAllocation.teamValue || this.teamValue.equals(spaceAllocation.teamValue);
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

    class Serializer extends UnionSerializer<SpaceAllocation> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SpaceAllocation spaceAllocation, g gVar) throws IOException {
            switch (spaceAllocation.tag()) {
                case INDIVIDUAL:
                    gVar.e();
                    writeTag("individual", gVar);
                    IndividualSpaceAllocation.Serializer.INSTANCE.serialize(spaceAllocation.individualValue, gVar, true);
                    gVar.f();
                    break;
                case TEAM:
                    gVar.e();
                    writeTag("team", gVar);
                    TeamSpaceAllocation.Serializer.INSTANCE.serialize(spaceAllocation.teamValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SpaceAllocation deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SpaceAllocation spaceAllocationTeam;
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
            if ("individual".equals(tag)) {
                spaceAllocationTeam = SpaceAllocation.individual(IndividualSpaceAllocation.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("team".equals(tag)) {
                spaceAllocationTeam = SpaceAllocation.team(TeamSpaceAllocation.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                spaceAllocationTeam = SpaceAllocation.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return spaceAllocationTeam;
        }
    }
}
