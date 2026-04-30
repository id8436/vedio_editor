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
public class GroupChangeMemberRoleDetails {
    protected final boolean isGroupOwner;

    public GroupChangeMemberRoleDetails(boolean z) {
        this.isGroupOwner = z;
    }

    public boolean getIsGroupOwner() {
        return this.isGroupOwner;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.isGroupOwner)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.isGroupOwner == ((GroupChangeMemberRoleDetails) obj).isGroupOwner;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupChangeMemberRoleDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupChangeMemberRoleDetails groupChangeMemberRoleDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("is_group_owner");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(groupChangeMemberRoleDetails.isGroupOwner), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupChangeMemberRoleDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize = null;
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
                    if ("is_group_owner".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (boolDeserialize == null) {
                    throw new j(kVar, "Required field \"is_group_owner\" missing.");
                }
                GroupChangeMemberRoleDetails groupChangeMemberRoleDetails = new GroupChangeMemberRoleDetails(boolDeserialize.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupChangeMemberRoleDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
