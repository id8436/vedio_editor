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
public class PasswordLoginFailDetails {
    protected final FailureDetailsLogInfo errorDetails;

    public PasswordLoginFailDetails(FailureDetailsLogInfo failureDetailsLogInfo) {
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
        PasswordLoginFailDetails passwordLoginFailDetails = (PasswordLoginFailDetails) obj;
        return this.errorDetails == passwordLoginFailDetails.errorDetails || this.errorDetails.equals(passwordLoginFailDetails.errorDetails);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PasswordLoginFailDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PasswordLoginFailDetails passwordLoginFailDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("error_details");
            FailureDetailsLogInfo.Serializer.INSTANCE.serialize(passwordLoginFailDetails.errorDetails, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PasswordLoginFailDetails deserialize(k kVar, boolean z) throws IOException {
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
                PasswordLoginFailDetails passwordLoginFailDetails = new PasswordLoginFailDetails(failureDetailsLogInfoDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return passwordLoginFailDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
