package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DomainVerificationAddDomainSuccessDetails {
    protected final List<String> domainNames;
    protected final String verificationMethod;

    public DomainVerificationAddDomainSuccessDetails(List<String> list, String str) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'domainNames' is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'domainNames' is null");
            }
        }
        this.domainNames = list;
        this.verificationMethod = str;
    }

    public DomainVerificationAddDomainSuccessDetails(List<String> list) {
        this(list, null);
    }

    public List<String> getDomainNames() {
        return this.domainNames;
    }

    public String getVerificationMethod() {
        return this.verificationMethod;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.domainNames, this.verificationMethod});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DomainVerificationAddDomainSuccessDetails domainVerificationAddDomainSuccessDetails = (DomainVerificationAddDomainSuccessDetails) obj;
            if (this.domainNames == domainVerificationAddDomainSuccessDetails.domainNames || this.domainNames.equals(domainVerificationAddDomainSuccessDetails.domainNames)) {
                if (this.verificationMethod == domainVerificationAddDomainSuccessDetails.verificationMethod) {
                    return true;
                }
                if (this.verificationMethod != null && this.verificationMethod.equals(domainVerificationAddDomainSuccessDetails.verificationMethod)) {
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

    class Serializer extends StructSerializer<DomainVerificationAddDomainSuccessDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DomainVerificationAddDomainSuccessDetails domainVerificationAddDomainSuccessDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("domain_names");
            StoneSerializers.list(StoneSerializers.string()).serialize(domainVerificationAddDomainSuccessDetails.domainNames, gVar);
            if (domainVerificationAddDomainSuccessDetails.verificationMethod != null) {
                gVar.a("verification_method");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(domainVerificationAddDomainSuccessDetails.verificationMethod, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DomainVerificationAddDomainSuccessDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            List list;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("domain_names".equals(strD)) {
                        String str3 = str2;
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
                        str = str3;
                    } else if ("verification_method".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        list = list2;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        list = list2;
                    }
                    list2 = list;
                    str2 = str;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"domain_names\" missing.");
                }
                DomainVerificationAddDomainSuccessDetails domainVerificationAddDomainSuccessDetails = new DomainVerificationAddDomainSuccessDetails(list2, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return domainVerificationAddDomainSuccessDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
