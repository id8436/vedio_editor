package com.google.gdata.data;

import com.adobe.xmp.XMPConst;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.Kind;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Category implements ICategory {
    public static final char SCHEME_PREFIX = '{';
    public static final char SCHEME_SUFFIX = '}';
    private static final Pattern categoryPattern = Pattern.compile("(\\{([^\\}]+)\\})?(.+)");
    protected String label;
    protected String labelLang;
    protected String scheme;
    protected String term;

    public Category() {
    }

    public Category(String str) {
        Matcher matcher = categoryPattern.matcher(str);
        if (!matcher.matches()) {
            throw new IllegalArgumentException("Invalid category: " + str);
        }
        if (matcher.group(2) != null) {
            this.scheme = matcher.group(2);
        }
        this.term = matcher.group(3);
    }

    public Category(String str, String str2) {
        this(str, str2, null);
    }

    public Category(String str, String str2, String str3) {
        this.scheme = str;
        if (str2 == null) {
            throw new NullPointerException("Invalid term. Cannot be null");
        }
        this.term = str2;
        this.label = str3;
    }

    @Override // com.google.gdata.data.ICategory
    public String getScheme() {
        return this.scheme;
    }

    public void setScheme(String str) {
        this.scheme = str;
    }

    @Override // com.google.gdata.data.ICategory
    public String getTerm() {
        return this.term;
    }

    public void setTerm(String str) {
        this.term = str;
    }

    @Override // com.google.gdata.data.ICategory
    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public String getLabelLang() {
        return this.labelLang;
    }

    public void setLabelLang(String str) {
        this.labelLang = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.scheme != null) {
            sb.append(SCHEME_PREFIX);
            sb.append(this.scheme);
            sb.append(SCHEME_SUFFIX);
        }
        sb.append(this.term);
        if (this.label != null) {
            sb.append("(");
            sb.append(this.label);
            sb.append(")");
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof Category) {
            return toString().equals(obj.toString());
        }
        return false;
    }

    public int hashCode() {
        return (((((this.scheme != null ? this.scheme.hashCode() : 0) + 629) * 37) + this.term.hashCode()) * 37) + (this.label != null ? this.label.hashCode() : 0);
    }

    public void generateAtom(XmlWriter xmlWriter) throws IOException {
        ArrayList arrayList = new ArrayList(3);
        if (this.scheme != null) {
            arrayList.add(new XmlWriter.Attribute("scheme", this.scheme));
        }
        if (this.term != null) {
            arrayList.add(new XmlWriter.Attribute("term", this.term));
        }
        if (this.label != null) {
            arrayList.add(new XmlWriter.Attribute("label", this.label));
        }
        if (this.labelLang != null) {
            arrayList.add(new XmlWriter.Attribute(XMPConst.XML_LANG, this.labelLang));
        }
        xmlWriter.simpleElement(Namespaces.atomNs, "category", arrayList, null);
    }

    public void generateRss(XmlWriter xmlWriter) throws IOException {
        ArrayList arrayList = new ArrayList(3);
        if (this.scheme != null) {
            arrayList.add(new XmlWriter.Attribute("domain", this.scheme));
        }
        if (this.labelLang != null) {
            arrayList.add(new XmlWriter.Attribute(XMPConst.XML_LANG, this.labelLang));
        }
        String str = this.term;
        if (this.term == null) {
            str = this.label;
        }
        xmlWriter.simpleElement(Namespaces.rssNs, "category", arrayList, str);
    }

    public class AtomHandler extends XmlParser.ElementHandler {
        Kind.Adaptable adaptable;
        Set<Category> categorySet;
        ExtensionProfile extProfile;

        public AtomHandler() {
        }

        public AtomHandler(ExtensionProfile extensionProfile, Set<Category> set, Kind.Adaptable adaptable) {
            this.extProfile = extensionProfile;
            this.categorySet = set;
            this.adaptable = adaptable;
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if (str.equals("") && str2.equals("scheme")) {
                Category.this.scheme = str3;
                return;
            }
            if (str.equals("") && str2.equals("term")) {
                Category.this.term = str3;
            } else if (str.equals("") && str2.equals("label")) {
                Category.this.label = str3;
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) {
            return null;
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (Category.this.term == null) {
                throw new ParseException(CoreErrorDomain.ERR.missingTermAttribute);
            }
            Category.this.labelLang = this.xmlLang;
            if (this.categorySet != null) {
                this.categorySet.add(Category.this);
            }
            if (this.adaptable != null && this.extProfile.isAutoExtending() && Kind.isKindCategory(Category.this)) {
                try {
                    Kind.Adaptor adaptor = Kind.getAdaptor(Category.this.term, this.adaptable);
                    if (adaptor != null) {
                        this.extProfile.addDeclarations(adaptor);
                    }
                } catch (Kind.AdaptorException e2) {
                    throw new ParseException(CoreErrorDomain.ERR.cantLoadKindAdaptor, e2);
                }
            }
        }
    }
}
