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
public class ListMemberAppsResult {
    protected final List<ApiApp> linkedApiApps;

    public ListMemberAppsResult(List<ApiApp> list) {
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

    public List<ApiApp> getLinkedApiApps() {
        return this.linkedApiApps;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.linkedApiApps});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListMemberAppsResult listMemberAppsResult = (ListMemberAppsResult) obj;
        return this.linkedApiApps == listMemberAppsResult.linkedApiApps || this.linkedApiApps.equals(listMemberAppsResult.linkedApiApps);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListMemberAppsResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListMemberAppsResult listMemberAppsResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("linked_api_apps");
            StoneSerializers.list(ApiApp.Serializer.INSTANCE).serialize(listMemberAppsResult.linkedApiApps, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListMemberAppsResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
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
                    if ("linked_api_apps".equals(strD)) {
                        list = (List) StoneSerializers.list(ApiApp.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"linked_api_apps\" missing.");
                }
                ListMemberAppsResult listMemberAppsResult = new ListMemberAppsResult(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listMemberAppsResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
