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
public class DomainInvitesEmailExistingUsersDetails {
    protected final List<String> domainName;
    protected final long numRecipients;

    public DomainInvitesEmailExistingUsersDetails(List<String> list, long j) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'domainName' is null");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'domainName' is null");
            }
        }
        this.domainName = list;
        this.numRecipients = j;
    }

    public List<String> getDomainName() {
        return this.domainName;
    }

    public long getNumRecipients() {
        return this.numRecipients;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.domainName, Long.valueOf(this.numRecipients)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DomainInvitesEmailExistingUsersDetails domainInvitesEmailExistingUsersDetails = (DomainInvitesEmailExistingUsersDetails) obj;
            return (this.domainName == domainInvitesEmailExistingUsersDetails.domainName || this.domainName.equals(domainInvitesEmailExistingUsersDetails.domainName)) && this.numRecipients == domainInvitesEmailExistingUsersDetails.numRecipients;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DomainInvitesEmailExistingUsersDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DomainInvitesEmailExistingUsersDetails domainInvitesEmailExistingUsersDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("domain_name");
            StoneSerializers.list(StoneSerializers.string()).serialize(domainInvitesEmailExistingUsersDetails.domainName, gVar);
            gVar.a("num_recipients");
            StoneSerializers.uInt64().serialize(Long.valueOf(domainInvitesEmailExistingUsersDetails.numRecipients), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DomainInvitesEmailExistingUsersDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            List list;
            Long l = null;
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
                    if ("domain_name".equals(strD)) {
                        Long l2 = l;
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("num_recipients".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        list = list2;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        list = list2;
                    }
                    list2 = list;
                    l = lDeserialize;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"domain_name\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"num_recipients\" missing.");
                }
                DomainInvitesEmailExistingUsersDetails domainInvitesEmailExistingUsersDetails = new DomainInvitesEmailExistingUsersDetails(list2, l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return domainInvitesEmailExistingUsersDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
