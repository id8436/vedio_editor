package javax.mail.search;

import javax.mail.Address;
import javax.mail.Message;

/* JADX INFO: loaded from: classes3.dex */
public final class RecipientTerm extends AddressTerm {
    private static final long serialVersionUID = 6548700653122680468L;
    protected Message.RecipientType type;

    public RecipientTerm(Message.RecipientType recipientType, Address address) {
        super(address);
        this.type = recipientType;
    }

    public Message.RecipientType getRecipientType() {
        return this.type;
    }

    @Override // javax.mail.search.SearchTerm
    public boolean match(Message message) {
        try {
            Address[] recipients = message.getRecipients(this.type);
            if (recipients == null) {
                return false;
            }
            for (Address address : recipients) {
                if (super.match(address)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    @Override // javax.mail.search.AddressTerm
    public boolean equals(Object obj) {
        if (obj instanceof RecipientTerm) {
            return ((RecipientTerm) obj).type.equals(this.type) && super.equals(obj);
        }
        return false;
    }

    @Override // javax.mail.search.AddressTerm
    public int hashCode() {
        return this.type.hashCode() + super.hashCode();
    }
}
