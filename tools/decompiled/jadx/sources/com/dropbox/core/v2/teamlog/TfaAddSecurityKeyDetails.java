package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class TfaAddSecurityKeyDetails {
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            return true;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TfaAddSecurityKeyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TfaAddSecurityKeyDetails tfaAddSecurityKeyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TfaAddSecurityKeyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag = null;
            if (!z) {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TfaAddSecurityKeyDetails tfaAddSecurityKeyDetails = new TfaAddSecurityKeyDetails();
                if (!z) {
                    expectEndObject(kVar);
                }
                return tfaAddSecurityKeyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
