package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class GroupSelector {
    private Tag _tag;
    private String groupExternalIdValue;
    private String groupIdValue;

    public enum Tag {
        GROUP_ID,
        GROUP_EXTERNAL_ID
    }

    private GroupSelector() {
    }

    private GroupSelector withTag(Tag tag) {
        GroupSelector groupSelector = new GroupSelector();
        groupSelector._tag = tag;
        return groupSelector;
    }

    private GroupSelector withTagAndGroupId(Tag tag, String str) {
        GroupSelector groupSelector = new GroupSelector();
        groupSelector._tag = tag;
        groupSelector.groupIdValue = str;
        return groupSelector;
    }

    private GroupSelector withTagAndGroupExternalId(Tag tag, String str) {
        GroupSelector groupSelector = new GroupSelector();
        groupSelector._tag = tag;
        groupSelector.groupExternalIdValue = str;
        return groupSelector;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isGroupId() {
        return this._tag == Tag.GROUP_ID;
    }

    public static GroupSelector groupId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GroupSelector().withTagAndGroupId(Tag.GROUP_ID, str);
    }

    public String getGroupIdValue() {
        if (this._tag != Tag.GROUP_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_ID, but was Tag." + this._tag.name());
        }
        return this.groupIdValue;
    }

    public boolean isGroupExternalId() {
        return this._tag == Tag.GROUP_EXTERNAL_ID;
    }

    public static GroupSelector groupExternalId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GroupSelector().withTagAndGroupExternalId(Tag.GROUP_EXTERNAL_ID, str);
    }

    public String getGroupExternalIdValue() {
        if (this._tag != Tag.GROUP_EXTERNAL_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.GROUP_EXTERNAL_ID, but was Tag." + this._tag.name());
        }
        return this.groupExternalIdValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.groupIdValue, this.groupExternalIdValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GroupSelector)) {
            return false;
        }
        GroupSelector groupSelector = (GroupSelector) obj;
        if (this._tag != groupSelector._tag) {
            return false;
        }
        switch (this._tag) {
            case GROUP_ID:
                return this.groupIdValue == groupSelector.groupIdValue || this.groupIdValue.equals(groupSelector.groupIdValue);
            case GROUP_EXTERNAL_ID:
                return this.groupExternalIdValue == groupSelector.groupExternalIdValue || this.groupExternalIdValue.equals(groupSelector.groupExternalIdValue);
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

    class Serializer extends UnionSerializer<GroupSelector> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupSelector groupSelector, g gVar) throws IOException {
            switch (groupSelector.tag()) {
                case GROUP_ID:
                    gVar.e();
                    writeTag("group_id", gVar);
                    gVar.a("group_id");
                    StoneSerializers.string().serialize(groupSelector.groupIdValue, gVar);
                    gVar.f();
                    return;
                case GROUP_EXTERNAL_ID:
                    gVar.e();
                    writeTag("group_external_id", gVar);
                    gVar.a("group_external_id");
                    StoneSerializers.string().serialize(groupSelector.groupExternalIdValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupSelector.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupSelector deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupSelector groupSelectorGroupExternalId;
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
            if ("group_id".equals(tag)) {
                expectField("group_id", kVar);
                groupSelectorGroupExternalId = GroupSelector.groupId(StoneSerializers.string().deserialize(kVar));
            } else if ("group_external_id".equals(tag)) {
                expectField("group_external_id", kVar);
                groupSelectorGroupExternalId = GroupSelector.groupExternalId(StoneSerializers.string().deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupSelectorGroupExternalId;
        }
    }
}
