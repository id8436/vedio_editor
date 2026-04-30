package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.Certificate;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SsoAddCertDetails {
    protected final Certificate certificateDetails;

    public SsoAddCertDetails(Certificate certificate) {
        if (certificate == null) {
            throw new IllegalArgumentException("Required value for 'certificateDetails' is null");
        }
        this.certificateDetails = certificate;
    }

    public Certificate getCertificateDetails() {
        return this.certificateDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.certificateDetails});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SsoAddCertDetails ssoAddCertDetails = (SsoAddCertDetails) obj;
        return this.certificateDetails == ssoAddCertDetails.certificateDetails || this.certificateDetails.equals(ssoAddCertDetails.certificateDetails);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SsoAddCertDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SsoAddCertDetails ssoAddCertDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("certificate_details");
            Certificate.Serializer.INSTANCE.serialize(ssoAddCertDetails.certificateDetails, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SsoAddCertDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Certificate certificateDeserialize = null;
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
                    if ("certificate_details".equals(strD)) {
                        certificateDeserialize = Certificate.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (certificateDeserialize == null) {
                    throw new j(kVar, "Required field \"certificate_details\" missing.");
                }
                SsoAddCertDetails ssoAddCertDetails = new SsoAddCertDetails(certificateDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return ssoAddCertDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
