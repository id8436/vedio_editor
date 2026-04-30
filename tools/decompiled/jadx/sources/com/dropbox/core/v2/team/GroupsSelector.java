package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class GroupsSelector {
    private Tag _tag;
    private List<String> groupExternalIdsValue;
    private List<String> groupIdsValue;

    public enum Tag {
        GROUP_IDS,
        GROUP_EXTERNAL_IDS
    }

    private GroupsSelector() {
    }

    private GroupsSelector withTag(Tag tag) {
        GroupsSelector groupsSelector = new GroupsSelector();
        groupsSelector._tag = tag;
        return groupsSelector;
    }

    private GroupsSelector withTagAndGroupIds(Tag tag, List<String> list) {
        GroupsSelector groupsSelector = new GroupsSelector();
        groupsSelector._tag = tag;
        groupsSelector.groupIdsValue = list;
        return groupsSelector;
    }

    private GroupsSelector withTagAndGroupExternalIds(Tag tag, List<String> list) {
        GroupsSelector groupsSelector = new GroupsSelector();
        groupsSelector._tag = tag;
        groupsSelector.groupExternalIdsValue = list;
        return groupsSelector;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isGroupIds() {
        return this._tag == Tag.GROUP_IDS;
    }

    public static GroupsSelector groupIds(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupsSelector().withTagAndGroupIds(Tag.GROUP_IDS, list);
    }

    public List<String> getGroupIdsValue() {
        if (this._tag != Tag.GROUP_IDS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_IDS, but was Tag." + this._tag.name());
        }
        return this.groupIdsValue;
    }

    public boolean isGroupExternalIds() {
        return this._tag == Tag.GROUP_EXTERNAL_IDS;
    }

    public static GroupsSelector groupExternalIds(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupsSelector().withTagAndGroupExternalIds(Tag.GROUP_EXTERNAL_IDS, list);
    }

    public List<String> getGroupExternalIdsValue() {
        if (this._tag != Tag.GROUP_EXTERNAL_IDS) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_EXTERNAL_IDS, but was Tag." + this._tag.name());
        }
        return this.groupExternalIdsValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.groupIdsValue, this.groupExternalIdsValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GroupsSelector)) {
            return false;
        }
        GroupsSelector groupsSelector = (GroupsSelector) obj;
        if (this._tag != groupsSelector._tag) {
            return false;
        }
        switch (this._tag) {
            case GROUP_IDS:
                return this.groupIdsValue == groupsSelector.groupIdsValue || this.groupIdsValue.equals(groupsSelector.groupIdsValue);
            case GROUP_EXTERNAL_IDS:
                return this.groupExternalIdsValue == groupsSelector.groupExternalIdsValue || this.groupExternalIdsValue.equals(groupsSelector.groupExternalIdsValue);
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

    class Serializer extends UnionSerializer<GroupsSelector> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupsSelector groupsSelector, g gVar) throws IOException {
            switch (groupsSelector.tag()) {
                case GROUP_IDS:
                    gVar.e();
                    writeTag("group_ids", gVar);
                    gVar.a("group_ids");
                    StoneSerializers.list(StoneSerializers.string()).serialize(groupsSelector.groupIdsValue, gVar);
                    gVar.f();
                    return;
                case GROUP_EXTERNAL_IDS:
                    gVar.e();
                    writeTag("group_external_ids", gVar);
                    gVar.a("group_external_ids");
                    StoneSerializers.list(StoneSerializers.string()).serialize(groupsSelector.groupExternalIdsValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupsSelector.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupsSelector deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupsSelector groupsSelectorGroupExternalIds;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("group_ids".equals(tag)) {
                expectField("group_ids", kVar);
                groupsSelectorGroupExternalIds = GroupsSelector.groupIds((List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar));
            } else if ("group_external_ids".equals(tag)) {
                expectField("group_external_ids", kVar);
                groupsSelectorGroupExternalIds = GroupsSelector.groupExternalIds((List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupsSelectorGroupExternalIds;
        }
    }
}
