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
public class SsoChangeLogoutUrlDetails {
    protected final String newValue;
    protected final String previousValue;

    public SsoChangeLogoutUrlDetails(String str, String str2) {
        this.previousValue = str;
        this.newValue = str2;
    }

    public SsoChangeLogoutUrlDetails() {
        this(null, null);
    }

    public String getPreviousValue() {
        return this.previousValue;
    }

    public String getNewValue() {
        return this.newValue;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected String previousValue = null;
        protected String newValue = null;

        protected Builder() {
        }

        public Builder withPreviousValue(String str) {
            this.previousValue = str;
            return this;
        }

        public Builder withNewValue(String str) {
            this.newValue = str;
            return this;
        }

        public SsoChangeLogoutUrlDetails build() {
            return new SsoChangeLogoutUrlDetails(this.previousValue, this.newValue);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SsoChangeLogoutUrlDetails ssoChangeLogoutUrlDetails = (SsoChangeLogoutUrlDetails) obj;
            if (this.previousValue == ssoChangeLogoutUrlDetails.previousValue || (this.previousValue != null && this.previousValue.equals(ssoChangeLogoutUrlDetails.previousValue))) {
                if (this.newValue == ssoChangeLogoutUrlDetails.newValue) {
                    return true;
                }
                if (this.newValue != null && this.newValue.equals(ssoChangeLogoutUrlDetails.newValue)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SsoChangeLogoutUrlDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SsoChangeLogoutUrlDetails ssoChangeLogoutUrlDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (ssoChangeLogoutUrlDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(ssoChangeLogoutUrlDetails.previousValue, gVar);
            }
            if (ssoChangeLogoutUrlDetails.newValue != null) {
                gVar.a("new_value");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(ssoChangeLogoutUrlDetails.newValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SsoChangeLogoutUrlDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String str3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("previous_value".equals(strD)) {
                        String str5 = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str = str5;
                    } else if ("new_value".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str4;
                    } else {
                        skipValue(kVar);
                        str = str3;
                        str2 = str4;
                    }
                    str4 = str2;
                    str3 = str;
                }
                SsoChangeLogoutUrlDetails ssoChangeLogoutUrlDetails = new SsoChangeLogoutUrlDetails(str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return ssoChangeLogoutUrlDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
