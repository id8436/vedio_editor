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
public class SsoAddLogoutUrlDetails {
    protected final String newValue;

    public SsoAddLogoutUrlDetails(String str) {
        this.newValue = str;
    }

    public SsoAddLogoutUrlDetails() {
        this(null);
    }

    public String getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SsoAddLogoutUrlDetails ssoAddLogoutUrlDetails = (SsoAddLogoutUrlDetails) obj;
        return this.newValue == ssoAddLogoutUrlDetails.newValue || (this.newValue != null && this.newValue.equals(ssoAddLogoutUrlDetails.newValue));
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SsoAddLogoutUrlDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SsoAddLogoutUrlDetails ssoAddLogoutUrlDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (ssoAddLogoutUrlDetails.newValue != null) {
                gVar.a("new_value");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(ssoAddLogoutUrlDetails.newValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SsoAddLogoutUrlDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str = null;
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
                    if ("new_value".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                SsoAddLogoutUrlDetails ssoAddLogoutUrlDetails = new SsoAddLogoutUrlDetails(str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return ssoAddLogoutUrlDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
