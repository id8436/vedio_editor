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
public class TeamMergeToDetails {
    protected final String teamName;

    public TeamMergeToDetails(String str) {
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
        TeamMergeToDetails teamMergeToDetails = (TeamMergeToDetails) obj;
        return this.teamName == teamMergeToDetails.teamName || this.teamName.equals(teamMergeToDetails.teamName);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamMergeToDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamMergeToDetails teamMergeToDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_name");
            StoneSerializers.string().serialize(teamMergeToDetails.teamName, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamMergeToDetails deserialize(k kVar, boolean z) throws IOException {
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
                TeamMergeToDetails teamMergeToDetails = new TeamMergeToDetails(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamMergeToDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
