package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.TeamFolderStatus;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamFolderChangeStatusDetails {
    protected final TeamFolderStatus newValue;
    protected final TeamFolderStatus previousValue;

    public TeamFolderChangeStatusDetails(TeamFolderStatus teamFolderStatus, TeamFolderStatus teamFolderStatus2) {
        if (teamFolderStatus == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = teamFolderStatus;
        this.previousValue = teamFolderStatus2;
    }

    public TeamFolderChangeStatusDetails(TeamFolderStatus teamFolderStatus) {
        this(teamFolderStatus, null);
    }

    public TeamFolderStatus getNewValue() {
        return this.newValue;
    }

    public TeamFolderStatus getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamFolderChangeStatusDetails teamFolderChangeStatusDetails = (TeamFolderChangeStatusDetails) obj;
            if (this.newValue == teamFolderChangeStatusDetails.newValue || this.newValue.equals(teamFolderChangeStatusDetails.newValue)) {
                if (this.previousValue == teamFolderChangeStatusDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(teamFolderChangeStatusDetails.previousValue)) {
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

    class Serializer extends StructSerializer<TeamFolderChangeStatusDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamFolderChangeStatusDetails teamFolderChangeStatusDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            TeamFolderStatus.Serializer.INSTANCE.serialize(teamFolderChangeStatusDetails.newValue, gVar);
            if (teamFolderChangeStatusDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(TeamFolderStatus.Serializer.INSTANCE).serialize(teamFolderChangeStatusDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamFolderChangeStatusDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            TeamFolderStatus teamFolderStatus = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TeamFolderStatus teamFolderStatusDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        teamFolderStatusDeserialize = TeamFolderStatus.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        teamFolderStatus = (TeamFolderStatus) StoneSerializers.nullable(TeamFolderStatus.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (teamFolderStatusDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                TeamFolderChangeStatusDetails teamFolderChangeStatusDetails = new TeamFolderChangeStatusDetails(teamFolderStatusDeserialize, teamFolderStatus);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamFolderChangeStatusDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
