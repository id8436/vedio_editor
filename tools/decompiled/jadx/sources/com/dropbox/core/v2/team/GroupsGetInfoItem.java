package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.GroupFullInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class GroupsGetInfoItem {
    private Tag _tag;
    private GroupFullInfo groupInfoValue;
    private String idNotFoundValue;

    public enum Tag {
        ID_NOT_FOUND,
        GROUP_INFO
    }

    private GroupsGetInfoItem() {
    }

    private GroupsGetInfoItem withTag(Tag tag) {
        GroupsGetInfoItem groupsGetInfoItem = new GroupsGetInfoItem();
        groupsGetInfoItem._tag = tag;
        return groupsGetInfoItem;
    }

    private GroupsGetInfoItem withTagAndIdNotFound(Tag tag, String str) {
        GroupsGetInfoItem groupsGetInfoItem = new GroupsGetInfoItem();
        groupsGetInfoItem._tag = tag;
        groupsGetInfoItem.idNotFoundValue = str;
        return groupsGetInfoItem;
    }

    private GroupsGetInfoItem withTagAndGroupInfo(Tag tag, GroupFullInfo groupFullInfo) {
        GroupsGetInfoItem groupsGetInfoItem = new GroupsGetInfoItem();
        groupsGetInfoItem._tag = tag;
        groupsGetInfoItem.groupInfoValue = groupFullInfo;
        return groupsGetInfoItem;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isIdNotFound() {
        return this._tag == Tag.ID_NOT_FOUND;
    }

    public static GroupsGetInfoItem idNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GroupsGetInfoItem().withTagAndIdNotFound(Tag.ID_NOT_FOUND, str);
    }

    public String getIdNotFoundValue() {
        if (this._tag != Tag.ID_NOT_FOUND) {
            throw new IllegalStateException("Invalid tag: required Tag.ID_NOT_FOUND, but was Tag." + this._tag.name());
        }
        return this.idNotFoundValue;
    }

    public boolean isGroupInfo() {
        return this._tag == Tag.GROUP_INFO;
    }

    public static GroupsGetInfoItem groupInfo(GroupFullInfo groupFullInfo) {
        if (groupFullInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GroupsGetInfoItem().withTagAndGroupInfo(Tag.GROUP_INFO, groupFullInfo);
    }

    public GroupFullInfo getGroupInfoValue() {
        if (this._tag != Tag.GROUP_INFO) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_INFO, but was Tag." + this._tag.name());
        }
        return this.groupInfoValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.idNotFoundValue, this.groupInfoValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GroupsGetInfoItem)) {
            return false;
        }
        GroupsGetInfoItem groupsGetInfoItem = (GroupsGetInfoItem) obj;
        if (this._tag != groupsGetInfoItem._tag) {
            return false;
        }
        switch (this._tag) {
            case ID_NOT_FOUND:
                return this.idNotFoundValue == groupsGetInfoItem.idNotFoundValue || this.idNotFoundValue.equals(groupsGetInfoItem.idNotFoundValue);
            case GROUP_INFO:
                return this.groupInfoValue == groupsGetInfoItem.groupInfoValue || this.groupInfoValue.equals(groupsGetInfoItem.groupInfoValue);
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

    class Serializer extends UnionSerializer<GroupsGetInfoItem> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupsGetInfoItem groupsGetInfoItem, g gVar) throws IOException {
            switch (groupsGetInfoItem.tag()) {
                case ID_NOT_FOUND:
                    gVar.e();
                    writeTag("id_not_found", gVar);
                    gVar.a("id_not_found");
                    StoneSerializers.string().serialize(groupsGetInfoItem.idNotFoundValue, gVar);
                    gVar.f();
                    return;
                case GROUP_INFO:
                    gVar.e();
                    writeTag("group_info", gVar);
                    GroupFullInfo.Serializer.INSTANCE.serialize(groupsGetInfoItem.groupInfoValue, gVar, true);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupsGetInfoItem.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupsGetInfoItem deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupsGetInfoItem groupsGetInfoItemGroupInfo;
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
                groupsGetInfoItemGroupInfo = GroupsGetInfoItem.idNotFound(StoneSerializers.string().deserialize(kVar));
            } else if ("group_info".equals(tag)) {
                groupsGetInfoItemGroupInfo = GroupsGetInfoItem.groupInfo(GroupFullInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupsGetInfoItemGroupInfo;
        }
    }
}
