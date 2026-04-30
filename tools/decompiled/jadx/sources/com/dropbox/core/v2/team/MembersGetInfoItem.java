package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.TeamMemberInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class MembersGetInfoItem {
    private Tag _tag;
    private String idNotFoundValue;
    private TeamMemberInfo memberInfoValue;

    public enum Tag {
        ID_NOT_FOUND,
        MEMBER_INFO
    }

    private MembersGetInfoItem() {
    }

    private MembersGetInfoItem withTag(Tag tag) {
        MembersGetInfoItem membersGetInfoItem = new MembersGetInfoItem();
        membersGetInfoItem._tag = tag;
        return membersGetInfoItem;
    }

    private MembersGetInfoItem withTagAndIdNotFound(Tag tag, String str) {
        MembersGetInfoItem membersGetInfoItem = new MembersGetInfoItem();
        membersGetInfoItem._tag = tag;
        membersGetInfoItem.idNotFoundValue = str;
        return membersGetInfoItem;
    }

    private MembersGetInfoItem withTagAndMemberInfo(Tag tag, TeamMemberInfo teamMemberInfo) {
        MembersGetInfoItem membersGetInfoItem = new MembersGetInfoItem();
        membersGetInfoItem._tag = tag;
        membersGetInfoItem.memberInfoValue = teamMemberInfo;
        return membersGetInfoItem;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isIdNotFound() {
        return this._tag == Tag.ID_NOT_FOUND;
    }

    public static MembersGetInfoItem idNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new MembersGetInfoItem().withTagAndIdNotFound(Tag.ID_NOT_FOUND, str);
    }

    public String getIdNotFoundValue() {
        if (this._tag != Tag.ID_NOT_FOUND) {
            throw new IllegalStateException("Invalid tag: required Tag.ID_NOT_FOUND, but was Tag." + this._tag.name());
        }
        return this.idNotFoundValue;
    }

    public boolean isMemberInfo() {
        return this._tag == Tag.MEMBER_INFO;
    }

    public static MembersGetInfoItem memberInfo(TeamMemberInfo teamMemberInfo) {
        if (teamMemberInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new MembersGetInfoItem().withTagAndMemberInfo(Tag.MEMBER_INFO, teamMemberInfo);
    }

    public TeamMemberInfo getMemberInfoValue() {
        if (this._tag != Tag.MEMBER_INFO) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_INFO, but was Tag." + this._tag.name());
        }
        return this.memberInfoValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.idNotFoundValue, this.memberInfoValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MembersGetInfoItem)) {
            return false;
        }
        MembersGetInfoItem membersGetInfoItem = (MembersGetInfoItem) obj;
        if (this._tag != membersGetInfoItem._tag) {
            return false;
        }
        switch (this._tag) {
            case ID_NOT_FOUND:
                return this.idNotFoundValue == membersGetInfoItem.idNotFoundValue || this.idNotFoundValue.equals(membersGetInfoItem.idNotFoundValue);
            case MEMBER_INFO:
                return this.memberInfoValue == membersGetInfoItem.memberInfoValue || this.memberInfoValue.equals(membersGetInfoItem.memberInfoValue);
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

    class Serializer extends UnionSerializer<MembersGetInfoItem> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MembersGetInfoItem membersGetInfoItem, g gVar) throws IOException {
            switch (membersGetInfoItem.tag()) {
                case ID_NOT_FOUND:
                    gVar.e();
                    writeTag("id_not_found", gVar);
                    gVar.a("id_not_found");
                    StoneSerializers.string().serialize(membersGetInfoItem.idNotFoundValue, gVar);
                    gVar.f();
                    return;
                case MEMBER_INFO:
                    gVar.e();
                    writeTag("member_info", gVar);
                    TeamMemberInfo.Serializer.INSTANCE.serialize(membersGetInfoItem.memberInfoValue, gVar, true);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + membersGetInfoItem.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MembersGetInfoItem deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MembersGetInfoItem membersGetInfoItemMemberInfo;
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
                membersGetInfoItemMemberInfo = MembersGetInfoItem.idNotFound(StoneSerializers.string().deserialize(kVar));
            } else if ("member_info".equals(tag)) {
                membersGetInfoItemMemberInfo = MembersGetInfoItem.memberInfo(TeamMemberInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return membersGetInfoItemMemberInfo;
        }
    }
}
