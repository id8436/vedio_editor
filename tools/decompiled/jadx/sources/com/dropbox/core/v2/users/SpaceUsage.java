package com.dropbox.core.v2.users;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.users.SpaceAllocation;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SpaceUsage {
    protected final SpaceAllocation allocation;
    protected final long used;

    public SpaceUsage(long j, SpaceAllocation spaceAllocation) {
        this.used = j;
        if (spaceAllocation == null) {
            throw new IllegalArgumentException("Required value for 'allocation' is null");
        }
        this.allocation = spaceAllocation;
    }

    public long getUsed() {
        return this.used;
    }

    public SpaceAllocation getAllocation() {
        return this.allocation;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.used), this.allocation});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SpaceUsage spaceUsage = (SpaceUsage) obj;
            return this.used == spaceUsage.used && (this.allocation == spaceUsage.allocation || this.allocation.equals(spaceUsage.allocation));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SpaceUsage> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SpaceUsage spaceUsage, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("used");
            StoneSerializers.uInt64().serialize(Long.valueOf(spaceUsage.used), gVar);
            gVar.a("allocation");
            SpaceAllocation.Serializer.INSTANCE.serialize(spaceUsage.allocation, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SpaceUsage deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SpaceAllocation spaceAllocationDeserialize;
            Long lDeserialize;
            SpaceAllocation spaceAllocation = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("used".equals(strD)) {
                        SpaceAllocation spaceAllocation2 = spaceAllocation;
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        spaceAllocationDeserialize = spaceAllocation2;
                    } else if ("allocation".equals(strD)) {
                        spaceAllocationDeserialize = SpaceAllocation.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        spaceAllocationDeserialize = spaceAllocation;
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                    spaceAllocation = spaceAllocationDeserialize;
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"used\" missing.");
                }
                if (spaceAllocation == null) {
                    throw new j(kVar, "Required field \"allocation\" missing.");
                }
                SpaceUsage spaceUsage = new SpaceUsage(l.longValue(), spaceAllocation);
                if (!z) {
                    expectEndObject(kVar);
                }
                return spaceUsage;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
