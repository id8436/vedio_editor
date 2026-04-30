package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamcommon.GroupManagementType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class GroupCreateArg {
    protected final String groupExternalId;
    protected final GroupManagementType groupManagementType;
    protected final String groupName;

    public GroupCreateArg(String str, String str2, GroupManagementType groupManagementType) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'groupName' is null");
        }
        this.groupName = str;
        this.groupExternalId = str2;
        this.groupManagementType = groupManagementType;
    }

    public GroupCreateArg(String str) {
        this(str, null, null);
    }

    public String getGroupName() {
        return this.groupName;
    }

    public String getGroupExternalId() {
        return this.groupExternalId;
    }

    public GroupManagementType getGroupManagementType() {
        return this.groupManagementType;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected String groupExternalId;
        protected GroupManagementType groupManagementType;
        protected final String groupName;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'groupName' is null");
            }
            this.groupName = str;
            this.groupExternalId = null;
            this.groupManagementType = null;
        }

        public Builder withGroupExternalId(String str) {
            this.groupExternalId = str;
            return this;
        }

        public Builder withGroupManagementType(GroupManagementType groupManagementType) {
            this.groupManagementType = groupManagementType;
            return this;
        }

        public GroupCreateArg build() {
            return new GroupCreateArg(this.groupName, this.groupExternalId, this.groupManagementType);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.groupName, this.groupExternalId, this.groupManagementType});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupCreateArg groupCreateArg = (GroupCreateArg) obj;
            if ((this.groupName == groupCreateArg.groupName || this.groupName.equals(groupCreateArg.groupName)) && (this.groupExternalId == groupCreateArg.groupExternalId || (this.groupExternalId != null && this.groupExternalId.equals(groupCreateArg.groupExternalId)))) {
                if (this.groupManagementType == groupCreateArg.groupManagementType) {
                    return true;
                }
                if (this.groupManagementType != null && this.groupManagementType.equals(groupCreateArg.groupManagementType)) {
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

    class Serializer extends StructSerializer<GroupCreateArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupCreateArg groupCreateArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("group_name");
            StoneSerializers.string().serialize(groupCreateArg.groupName, gVar);
            if (groupCreateArg.groupExternalId != null) {
                gVar.a("group_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(groupCreateArg.groupExternalId, gVar);
            }
            if (groupCreateArg.groupManagementType != null) {
                gVar.a("group_management_type");
                StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).serialize(groupCreateArg.groupManagementType, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupCreateArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            GroupManagementType groupManagementType;
            String str;
            String strDeserialize;
            GroupManagementType groupManagementType2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("group_name".equals(strD)) {
                        GroupManagementType groupManagementType3 = groupManagementType2;
                        str = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        groupManagementType = groupManagementType3;
                    } else if ("group_external_id".equals(strD)) {
                        strDeserialize = str3;
                        groupManagementType = groupManagementType2;
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("group_management_type".equals(strD)) {
                        groupManagementType = (GroupManagementType) StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).deserialize(kVar);
                        str = str2;
                        strDeserialize = str3;
                    } else {
                        skipValue(kVar);
                        groupManagementType = groupManagementType2;
                        str = str2;
                        strDeserialize = str3;
                    }
                    str3 = strDeserialize;
                    str2 = str;
                    groupManagementType2 = groupManagementType;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"group_name\" missing.");
                }
                GroupCreateArg groupCreateArg = new GroupCreateArg(str3, str2, groupManagementType2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupCreateArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
