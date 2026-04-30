package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.RevokeLinkedAppStatus;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class RevokeLinkedAppBatchResult {
    protected final List<RevokeLinkedAppStatus> revokeLinkedAppStatus;

    public RevokeLinkedAppBatchResult(List<RevokeLinkedAppStatus> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'revokeLinkedAppStatus' is null");
        }
        Iterator<RevokeLinkedAppStatus> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'revokeLinkedAppStatus' is null");
            }
        }
        this.revokeLinkedAppStatus = list;
    }

    public List<RevokeLinkedAppStatus> getRevokeLinkedAppStatus() {
        return this.revokeLinkedAppStatus;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.revokeLinkedAppStatus});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RevokeLinkedAppBatchResult revokeLinkedAppBatchResult = (RevokeLinkedAppBatchResult) obj;
        return this.revokeLinkedAppStatus == revokeLinkedAppBatchResult.revokeLinkedAppStatus || this.revokeLinkedAppStatus.equals(revokeLinkedAppBatchResult.revokeLinkedAppStatus);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RevokeLinkedAppBatchResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RevokeLinkedAppBatchResult revokeLinkedAppBatchResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("revoke_linked_app_status");
            StoneSerializers.list(RevokeLinkedAppStatus.Serializer.INSTANCE).serialize(revokeLinkedAppBatchResult.revokeLinkedAppStatus, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RevokeLinkedAppBatchResult deserialize(k kVar, boolean z) throws IOException {
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
                    if ("revoke_linked_app_status".equals(strD)) {
                        list = (List) StoneSerializers.list(RevokeLinkedAppStatus.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"revoke_linked_app_status\" missing.");
                }
                RevokeLinkedAppBatchResult revokeLinkedAppBatchResult = new RevokeLinkedAppBatchResult(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return revokeLinkedAppBatchResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
