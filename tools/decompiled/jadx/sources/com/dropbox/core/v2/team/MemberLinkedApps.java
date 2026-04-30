package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.ApiApp;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MemberLinkedApps {
    protected final List<ApiApp> linkedApiApps;
    protected final String teamMemberId;

    public MemberLinkedApps(String str, List<ApiApp> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
        }
        this.teamMemberId = str;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'linkedApiApps' is null");
        }
        Iterator<ApiApp> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'linkedApiApps' is null");
            }
        }
        this.linkedApiApps = list;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public List<ApiApp> getLinkedApiApps() {
        return this.linkedApiApps;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamMemberId, this.linkedApiApps});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MemberLinkedApps memberLinkedApps = (MemberLinkedApps) obj;
            return (this.teamMemberId == memberLinkedApps.teamMemberId || this.teamMemberId.equals(memberLinkedApps.teamMemberId)) && (this.linkedApiApps == memberLinkedApps.linkedApiApps || this.linkedApiApps.equals(memberLinkedApps.linkedApiApps));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MemberLinkedApps> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberLinkedApps memberLinkedApps, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_member_id");
            StoneSerializers.string().serialize(memberLinkedApps.teamMemberId, gVar);
            gVar.a("linked_api_apps");
            StoneSerializers.list(ApiApp.Serializer.INSTANCE).serialize(memberLinkedApps.linkedApiApps, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberLinkedApps deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            String strDeserialize;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("team_member_id".equals(strD)) {
                        List list3 = list2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        list = list3;
                    } else if ("linked_api_apps".equals(strD)) {
                        list = (List) StoneSerializers.list(ApiApp.Serializer.INSTANCE).deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        list = list2;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    list2 = list;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"team_member_id\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"linked_api_apps\" missing.");
                }
                MemberLinkedApps memberLinkedApps = new MemberLinkedApps(str, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberLinkedApps;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
