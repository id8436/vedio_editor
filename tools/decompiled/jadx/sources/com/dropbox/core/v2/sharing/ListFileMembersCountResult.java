package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.SharedFileMembers;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ListFileMembersCountResult {
    protected final long memberCount;
    protected final SharedFileMembers members;

    public ListFileMembersCountResult(SharedFileMembers sharedFileMembers, long j) {
        if (sharedFileMembers == null) {
            throw new IllegalArgumentException("Required value for 'members' is null");
        }
        this.members = sharedFileMembers;
        this.memberCount = j;
    }

    public SharedFileMembers getMembers() {
        return this.members;
    }

    public long getMemberCount() {
        return this.memberCount;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.members, Long.valueOf(this.memberCount)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListFileMembersCountResult listFileMembersCountResult = (ListFileMembersCountResult) obj;
            return (this.members == listFileMembersCountResult.members || this.members.equals(listFileMembersCountResult.members)) && this.memberCount == listFileMembersCountResult.memberCount;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListFileMembersCountResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFileMembersCountResult listFileMembersCountResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("members");
            SharedFileMembers.Serializer.INSTANCE.serialize(listFileMembersCountResult.members, gVar);
            gVar.a("member_count");
            StoneSerializers.uInt32().serialize(Long.valueOf(listFileMembersCountResult.memberCount), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFileMembersCountResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            SharedFileMembers sharedFileMembersDeserialize;
            Long l = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SharedFileMembers sharedFileMembers = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("members".equals(strD)) {
                        Long l2 = l;
                        sharedFileMembersDeserialize = SharedFileMembers.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("member_count".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                        sharedFileMembersDeserialize = sharedFileMembers;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        sharedFileMembersDeserialize = sharedFileMembers;
                    }
                    sharedFileMembers = sharedFileMembersDeserialize;
                    l = lDeserialize;
                }
                if (sharedFileMembers == null) {
                    throw new j(kVar, "Required field \"members\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"member_count\" missing.");
                }
                ListFileMembersCountResult listFileMembersCountResult = new ListFileMembersCountResult(sharedFileMembers, l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFileMembersCountResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
