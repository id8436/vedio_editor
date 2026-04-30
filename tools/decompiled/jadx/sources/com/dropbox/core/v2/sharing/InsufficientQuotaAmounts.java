package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class InsufficientQuotaAmounts {
    protected final long spaceLeft;
    protected final long spaceNeeded;
    protected final long spaceShortage;

    public InsufficientQuotaAmounts(long j, long j2, long j3) {
        this.spaceNeeded = j;
        this.spaceShortage = j2;
        this.spaceLeft = j3;
    }

    public long getSpaceNeeded() {
        return this.spaceNeeded;
    }

    public long getSpaceShortage() {
        return this.spaceShortage;
    }

    public long getSpaceLeft() {
        return this.spaceLeft;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.spaceNeeded), Long.valueOf(this.spaceShortage), Long.valueOf(this.spaceLeft)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            InsufficientQuotaAmounts insufficientQuotaAmounts = (InsufficientQuotaAmounts) obj;
            return this.spaceNeeded == insufficientQuotaAmounts.spaceNeeded && this.spaceShortage == insufficientQuotaAmounts.spaceShortage && this.spaceLeft == insufficientQuotaAmounts.spaceLeft;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<InsufficientQuotaAmounts> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(InsufficientQuotaAmounts insufficientQuotaAmounts, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("space_needed");
            StoneSerializers.uInt64().serialize(Long.valueOf(insufficientQuotaAmounts.spaceNeeded), gVar);
            gVar.a("space_shortage");
            StoneSerializers.uInt64().serialize(Long.valueOf(insufficientQuotaAmounts.spaceShortage), gVar);
            gVar.a("space_left");
            StoneSerializers.uInt64().serialize(Long.valueOf(insufficientQuotaAmounts.spaceLeft), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public InsufficientQuotaAmounts deserialize(k kVar, boolean z) throws IOException {
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
                Long lDeserialize3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("space_needed".equals(strD)) {
                        lDeserialize2 = l2;
                        lDeserialize3 = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("space_shortage".equals(strD)) {
                        lDeserialize2 = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("space_left".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize2 = l2;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        lDeserialize2 = l2;
                    }
                    l = lDeserialize;
                    l2 = lDeserialize2;
                }
                if (lDeserialize3 == null) {
                    throw new j(kVar, "Required field \"space_needed\" missing.");
                }
                if (l2 == null) {
                    throw new j(kVar, "Required field \"space_shortage\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"space_left\" missing.");
                }
                InsufficientQuotaAmounts insufficientQuotaAmounts = new InsufficientQuotaAmounts(lDeserialize3.longValue(), l2.longValue(), l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return insufficientQuotaAmounts;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
