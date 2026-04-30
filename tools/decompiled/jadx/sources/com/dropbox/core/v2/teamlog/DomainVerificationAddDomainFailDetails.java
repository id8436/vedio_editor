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
public class DomainVerificationAddDomainFailDetails {
    protected final String domainName;
    protected final String verificationMethod;

    public DomainVerificationAddDomainFailDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'domainName' is null");
        }
        this.domainName = str;
        this.verificationMethod = str2;
    }

    public DomainVerificationAddDomainFailDetails(String str) {
        this(str, null);
    }

    public String getDomainName() {
        return this.domainName;
    }

    public String getVerificationMethod() {
        return this.verificationMethod;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.domainName, this.verificationMethod});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DomainVerificationAddDomainFailDetails domainVerificationAddDomainFailDetails = (DomainVerificationAddDomainFailDetails) obj;
            if (this.domainName == domainVerificationAddDomainFailDetails.domainName || this.domainName.equals(domainVerificationAddDomainFailDetails.domainName)) {
                if (this.verificationMethod == domainVerificationAddDomainFailDetails.verificationMethod) {
                    return true;
                }
                if (this.verificationMethod != null && this.verificationMethod.equals(domainVerificationAddDomainFailDetails.verificationMethod)) {
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

    class Serializer extends StructSerializer<DomainVerificationAddDomainFailDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DomainVerificationAddDomainFailDetails domainVerificationAddDomainFailDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("domain_name");
            StoneSerializers.string().serialize(domainVerificationAddDomainFailDetails.domainName, gVar);
            if (domainVerificationAddDomainFailDetails.verificationMethod != null) {
                gVar.a("verification_method");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(domainVerificationAddDomainFailDetails.verificationMethod, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DomainVerificationAddDomainFailDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String strDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("domain_name".equals(strD)) {
                        String str4 = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str4;
                    } else if ("verification_method".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        strDeserialize = str3;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        strDeserialize = str3;
                    }
                    str3 = strDeserialize;
                    str2 = str;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"domain_name\" missing.");
                }
                DomainVerificationAddDomainFailDetails domainVerificationAddDomainFailDetails = new DomainVerificationAddDomainFailDetails(str3, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return domainVerificationAddDomainFailDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
