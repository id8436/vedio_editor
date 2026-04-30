package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.MemberAddArg;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class MembersAddArg {
    protected final boolean forceAsync;
    protected final List<MemberAddArg> newMembers;

    public MembersAddArg(List<MemberAddArg> list, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'newMembers' is null");
        }
        Iterator<MemberAddArg> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'newMembers' is null");
            }
        }
        this.newMembers = list;
        this.forceAsync = z;
    }

    public MembersAddArg(List<MemberAddArg> list) {
        this(list, false);
    }

    public List<MemberAddArg> getNewMembers() {
        return this.newMembers;
    }

    public boolean getForceAsync() {
        return this.forceAsync;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newMembers, Boolean.valueOf(this.forceAsync)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MembersAddArg membersAddArg = (MembersAddArg) obj;
            return (this.newMembers == membersAddArg.newMembers || this.newMembers.equals(membersAddArg.newMembers)) && this.forceAsync == membersAddArg.forceAsync;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MembersAddArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MembersAddArg membersAddArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_members");
            StoneSerializers.list(MemberAddArg.Serializer.INSTANCE).serialize(membersAddArg.newMembers, gVar);
            gVar.a("force_async");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(membersAddArg.forceAsync), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MembersAddArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            List list;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_members".equals(strD)) {
                        Boolean bool2 = bool;
                        list = (List) StoneSerializers.list(MemberAddArg.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("force_async".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        list = list2;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        list = list2;
                    }
                    list2 = list;
                    bool = boolDeserialize;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"new_members\" missing.");
                }
                MembersAddArg membersAddArg = new MembersAddArg(list2, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return membersAddArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
