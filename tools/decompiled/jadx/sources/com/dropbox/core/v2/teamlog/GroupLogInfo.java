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
public class GroupLogInfo {
    protected final String displayName;
    protected final String externalId;
    protected final String groupId;

    public GroupLogInfo(String str, String str2, String str3) {
        this.groupId = str2;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'displayName' is null");
        }
        this.displayName = str;
        this.externalId = str3;
    }

    public GroupLogInfo(String str) {
        this(str, null, null);
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public String getExternalId() {
        return this.externalId;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected final String displayName;
        protected String externalId;
        protected String groupId;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'displayName' is null");
            }
            this.displayName = str;
            this.groupId = null;
            this.externalId = null;
        }

        public Builder withGroupId(String str) {
            this.groupId = str;
            return this;
        }

        public Builder withExternalId(String str) {
            this.externalId = str;
            return this;
        }

        public GroupLogInfo build() {
            return new GroupLogInfo(this.displayName, this.groupId, this.externalId);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.groupId, this.displayName, this.externalId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupLogInfo groupLogInfo = (GroupLogInfo) obj;
            if ((this.displayName == groupLogInfo.displayName || this.displayName.equals(groupLogInfo.displayName)) && (this.groupId == groupLogInfo.groupId || (this.groupId != null && this.groupId.equals(groupLogInfo.groupId)))) {
                if (this.externalId == groupLogInfo.externalId) {
                    return true;
                }
                if (this.externalId != null && this.externalId.equals(groupLogInfo.externalId)) {
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

    class Serializer extends StructSerializer<GroupLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupLogInfo groupLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("display_name");
            StoneSerializers.string().serialize(groupLogInfo.displayName, gVar);
            if (groupLogInfo.groupId != null) {
                gVar.a("group_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(groupLogInfo.groupId, gVar);
            }
            if (groupLogInfo.externalId != null) {
                gVar.a("external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(groupLogInfo.externalId, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String strDeserialize;
            String str3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str4 = null;
                String str5 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("display_name".equals(strD)) {
                        String str6 = str3;
                        str2 = str4;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str6;
                    } else if ("group_id".equals(strD)) {
                        strDeserialize = str5;
                        str = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("external_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str4;
                        strDeserialize = str5;
                    } else {
                        skipValue(kVar);
                        str = str3;
                        str2 = str4;
                        strDeserialize = str5;
                    }
                    str5 = strDeserialize;
                    str4 = str2;
                    str3 = str;
                }
                if (str5 == null) {
                    throw new j(kVar, "Required field \"display_name\" missing.");
                }
                GroupLogInfo groupLogInfo = new GroupLogInfo(str5, str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
