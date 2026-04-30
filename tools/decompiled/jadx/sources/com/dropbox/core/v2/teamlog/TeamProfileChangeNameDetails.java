package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.TeamName;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamProfileChangeNameDetails {
    protected final TeamName newValue;
    protected final TeamName previousValue;

    public TeamProfileChangeNameDetails(TeamName teamName, TeamName teamName2) {
        this.previousValue = teamName2;
        if (teamName == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = teamName;
    }

    public TeamProfileChangeNameDetails(TeamName teamName) {
        this(teamName, null);
    }

    public TeamName getNewValue() {
        return this.newValue;
    }

    public TeamName getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamProfileChangeNameDetails teamProfileChangeNameDetails = (TeamProfileChangeNameDetails) obj;
            if (this.newValue == teamProfileChangeNameDetails.newValue || this.newValue.equals(teamProfileChangeNameDetails.newValue)) {
                if (this.previousValue == teamProfileChangeNameDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(teamProfileChangeNameDetails.previousValue)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamProfileChangeNameDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamProfileChangeNameDetails teamProfileChangeNameDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            TeamName.Serializer.INSTANCE.serialize(teamProfileChangeNameDetails.newValue, gVar);
            if (teamProfileChangeNameDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullableStruct(TeamName.Serializer.INSTANCE).serialize(teamProfileChangeNameDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamProfileChangeNameDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            TeamName teamName;
            TeamName teamNameDeserialize;
            TeamName teamName2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TeamName teamName3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        TeamName teamName4 = teamName2;
                        teamNameDeserialize = TeamName.Serializer.INSTANCE.deserialize(kVar);
                        teamName = teamName4;
                    } else if ("previous_value".equals(strD)) {
                        teamName = (TeamName) StoneSerializers.nullableStruct(TeamName.Serializer.INSTANCE).deserialize(kVar);
                        teamNameDeserialize = teamName3;
                    } else {
                        skipValue(kVar);
                        teamName = teamName2;
                        teamNameDeserialize = teamName3;
                    }
                    teamName3 = teamNameDeserialize;
                    teamName2 = teamName;
                }
                if (teamName3 == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                TeamProfileChangeNameDetails teamProfileChangeNameDetails = new TeamProfileChangeNameDetails(teamName3, teamName2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamProfileChangeNameDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
