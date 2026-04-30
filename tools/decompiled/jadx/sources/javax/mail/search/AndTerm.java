package javax.mail.search;

import javax.mail.Message;

/* JADX INFO: loaded from: classes3.dex */
public final class AndTerm extends SearchTerm {
    private static final long serialVersionUID = -3583274505380989582L;
    protected SearchTerm[] terms;

    public AndTerm(SearchTerm searchTerm, SearchTerm searchTerm2) {
        this.terms = new SearchTerm[2];
        this.terms[0] = searchTerm;
        this.terms[1] = searchTerm2;
    }

    public AndTerm(SearchTerm[] searchTermArr) {
        this.terms = new SearchTerm[searchTermArr.length];
        for (int i = 0; i < searchTermArr.length; i++) {
            this.terms[i] = searchTermArr[i];
        }
    }

    public SearchTerm[] getTerms() {
        return (SearchTerm[]) this.terms.clone();
    }

    @Override // javax.mail.search.SearchTerm
    public boolean match(Message message) {
        for (int i = 0; i < this.terms.length; i++) {
            if (!this.terms[i].match(message)) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AndTerm)) {
            return false;
        }
        AndTerm andTerm = (AndTerm) obj;
        if (andTerm.terms.length != this.terms.length) {
            return false;
        }
        for (int i = 0; i < this.terms.length; i++) {
            if (!this.terms[i].equals(andTerm.terms[i])) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int iHashCode = 0;
        for (int i = 0; i < this.terms.length; i++) {
            iHashCode += this.terms[i].hashCode();
        }
        return iHashCode;
    }
}
