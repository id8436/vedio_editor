package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.FailureDetailsLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SsoLoginFailDetails {
    protected final FailureDetailsLogInfo errorDetails;

    public SsoLoginFailDetails(FailureDetailsLogInfo failureDetailsLogInfo) {
        if (failureDetailsLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'errorDetails' is null");
        }
        this.errorDetails = failureDetailsLogInfo;
    }

    public FailureDetailsLogInfo getErrorDetails() {
        return this.errorDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.errorDetails});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SsoLoginFailDetails ssoLoginFailDetails = (SsoLoginFailDetails) obj;
        return this.errorDetails == ssoLoginFailDetails.errorDetails || this.errorDetails.equals(ssoLoginFailDetails.errorDetails);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SsoLoginFailDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SsoLoginFailDetails ssoLoginFailDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("error_details");
            FailureDetailsLogInfo.Serializer.INSTANCE.serialize(ssoLoginFailDetails.errorDetails, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SsoLoginFailDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            FailureDetailsLogInfo failureDetailsLogInfoDeserialize = null;
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
                    if ("error_details".equals(strD)) {
                        failureDetailsLogInfoDeserialize = FailureDetailsLogInfo.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (failureDetailsLogInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"error_details\" missing.");
                }
                SsoLoginFailDetails ssoLoginFailDetails = new SsoLoginFailDetails(failureDetailsLogInfoDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return ssoLoginFailDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
