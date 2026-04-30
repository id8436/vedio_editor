package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.TeamFolderAccessError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamFolderListError {
    protected final TeamFolderAccessError accessError;

    public TeamFolderListError(TeamFolderAccessError teamFolderAccessError) {
        if (teamFolderAccessError == null) {
            throw new IllegalArgumentException("Required value for 'accessError' is null");
        }
        this.accessError = teamFolderAccessError;
    }

    public TeamFolderAccessError getAccessError() {
        return this.accessError;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessError});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamFolderListError teamFolderListError = (TeamFolderListError) obj;
        return this.accessError == teamFolderListError.accessError || this.accessError.equals(teamFolderListError.accessError);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamFolderListError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamFolderListError teamFolderListError, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("access_error");
            TeamFolderAccessError.Serializer.INSTANCE.serialize(teamFolderListError.accessError, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamFolderListError deserialize(k kVar, boolean z) throws IOException {
            String tag;
            TeamFolderAccessError teamFolderAccessErrorDeserialize = null;
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
                    if ("access_error".equals(strD)) {
                        teamFolderAccessErrorDeserialize = TeamFolderAccessError.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (teamFolderAccessErrorDeserialize == null) {
                    throw new j(kVar, "Required field \"access_error\" missing.");
                }
                TeamFolderListError teamFolderListError = new TeamFolderListError(teamFolderAccessErrorDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamFolderListError;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
