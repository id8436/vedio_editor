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
public class Certificate {
    protected final String commonName;
    protected final String expirationDate;
    protected final String issueDate;
    protected final String issuer;
    protected final String serialNumber;
    protected final String sha1Fingerprint;
    protected final String subject;

    public Certificate(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'subject' is null");
        }
        this.subject = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'issuer' is null");
        }
        this.issuer = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'issueDate' is null");
        }
        this.issueDate = str3;
        if (str4 == null) {
            throw new IllegalArgumentException("Required value for 'expirationDate' is null");
        }
        this.expirationDate = str4;
        if (str5 == null) {
            throw new IllegalArgumentException("Required value for 'serialNumber' is null");
        }
        this.serialNumber = str5;
        if (str6 == null) {
            throw new IllegalArgumentException("Required value for 'sha1Fingerprint' is null");
        }
        this.sha1Fingerprint = str6;
        if (str7 == null) {
            throw new IllegalArgumentException("Required value for 'commonName' is null");
        }
        this.commonName = str7;
    }

    public String getSubject() {
        return this.subject;
    }

    public String getIssuer() {
        return this.issuer;
    }

    public String getIssueDate() {
        return this.issueDate;
    }

    public String getExpirationDate() {
        return this.expirationDate;
    }

    public String getSerialNumber() {
        return this.serialNumber;
    }

    public String getSha1Fingerprint() {
        return this.sha1Fingerprint;
    }

    public String getCommonName() {
        return this.commonName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.subject, this.issuer, this.issueDate, this.expirationDate, this.serialNumber, this.sha1Fingerprint, this.commonName});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            Certificate certificate = (Certificate) obj;
            return (this.subject == certificate.subject || this.subject.equals(certificate.subject)) && (this.issuer == certificate.issuer || this.issuer.equals(certificate.issuer)) && ((this.issueDate == certificate.issueDate || this.issueDate.equals(certificate.issueDate)) && ((this.expirationDate == certificate.expirationDate || this.expirationDate.equals(certificate.expirationDate)) && ((this.serialNumber == certificate.serialNumber || this.serialNumber.equals(certificate.serialNumber)) && ((this.sha1Fingerprint == certificate.sha1Fingerprint || this.sha1Fingerprint.equals(certificate.sha1Fingerprint)) && (this.commonName == certificate.commonName || this.commonName.equals(certificate.commonName))))));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<Certificate> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(Certificate certificate, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("subject");
            StoneSerializers.string().serialize(certificate.subject, gVar);
            gVar.a("issuer");
            StoneSerializers.string().serialize(certificate.issuer, gVar);
            gVar.a("issue_date");
            StoneSerializers.string().serialize(certificate.issueDate, gVar);
            gVar.a("expiration_date");
            StoneSerializers.string().serialize(certificate.expirationDate, gVar);
            gVar.a("serial_number");
            StoneSerializers.string().serialize(certificate.serialNumber, gVar);
            gVar.a("sha1_fingerprint");
            StoneSerializers.string().serialize(certificate.sha1Fingerprint, gVar);
            gVar.a("common_name");
            StoneSerializers.string().serialize(certificate.commonName, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public Certificate deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String strDeserialize2 = null;
                String strDeserialize3 = null;
                String strDeserialize4 = null;
                String strDeserialize5 = null;
                String strDeserialize6 = null;
                String strDeserialize7 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("subject".equals(strD)) {
                        strDeserialize7 = StoneSerializers.string().deserialize(kVar);
                    } else if ("issuer".equals(strD)) {
                        strDeserialize6 = StoneSerializers.string().deserialize(kVar);
                    } else if ("issue_date".equals(strD)) {
                        strDeserialize5 = StoneSerializers.string().deserialize(kVar);
                    } else if ("expiration_date".equals(strD)) {
                        strDeserialize4 = StoneSerializers.string().deserialize(kVar);
                    } else if ("serial_number".equals(strD)) {
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                    } else if ("sha1_fingerprint".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                    } else if ("common_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize7 == null) {
                    throw new j(kVar, "Required field \"subject\" missing.");
                }
                if (strDeserialize6 == null) {
                    throw new j(kVar, "Required field \"issuer\" missing.");
                }
                if (strDeserialize5 == null) {
                    throw new j(kVar, "Required field \"issue_date\" missing.");
                }
                if (strDeserialize4 == null) {
                    throw new j(kVar, "Required field \"expiration_date\" missing.");
                }
                if (strDeserialize3 == null) {
                    throw new j(kVar, "Required field \"serial_number\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"sha1_fingerprint\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"common_name\" missing.");
                }
                Certificate certificate = new Certificate(strDeserialize7, strDeserialize6, strDeserialize5, strDeserialize4, strDeserialize3, strDeserialize2, strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return certificate;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
