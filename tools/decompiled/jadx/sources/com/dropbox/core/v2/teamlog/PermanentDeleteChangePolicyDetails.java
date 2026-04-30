package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.ContentPermanentDeletePolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PermanentDeleteChangePolicyDetails {
    protected final ContentPermanentDeletePolicy newValue;
    protected final ContentPermanentDeletePolicy previousValue;

    public PermanentDeleteChangePolicyDetails(ContentPermanentDeletePolicy contentPermanentDeletePolicy, ContentPermanentDeletePolicy contentPermanentDeletePolicy2) {
        if (contentPermanentDeletePolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = contentPermanentDeletePolicy;
        this.previousValue = contentPermanentDeletePolicy2;
    }

    public PermanentDeleteChangePolicyDetails(ContentPermanentDeletePolicy contentPermanentDeletePolicy) {
        this(contentPermanentDeletePolicy, null);
    }

    public ContentPermanentDeletePolicy getNewValue() {
        return this.newValue;
    }

    public ContentPermanentDeletePolicy getPreviousValue() {
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
            PermanentDeleteChangePolicyDetails permanentDeleteChangePolicyDetails = (PermanentDeleteChangePolicyDetails) obj;
            if (this.newValue == permanentDeleteChangePolicyDetails.newValue || this.newValue.equals(permanentDeleteChangePolicyDetails.newValue)) {
                if (this.previousValue == permanentDeleteChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(permanentDeleteChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<PermanentDeleteChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PermanentDeleteChangePolicyDetails permanentDeleteChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            ContentPermanentDeletePolicy.Serializer.INSTANCE.serialize(permanentDeleteChangePolicyDetails.newValue, gVar);
            if (permanentDeleteChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(ContentPermanentDeletePolicy.Serializer.INSTANCE).serialize(permanentDeleteChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PermanentDeleteChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            ContentPermanentDeletePolicy contentPermanentDeletePolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                ContentPermanentDeletePolicy contentPermanentDeletePolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        contentPermanentDeletePolicyDeserialize = ContentPermanentDeletePolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        contentPermanentDeletePolicy = (ContentPermanentDeletePolicy) StoneSerializers.nullable(ContentPermanentDeletePolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (contentPermanentDeletePolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                PermanentDeleteChangePolicyDetails permanentDeleteChangePolicyDetails = new PermanentDeleteChangePolicyDetails(contentPermanentDeletePolicyDeserialize, contentPermanentDeletePolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return permanentDeleteChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
