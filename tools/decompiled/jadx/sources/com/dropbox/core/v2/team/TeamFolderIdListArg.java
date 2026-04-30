package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class TeamFolderIdListArg {
    protected final List<String> teamFolderIds;

    public TeamFolderIdListArg(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'teamFolderIds' is null");
        }
        if (list.size() < 1) {
            throw new IllegalArgumentException("List 'teamFolderIds' has fewer than 1 items");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list 'teamFolderIds' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("Stringan item in list 'teamFolderIds' does not match pattern");
            }
        }
        this.teamFolderIds = list;
    }

    public List<String> getTeamFolderIds() {
        return this.teamFolderIds;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamFolderIds});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamFolderIdListArg teamFolderIdListArg = (TeamFolderIdListArg) obj;
        return this.teamFolderIds == teamFolderIdListArg.teamFolderIds || this.teamFolderIds.equals(teamFolderIdListArg.teamFolderIds);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamFolderIdListArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamFolderIdListArg teamFolderIdListArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_folder_ids");
            StoneSerializers.list(StoneSerializers.string()).serialize(teamFolderIdListArg.teamFolderIds, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamFolderIdListArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
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
                    if ("team_folder_ids".equals(strD)) {
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"team_folder_ids\" missing.");
                }
                TeamFolderIdListArg teamFolderIdListArg = new TeamFolderIdListArg(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamFolderIdListArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
