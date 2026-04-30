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
public final class TeamFolderGetInfoItem {
    private Tag _tag;
    private String idNotFoundValue;
    private TeamFolderMetadata teamFolderMetadataValue;

    public enum Tag {
        ID_NOT_FOUND,
        TEAM_FOLDER_METADATA
    }

    private TeamFolderGetInfoItem() {
    }

    private TeamFolderGetInfoItem withTag(Tag tag) {
        TeamFolderGetInfoItem teamFolderGetInfoItem = new TeamFolderGetInfoItem();
        teamFolderGetInfoItem._tag = tag;
        return teamFolderGetInfoItem;
    }

    private TeamFolderGetInfoItem withTagAndIdNotFound(Tag tag, String str) {
        TeamFolderGetInfoItem teamFolderGetInfoItem = new TeamFolderGetInfoItem();
        teamFolderGetInfoItem._tag = tag;
        teamFolderGetInfoItem.idNotFoundValue = str;
        return teamFolderGetInfoItem;
    }

    private TeamFolderGetInfoItem withTagAndTeamFolderMetadata(Tag tag, TeamFolderMetadata teamFolderMetadata) {
        TeamFolderGetInfoItem teamFolderGetInfoItem = new TeamFolderGetInfoItem();
        teamFolderGetInfoItem._tag = tag;
        teamFolderGetInfoItem.teamFolderMetadataValue = teamFolderMetadata;
        return teamFolderGetInfoItem;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isIdNotFound() {
        return this._tag == Tag.ID_NOT_FOUND;
    }

    public static TeamFolderGetInfoItem idNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamFolderGetInfoItem().withTagAndIdNotFound(Tag.ID_NOT_FOUND, str);
    }

    public String getIdNotFoundValue() {
        if (this._tag != Tag.ID_NOT_FOUND) {
            throw new IllegalStateException("Invalid tag: required Tag.ID_NOT_FOUND, but was Tag." + this._tag.name());
        }
        return this.idNotFoundValue;
    }

    public boolean isTeamFolderMetadata() {
        return this._tag == Tag.TEAM_FOLDER_METADATA;
    }

    public static TeamFolderGetInfoItem teamFolderMetadata(TeamFolderMetadata teamFolderMetadata) {
        if (teamFolderMetadata == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TeamFolderGetInfoItem().withTagAndTeamFolderMetadata(Tag.TEAM_FOLDER_METADATA, teamFolderMetadata);
    }

    public TeamFolderMetadata getTeamFolderMetadataValue() {
        if (this._tag != Tag.TEAM_FOLDER_METADATA) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_FOLDER_METADATA, but was Tag." + this._tag.name());
        }
        return this.teamFolderMetadataValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.idNotFoundValue, this.teamFolderMetadataValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderGetInfoItem)) {
            return false;
        }
        TeamFolderGetInfoItem teamFolderGetInfoItem = (TeamFolderGetInfoItem) obj;
        if (this._tag != teamFolderGetInfoItem._tag) {
            return false;
        }
        switch (this._tag) {
            case ID_NOT_FOUND:
                return this.idNotFoundValue == teamFolderGetInfoItem.idNotFoundValue || this.idNotFoundValue.equals(teamFolderGetInfoItem.idNotFoundValue);
            case TEAM_FOLDER_METADATA:
                return this.teamFolderMetadataValue == teamFolderGetInfoItem.teamFolderMetadataValue || this.teamFolderMetadataValue.equals(teamFolderGetInfoItem.teamFolderMetadataValue);
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

    class Serializer extends UnionSerializer<TeamFolderGetInfoItem> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderGetInfoItem teamFolderGetInfoItem, g gVar) throws IOException {
            switch (teamFolderGetInfoItem.tag()) {
                case ID_NOT_FOUND:
                    gVar.e();
                    writeTag("id_not_found", gVar);
                    gVar.a("id_not_found");
                    StoneSerializers.string().serialize(teamFolderGetInfoItem.idNotFoundValue, gVar);
                    gVar.f();
                    return;
                case TEAM_FOLDER_METADATA:
                    gVar.e();
                    writeTag("team_folder_metadata", gVar);
                    TeamFolderMetadata.Serializer.INSTANCE.serialize(teamFolderGetInfoItem.teamFolderMetadataValue, gVar, true);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + teamFolderGetInfoItem.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamFolderGetInfoItem deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TeamFolderGetInfoItem teamFolderGetInfoItemTeamFolderMetadata;
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
            if ("id_not_found".equals(tag)) {
                expectField("id_not_found", kVar);
                teamFolderGetInfoItemTeamFolderMetadata = TeamFolderGetInfoItem.idNotFound(StoneSerializers.string().deserialize(kVar));
            } else if ("team_folder_metadata".equals(tag)) {
                teamFolderGetInfoItemTeamFolderMetadata = TeamFolderGetInfoItem.teamFolderMetadata(TeamFolderMetadata.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return teamFolderGetInfoItemTeamFolderMetadata;
        }
    }
}
