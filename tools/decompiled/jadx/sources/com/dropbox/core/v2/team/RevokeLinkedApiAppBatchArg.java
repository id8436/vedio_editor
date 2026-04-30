package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.RevokeLinkedApiAppArg;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class RevokeLinkedApiAppBatchArg {
    protected final List<RevokeLinkedApiAppArg> revokeLinkedApp;

    public RevokeLinkedApiAppBatchArg(List<RevokeLinkedApiAppArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'revokeLinkedApp' is null");
        }
        Iterator<RevokeLinkedApiAppArg> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'revokeLinkedApp' is null");
            }
        }
        this.revokeLinkedApp = list;
    }

    public List<RevokeLinkedApiAppArg> getRevokeLinkedApp() {
        return this.revokeLinkedApp;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.revokeLinkedApp});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RevokeLinkedApiAppBatchArg revokeLinkedApiAppBatchArg = (RevokeLinkedApiAppBatchArg) obj;
        return this.revokeLinkedApp == revokeLinkedApiAppBatchArg.revokeLinkedApp || this.revokeLinkedApp.equals(revokeLinkedApiAppBatchArg.revokeLinkedApp);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RevokeLinkedApiAppBatchArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RevokeLinkedApiAppBatchArg revokeLinkedApiAppBatchArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("revoke_linked_app");
            StoneSerializers.list(RevokeLinkedApiAppArg.Serializer.INSTANCE).serialize(revokeLinkedApiAppBatchArg.revokeLinkedApp, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RevokeLinkedApiAppBatchArg deserialize(k kVar, boolean z) throws IOException {
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
                    if ("revoke_linked_app".equals(strD)) {
                        list = (List) StoneSerializers.list(RevokeLinkedApiAppArg.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"revoke_linked_app\" missing.");
                }
                RevokeLinkedApiAppBatchArg revokeLinkedApiAppBatchArg = new RevokeLinkedApiAppBatchArg(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return revokeLinkedApiAppBatchArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
