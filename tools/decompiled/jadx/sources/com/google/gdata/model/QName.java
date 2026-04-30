package com.google.gdata.model;

import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public final class QName implements Comparable<QName> {
    public static final String ANY_LOCALNAME = "*";
    public static final XmlNamespace ANY_NAMESPACE = new XmlNamespace("*", "*");
    private final String localName;
    private final XmlNamespace namespace;

    public QName(String str) {
        this(null, str);
    }

    public QName(XmlNamespace xmlNamespace, String str) {
        Preconditions.checkNotNull(str, "localName");
        this.namespace = xmlNamespace;
        this.localName = str;
    }

    public XmlNamespace getNs() {
        return this.namespace;
    }

    public String getLocalName() {
        return this.localName;
    }

    public boolean matchesAnyNamespace() {
        return ANY_NAMESPACE.equals(this.namespace);
    }

    public boolean matchesAnyLocalName() {
        return "*".equals(this.localName);
    }

    public boolean matches(QName qName) {
        if (qName == null) {
            return false;
        }
        if (!matchesAnyNamespace()) {
            XmlNamespace ns = qName.getNs();
            String uri = this.namespace == null ? null : this.namespace.getUri();
            String uri2 = ns != null ? ns.getUri() : null;
            if (uri == null) {
                if (uri2 != null) {
                    return false;
                }
            } else if (!uri.equals(uri2)) {
                return false;
            }
        }
        if (matchesAnyLocalName()) {
            return true;
        }
        return this.localName.equals(qName.getLocalName());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof QName)) {
            return false;
        }
        QName qName = (QName) obj;
        if (getNs() == null && qName.getNs() == null) {
            return getLocalName().equals(qName.getLocalName());
        }
        return getNs() != null && qName.getNs() != null && getNs().getUri().equals(qName.getNs().getUri()) && getLocalName().equals(qName.getLocalName());
    }

    public int hashCode() {
        return getNs() == null ? getLocalName().hashCode() : (getNs().getUri().hashCode() * 13) + getLocalName().hashCode();
    }

    public String toString() {
        return (getNs() == null || "".equals(getNs().getAlias())) ? getLocalName() : getNs().getAlias() + ":" + getLocalName();
    }

    @Override // java.lang.Comparable
    public int compareTo(QName qName) {
        if (getNs() == null) {
            if (qName.getNs() != null) {
                return -1;
            }
        } else {
            if (qName.getNs() == null) {
                return 1;
            }
            int iCompareTo = getNs().getUri().compareTo(qName.getNs().getUri());
            if (iCompareTo != 0) {
                if (ANY_NAMESPACE.equals(qName.getNs())) {
                    return -1;
                }
                return iCompareTo;
            }
        }
        String localName = getLocalName();
        int iCompareTo2 = localName.compareTo(qName.getLocalName());
        if (iCompareTo2 == 0 || !"*".equals(localName)) {
            return iCompareTo2;
        }
        return -1;
    }
}
