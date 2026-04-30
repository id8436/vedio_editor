package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ShmodelSetExpirationDetails {
    protected final long expirationDays;
    protected final String expirationStartDate;

    public ShmodelSetExpirationDetails(String str, long j) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'expirationStartDate' is null");
        }
        this.expirationStartDate = str;
        this.expirationDays = j;
    }

    public String getExpirationStartDate() {
        return this.expirationStartDate;
    }

    public long getExpirationDays() {
        return this.expirationDays;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.expirationStartDate, Long.valueOf(this.expirationDays)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ShmodelSetExpirationDetails shmodelSetExpirationDetails = (ShmodelSetExpirationDetails) obj;
            return (this.expirationStartDate == shmodelSetExpirationDetails.expirationStartDate || this.expirationStartDate.equals(shmodelSetExpirationDetails.expirationStartDate)) && this.expirationDays == shmodelSetExpirationDetails.expirationDays;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ShmodelSetExpirationDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ShmodelSetExpirationDetails shmodelSetExpirationDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("expiration_start_date");
            StoneSerializers.string().serialize(shmodelSetExpirationDetails.expirationStartDate, gVar);
            gVar.a("expiration_days");
            StoneSerializers.int64().serialize(Long.valueOf(shmodelSetExpirationDetails.expirationDays), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ShmodelSetExpirationDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            String strDeserialize;
            Long l = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("expiration_start_date".equals(strD)) {
                        Long l2 = l;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("expiration_days".equals(strD)) {
                        lDeserialize = StoneSerializers.int64().deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    l = lDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"expiration_start_date\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"expiration_days\" missing.");
                }
                ShmodelSetExpirationDetails shmodelSetExpirationDetails = new ShmodelSetExpirationDetails(str, l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return shmodelSetExpirationDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
