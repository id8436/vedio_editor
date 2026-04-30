package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.UserCustomQuotaArg;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class SetCustomQuotaArg {
    protected final List<UserCustomQuotaArg> usersAndQuotas;

    public SetCustomQuotaArg(List<UserCustomQuotaArg> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'usersAndQuotas' is null");
        }
        Iterator<UserCustomQuotaArg> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'usersAndQuotas' is null");
            }
        }
        this.usersAndQuotas = list;
    }

    public List<UserCustomQuotaArg> getUsersAndQuotas() {
        return this.usersAndQuotas;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.usersAndQuotas});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SetCustomQuotaArg setCustomQuotaArg = (SetCustomQuotaArg) obj;
        return this.usersAndQuotas == setCustomQuotaArg.usersAndQuotas || this.usersAndQuotas.equals(setCustomQuotaArg.usersAndQuotas);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SetCustomQuotaArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SetCustomQuotaArg setCustomQuotaArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("users_and_quotas");
            StoneSerializers.list(UserCustomQuotaArg.Serializer.INSTANCE).serialize(setCustomQuotaArg.usersAndQuotas, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SetCustomQuotaArg deserialize(k kVar, boolean z) throws IOException {
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
                    if ("users_and_quotas".equals(strD)) {
                        list = (List) StoneSerializers.list(UserCustomQuotaArg.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"users_and_quotas\" missing.");
                }
                SetCustomQuotaArg setCustomQuotaArg = new SetCustomQuotaArg(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return setCustomQuotaArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
