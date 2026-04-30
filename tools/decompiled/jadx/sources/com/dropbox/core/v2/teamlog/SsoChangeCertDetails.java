package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.Certificate;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SsoChangeCertDetails {
    protected final Certificate newCertificateDetails;
    protected final Certificate previousCertificateDetails;

    public SsoChangeCertDetails(Certificate certificate, Certificate certificate2) {
        this.previousCertificateDetails = certificate2;
        if (certificate == null) {
            throw new IllegalArgumentException("Required value for 'newCertificateDetails' is null");
        }
        this.newCertificateDetails = certificate;
    }

    public SsoChangeCertDetails(Certificate certificate) {
        this(certificate, null);
    }

    public Certificate getNewCertificateDetails() {
        return this.newCertificateDetails;
    }

    public Certificate getPreviousCertificateDetails() {
        return this.previousCertificateDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousCertificateDetails, this.newCertificateDetails});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SsoChangeCertDetails ssoChangeCertDetails = (SsoChangeCertDetails) obj;
            if (this.newCertificateDetails == ssoChangeCertDetails.newCertificateDetails || this.newCertificateDetails.equals(ssoChangeCertDetails.newCertificateDetails)) {
                if (this.previousCertificateDetails == ssoChangeCertDetails.previousCertificateDetails) {
                    return true;
                }
                if (this.previousCertificateDetails != null && this.previousCertificateDetails.equals(ssoChangeCertDetails.previousCertificateDetails)) {
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

    class Serializer extends StructSerializer<SsoChangeCertDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SsoChangeCertDetails ssoChangeCertDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_certificate_details");
            Certificate.Serializer.INSTANCE.serialize(ssoChangeCertDetails.newCertificateDetails, gVar);
            if (ssoChangeCertDetails.previousCertificateDetails != null) {
                gVar.a("previous_certificate_details");
                StoneSerializers.nullableStruct(Certificate.Serializer.INSTANCE).serialize(ssoChangeCertDetails.previousCertificateDetails, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SsoChangeCertDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Certificate certificate;
            Certificate certificateDeserialize;
            Certificate certificate2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Certificate certificate3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_certificate_details".equals(strD)) {
                        Certificate certificate4 = certificate2;
                        certificateDeserialize = Certificate.Serializer.INSTANCE.deserialize(kVar);
                        certificate = certificate4;
                    } else if ("previous_certificate_details".equals(strD)) {
                        certificate = (Certificate) StoneSerializers.nullableStruct(Certificate.Serializer.INSTANCE).deserialize(kVar);
                        certificateDeserialize = certificate3;
                    } else {
                        skipValue(kVar);
                        certificate = certificate2;
                        certificateDeserialize = certificate3;
                    }
                    certificate3 = certificateDeserialize;
                    certificate2 = certificate;
                }
                if (certificate3 == null) {
                    throw new j(kVar, "Required field \"new_certificate_details\" missing.");
                }
                SsoChangeCertDetails ssoChangeCertDetails = new SsoChangeCertDetails(certificate3, certificate2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return ssoChangeCertDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
