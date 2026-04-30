package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamMergeFromDetails {
    protected final String teamName;

    public TeamMergeFromDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamName' is null");
        }
        this.teamName = str;
    }

    public String getTeamName() {
        return this.teamName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamName});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamMergeFromDetails teamMergeFromDetails = (TeamMergeFromDetails) obj;
        return this.teamName == teamMergeFromDetails.teamName || this.teamName.equals(teamMergeFromDetails.teamName);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamMergeFromDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamMergeFromDetails teamMergeFromDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_name");
            StoneSerializers.string().serialize(teamMergeFromDetails.teamName, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamMergeFromDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("team_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"team_name\" missing.");
                }
                TeamMergeFromDetails teamMergeFromDetails = new TeamMergeFromDetails(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamMergeFromDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
