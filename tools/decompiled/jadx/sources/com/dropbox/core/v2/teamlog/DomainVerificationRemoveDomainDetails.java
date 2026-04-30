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
public class DomainVerificationRemoveDomainDetails {
    protected final List<String> domainNames;

    public DomainVerificationRemoveDomainDetails(List<String> list) {
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
    }

    public List<String> getDomainNames() {
        return this.domainNames;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.domainNames});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DomainVerificationRemoveDomainDetails domainVerificationRemoveDomainDetails = (DomainVerificationRemoveDomainDetails) obj;
        return this.domainNames == domainVerificationRemoveDomainDetails.domainNames || this.domainNames.equals(domainVerificationRemoveDomainDetails.domainNames);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DomainVerificationRemoveDomainDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DomainVerificationRemoveDomainDetails domainVerificationRemoveDomainDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("domain_names");
            StoneSerializers.list(StoneSerializers.string()).serialize(domainVerificationRemoveDomainDetails.domainNames, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DomainVerificationRemoveDomainDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
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
                    if ("domain_names".equals(strD)) {
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"domain_names\" missing.");
                }
                DomainVerificationRemoveDomainDetails domainVerificationRemoveDomainDetails = new DomainVerificationRemoveDomainDetails(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return domainVerificationRemoveDomainDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
