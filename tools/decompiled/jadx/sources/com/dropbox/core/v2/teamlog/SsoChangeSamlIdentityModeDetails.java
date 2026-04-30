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
public class SsoChangeSamlIdentityModeDetails {
    protected final long newValue;
    protected final long previousValue;

    public SsoChangeSamlIdentityModeDetails(long j, long j2) {
        this.previousValue = j;
        this.newValue = j2;
    }

    public long getPreviousValue() {
        return this.previousValue;
    }

    public long getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.previousValue), Long.valueOf(this.newValue)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SsoChangeSamlIdentityModeDetails ssoChangeSamlIdentityModeDetails = (SsoChangeSamlIdentityModeDetails) obj;
            return this.previousValue == ssoChangeSamlIdentityModeDetails.previousValue && this.newValue == ssoChangeSamlIdentityModeDetails.newValue;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SsoChangeSamlIdentityModeDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SsoChangeSamlIdentityModeDetails ssoChangeSamlIdentityModeDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("previous_value");
            StoneSerializers.int64().serialize(Long.valueOf(ssoChangeSamlIdentityModeDetails.previousValue), gVar);
            gVar.a("new_value");
            StoneSerializers.int64().serialize(Long.valueOf(ssoChangeSamlIdentityModeDetails.newValue), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SsoChangeSamlIdentityModeDetails deserialize(k kVar, boolean z) throws IOException {
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
                    if ("previous_value".equals(strD)) {
                        Long l3 = l;
                        lDeserialize2 = StoneSerializers.int64().deserialize(kVar);
                        lDeserialize = l3;
                    } else if ("new_value".equals(strD)) {
                        lDeserialize = StoneSerializers.int64().deserialize(kVar);
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
                    throw new j(kVar, "Required field \"previous_value\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SsoChangeSamlIdentityModeDetails ssoChangeSamlIdentityModeDetails = new SsoChangeSamlIdentityModeDetails(l2.longValue(), l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return ssoChangeSamlIdentityModeDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
