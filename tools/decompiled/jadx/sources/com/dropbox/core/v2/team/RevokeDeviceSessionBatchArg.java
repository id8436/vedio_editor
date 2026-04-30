package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.RevokeDeviceSessionArg;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class RevokeDeviceSessionBatchArg {
    protected final List<RevokeDeviceSessionArg> revokeDevices;

    public RevokeDeviceSessionBatchArg(List<RevokeDeviceSessionArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'revokeDevices' is null");
        }
        Iterator<RevokeDeviceSessionArg> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'revokeDevices' is null");
            }
        }
        this.revokeDevices = list;
    }

    public List<RevokeDeviceSessionArg> getRevokeDevices() {
        return this.revokeDevices;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.revokeDevices});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RevokeDeviceSessionBatchArg revokeDeviceSessionBatchArg = (RevokeDeviceSessionBatchArg) obj;
        return this.revokeDevices == revokeDeviceSessionBatchArg.revokeDevices || this.revokeDevices.equals(revokeDeviceSessionBatchArg.revokeDevices);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RevokeDeviceSessionBatchArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RevokeDeviceSessionBatchArg revokeDeviceSessionBatchArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("revoke_devices");
            StoneSerializers.list(RevokeDeviceSessionArg.Serializer.INSTANCE).serialize(revokeDeviceSessionBatchArg.revokeDevices, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RevokeDeviceSessionBatchArg deserialize(k kVar, boolean z) throws IOException {
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
                    if ("revoke_devices".equals(strD)) {
                        list = (List) StoneSerializers.list(RevokeDeviceSessionArg.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"revoke_devices\" missing.");
                }
                RevokeDeviceSessionBatchArg revokeDeviceSessionBatchArg = new RevokeDeviceSessionBatchArg(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return revokeDeviceSessionBatchArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
