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
public class RemovedStatus {
    protected final boolean isRecoverable;

    public RemovedStatus(boolean z) {
        this.isRecoverable = z;
    }

    public boolean getIsRecoverable() {
        return this.isRecoverable;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.isRecoverable)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.isRecoverable == ((RemovedStatus) obj).isRecoverable;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RemovedStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RemovedStatus removedStatus, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("is_recoverable");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(removedStatus.isRecoverable), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RemovedStatus deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize = null;
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
                    if ("is_recoverable".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (boolDeserialize == null) {
                    throw new j(kVar, "Required field \"is_recoverable\" missing.");
                }
                RemovedStatus removedStatus = new RemovedStatus(boolDeserialize.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return removedStatus;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
