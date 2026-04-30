package javax.mail.search;

import javax.mail.Message;

/* JADX INFO: loaded from: classes3.dex */
public final class NotTerm extends SearchTerm {
    private static final long serialVersionUID = 7152293214217310216L;
    protected SearchTerm term;

    public NotTerm(SearchTerm searchTerm) {
        this.term = searchTerm;
    }

    public SearchTerm getTerm() {
        return this.term;
    }

    @Override // javax.mail.search.SearchTerm
    public boolean match(Message message) {
        return !this.term.match(message);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NotTerm)) {
            return false;
        }
        return ((NotTerm) obj).term.equals(this.term);
    }

    public int hashCode() {
        return this.term.hashCode() << 1;
    }
}
