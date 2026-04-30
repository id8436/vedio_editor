package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.NetworkControlPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkControlChangePolicyDetails {
    protected final NetworkControlPolicy newValue;
    protected final NetworkControlPolicy previousValue;

    public NetworkControlChangePolicyDetails(NetworkControlPolicy networkControlPolicy, NetworkControlPolicy networkControlPolicy2) {
        if (networkControlPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = networkControlPolicy;
        this.previousValue = networkControlPolicy2;
    }

    public NetworkControlChangePolicyDetails(NetworkControlPolicy networkControlPolicy) {
        this(networkControlPolicy, null);
    }

    public NetworkControlPolicy getNewValue() {
        return this.newValue;
    }

    public NetworkControlPolicy getPreviousValue() {
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
            NetworkControlChangePolicyDetails networkControlChangePolicyDetails = (NetworkControlChangePolicyDetails) obj;
            if (this.newValue == networkControlChangePolicyDetails.newValue || this.newValue.equals(networkControlChangePolicyDetails.newValue)) {
                if (this.previousValue == networkControlChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(networkControlChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<NetworkControlChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(NetworkControlChangePolicyDetails networkControlChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            NetworkControlPolicy.Serializer.INSTANCE.serialize(networkControlChangePolicyDetails.newValue, gVar);
            if (networkControlChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(NetworkControlPolicy.Serializer.INSTANCE).serialize(networkControlChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public NetworkControlChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            NetworkControlPolicy networkControlPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                NetworkControlPolicy networkControlPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        networkControlPolicyDeserialize = NetworkControlPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        networkControlPolicy = (NetworkControlPolicy) StoneSerializers.nullable(NetworkControlPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (networkControlPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                NetworkControlChangePolicyDetails networkControlChangePolicyDetails = new NetworkControlChangePolicyDetails(networkControlPolicyDeserialize, networkControlPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return networkControlChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
