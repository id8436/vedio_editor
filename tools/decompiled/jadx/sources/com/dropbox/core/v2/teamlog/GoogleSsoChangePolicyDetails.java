package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.GoogleSsoPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleSsoChangePolicyDetails {
    protected final GoogleSsoPolicy newValue;
    protected final GoogleSsoPolicy previousValue;

    public GoogleSsoChangePolicyDetails(GoogleSsoPolicy googleSsoPolicy, GoogleSsoPolicy googleSsoPolicy2) {
        if (googleSsoPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = googleSsoPolicy;
        this.previousValue = googleSsoPolicy2;
    }

    public GoogleSsoChangePolicyDetails(GoogleSsoPolicy googleSsoPolicy) {
        this(googleSsoPolicy, null);
    }

    public GoogleSsoPolicy getNewValue() {
        return this.newValue;
    }

    public GoogleSsoPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GoogleSsoChangePolicyDetails googleSsoChangePolicyDetails = (GoogleSsoChangePolicyDetails) obj;
            if (this.newValue == googleSsoChangePolicyDetails.newValue || this.newValue.equals(googleSsoChangePolicyDetails.newValue)) {
                if (this.previousValue == googleSsoChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(googleSsoChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<GoogleSsoChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GoogleSsoChangePolicyDetails googleSsoChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            GoogleSsoPolicy.Serializer.INSTANCE.serialize(googleSsoChangePolicyDetails.newValue, gVar);
            if (googleSsoChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(GoogleSsoPolicy.Serializer.INSTANCE).serialize(googleSsoChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GoogleSsoChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            GoogleSsoPolicy googleSsoPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                GoogleSsoPolicy googleSsoPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        googleSsoPolicyDeserialize = GoogleSsoPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        googleSsoPolicy = (GoogleSsoPolicy) StoneSerializers.nullable(GoogleSsoPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (googleSsoPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                GoogleSsoChangePolicyDetails googleSsoChangePolicyDetails = new GoogleSsoChangePolicyDetails(googleSsoPolicyDeserialize, googleSsoPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return googleSsoChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
