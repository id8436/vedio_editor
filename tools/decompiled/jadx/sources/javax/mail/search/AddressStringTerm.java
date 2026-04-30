package javax.mail.search;

import javax.mail.Address;
import javax.mail.internet.InternetAddress;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AddressStringTerm extends StringTerm {
    private static final long serialVersionUID = 3086821234204980368L;

    protected AddressStringTerm(String str) {
        super(str, true);
    }

    protected boolean match(Address address) {
        return address instanceof InternetAddress ? super.match(((InternetAddress) address).toUnicodeString()) : super.match(address.toString());
    }

    @Override // javax.mail.search.StringTerm
    public boolean equals(Object obj) {
        if (obj instanceof AddressStringTerm) {
            return super.equals(obj);
        }
        return false;
    }
}
