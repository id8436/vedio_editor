package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.GroupFullInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GroupMembersChangeResult {
    protected final String asyncJobId;
    protected final GroupFullInfo groupInfo;

    public GroupMembersChangeResult(GroupFullInfo groupFullInfo, String str) {
        if (groupFullInfo == null) {
            throw new IllegalArgumentException("Required value for 'groupInfo' is null");
        }
        this.groupInfo = groupFullInfo;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'asyncJobId' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'asyncJobId' is shorter than 1");
        }
        this.asyncJobId = str;
    }

    public GroupFullInfo getGroupInfo() {
        return this.groupInfo;
    }

    public String getAsyncJobId() {
        return this.asyncJobId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.groupInfo, this.asyncJobId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupMembersChangeResult groupMembersChangeResult = (GroupMembersChangeResult) obj;
            return (this.groupInfo == groupMembersChangeResult.groupInfo || this.groupInfo.equals(groupMembersChangeResult.groupInfo)) && (this.asyncJobId == groupMembersChangeResult.asyncJobId || this.asyncJobId.equals(groupMembersChangeResult.asyncJobId));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupMembersChangeResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupMembersChangeResult groupMembersChangeResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("group_info");
            GroupFullInfo.Serializer.INSTANCE.serialize(groupMembersChangeResult.groupInfo, gVar);
            gVar.a("async_job_id");
            StoneSerializers.string().serialize(groupMembersChangeResult.asyncJobId, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupMembersChangeResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            GroupFullInfo groupFullInfoDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                GroupFullInfo groupFullInfo = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("group_info".equals(strD)) {
                        String str2 = str;
                        groupFullInfoDeserialize = GroupFullInfo.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str2;
                    } else if ("async_job_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        groupFullInfoDeserialize = groupFullInfo;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        groupFullInfoDeserialize = groupFullInfo;
                    }
                    groupFullInfo = groupFullInfoDeserialize;
                    str = strDeserialize;
                }
                if (groupFullInfo == null) {
                    throw new j(kVar, "Required field \"group_info\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"async_job_id\" missing.");
                }
                GroupMembersChangeResult groupMembersChangeResult = new GroupMembersChangeResult(groupFullInfo, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupMembersChangeResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
