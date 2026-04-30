package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teampolicies.EmmState;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class EmmChangePolicyDetails {
    protected final EmmState newValue;
    protected final EmmState previousValue;

    public EmmChangePolicyDetails(EmmState emmState, EmmState emmState2) {
        if (emmState == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = emmState;
        this.previousValue = emmState2;
    }

    public EmmChangePolicyDetails(EmmState emmState) {
        this(emmState, null);
    }

    public EmmState getNewValue() {
        return this.newValue;
    }

    public EmmState getPreviousValue() {
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
            EmmChangePolicyDetails emmChangePolicyDetails = (EmmChangePolicyDetails) obj;
            if (this.newValue == emmChangePolicyDetails.newValue || this.newValue.equals(emmChangePolicyDetails.newValue)) {
                if (this.previousValue == emmChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(emmChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<EmmChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(EmmChangePolicyDetails emmChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            EmmState.Serializer.INSTANCE.serialize(emmChangePolicyDetails.newValue, gVar);
            if (emmChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(EmmState.Serializer.INSTANCE).serialize(emmChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public EmmChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            EmmState emmState = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                EmmState emmStateDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        emmStateDeserialize = EmmState.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        emmState = (EmmState) StoneSerializers.nullable(EmmState.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (emmStateDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                EmmChangePolicyDetails emmChangePolicyDetails = new EmmChangePolicyDetails(emmStateDeserialize, emmState);
                if (!z) {
                    expectEndObject(kVar);
                }
                return emmChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
