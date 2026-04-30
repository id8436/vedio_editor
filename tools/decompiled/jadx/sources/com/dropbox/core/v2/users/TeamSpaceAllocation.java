package com.dropbox.core.v2.users;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamSpaceAllocation {
    protected final long allocated;
    protected final long used;

    public TeamSpaceAllocation(long j, long j2) {
        this.used = j;
        this.allocated = j2;
    }

    public long getUsed() {
        return this.used;
    }

    public long getAllocated() {
        return this.allocated;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.used), Long.valueOf(this.allocated)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TeamSpaceAllocation teamSpaceAllocation = (TeamSpaceAllocation) obj;
            return this.used == teamSpaceAllocation.used && this.allocated == teamSpaceAllocation.allocated;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamSpaceAllocation> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamSpaceAllocation teamSpaceAllocation, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("used");
            StoneSerializers.uInt64().serialize(Long.valueOf(teamSpaceAllocation.used), gVar);
            gVar.a("allocated");
            StoneSerializers.uInt64().serialize(Long.valueOf(teamSpaceAllocation.allocated), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamSpaceAllocation deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            Long lDeserialize2;
            Long l = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("used".equals(strD)) {
                        Long l3 = l;
                        lDeserialize2 = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize = l3;
                    } else if ("allocated".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize2 = l2;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        lDeserialize2 = l2;
                    }
                    l2 = lDeserialize2;
                    l = lDeserialize;
                }
                if (l2 == null) {
                    throw new j(kVar, "Required field \"used\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"allocated\" missing.");
                }
                TeamSpaceAllocation teamSpaceAllocation = new TeamSpaceAllocation(l2.longValue(), l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamSpaceAllocation;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
