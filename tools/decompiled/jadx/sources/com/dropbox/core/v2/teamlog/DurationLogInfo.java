package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.TimeUnit;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DurationLogInfo {
    protected final long amount;
    protected final TimeUnit unit;

    public DurationLogInfo(TimeUnit timeUnit, long j) {
        if (timeUnit == null) {
            throw new IllegalArgumentException("Required value for 'unit' is null");
        }
        this.unit = timeUnit;
        this.amount = j;
    }

    public TimeUnit getUnit() {
        return this.unit;
    }

    public long getAmount() {
        return this.amount;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.unit, Long.valueOf(this.amount)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DurationLogInfo durationLogInfo = (DurationLogInfo) obj;
            return (this.unit == durationLogInfo.unit || this.unit.equals(durationLogInfo.unit)) && this.amount == durationLogInfo.amount;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DurationLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DurationLogInfo durationLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("unit");
            TimeUnit.Serializer.INSTANCE.serialize(durationLogInfo.unit, gVar);
            gVar.a("amount");
            StoneSerializers.uInt64().serialize(Long.valueOf(durationLogInfo.amount), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DurationLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TimeUnit timeUnitDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("unit".equals(strD)) {
                        timeUnitDeserialize = TimeUnit.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("amount".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (timeUnitDeserialize == null) {
                    throw new j(kVar, "Required field \"unit\" missing.");
                }
                if (lDeserialize == null) {
                    throw new j(kVar, "Required field \"amount\" missing.");
                }
                DurationLogInfo durationLogInfo = new DurationLogInfo(timeUnitDeserialize, lDeserialize.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return durationLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
