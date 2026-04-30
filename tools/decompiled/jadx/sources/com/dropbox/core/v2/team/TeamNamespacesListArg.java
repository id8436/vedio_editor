package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class TeamNamespacesListArg {
    protected final long limit;

    public TeamNamespacesListArg(long j) {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j > 1000) {
            throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
        }
        this.limit = j;
    }

    public TeamNamespacesListArg() {
        this(1000L);
    }

    public long getLimit() {
        return this.limit;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.limit)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.limit == ((TeamNamespacesListArg) obj).limit;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamNamespacesListArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamNamespacesListArg teamNamespacesListArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("limit");
            StoneSerializers.uInt32().serialize(Long.valueOf(teamNamespacesListArg.limit), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamNamespacesListArg deserialize(k kVar, boolean z) throws IOException {
            String tag = null;
            if (!z) {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long lDeserialize = 1000L;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("limit".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                TeamNamespacesListArg teamNamespacesListArg = new TeamNamespacesListArg(lDeserialize.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamNamespacesListArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
