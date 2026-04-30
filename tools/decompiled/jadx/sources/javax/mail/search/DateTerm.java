package javax.mail.search;

import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DateTerm extends ComparisonTerm {
    private static final long serialVersionUID = 4818873430063720043L;
    protected Date date;

    protected DateTerm(int i, Date date) {
        this.comparison = i;
        this.date = date;
    }

    public Date getDate() {
        return new Date(this.date.getTime());
    }

    public int getComparison() {
        return this.comparison;
    }

    protected boolean match(Date date) {
        switch (this.comparison) {
            case 1:
                if (date.before(this.date) || date.equals(this.date)) {
                }
                break;
            case 4:
                break;
            case 6:
                if (date.after(this.date) || date.equals(this.date)) {
                }
                break;
        }
        return false;
    }

    @Override // javax.mail.search.ComparisonTerm
    public boolean equals(Object obj) {
        if (obj instanceof DateTerm) {
            return ((DateTerm) obj).date.equals(this.date) && super.equals(obj);
        }
        return false;
    }

    @Override // javax.mail.search.ComparisonTerm
    public int hashCode() {
        return this.date.hashCode() + super.hashCode();
    }
}
