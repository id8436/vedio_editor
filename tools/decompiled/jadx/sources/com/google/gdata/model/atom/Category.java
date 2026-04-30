package com.google.gdata.model.atom;

import com.google.gdata.data.ICategory;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.common.base.Preconditions;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class Category extends Element implements ICategory {
    public static final ElementKey<Void, Category> KEY = ElementKey.of(new QName(Namespaces.atomNs, "category"), Category.class);
    public static final AttributeKey<String> SCHEME = AttributeKey.of(new QName("scheme"));
    public static final AttributeKey<String> TERM = AttributeKey.of(new QName("term"));
    public static final AttributeKey<String> LABEL = AttributeKey.of(new QName("label"));
    public static final AttributeKey<String> XML_LANG = AttributeKey.of(new QName(Namespaces.xmlNs, "lang"));
    private static final Pattern categoryPattern = Pattern.compile("(\\{([^\\}]+)\\})?(.+)");

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator cardinality = metadataRegistry.build(KEY).setCardinality(ElementMetadata.Cardinality.SET);
            cardinality.addAttribute(XML_LANG);
            cardinality.addAttribute(SCHEME);
            cardinality.addAttribute(TERM).setRequired(true);
            cardinality.addAttribute(LABEL);
        }
    }

    public Category() {
        super(KEY);
    }

    protected Category(ElementKey<?, ? extends Category> elementKey) {
        super(elementKey);
    }

    protected Category(ElementKey<?, ? extends Category> elementKey, Element element) {
        super(elementKey, element);
    }

    public Category(String str) {
        this();
        Matcher matcher = categoryPattern.matcher(str);
        if (!matcher.matches()) {
            throw new IllegalArgumentException("Invalid category: " + str);
        }
        if (matcher.group(2) != null) {
            setScheme(matcher.group(2));
        }
        setTerm(matcher.group(3));
    }

    public Category(String str, String str2) {
        this(str, str2, null);
    }

    public Category(String str, String str2, String str3) {
        this();
        setScheme(str);
        if (str2 == null) {
            throw new NullPointerException("Invalid term. Cannot be null");
        }
        setTerm(str2);
        setLabel(str3);
    }

    @Override // com.google.gdata.model.Element
    public Category lock() {
        return (Category) super.lock();
    }

    @Override // com.google.gdata.data.ICategory
    public String getScheme() {
        return (String) getAttributeValue(SCHEME);
    }

    public void setScheme(String str) {
        setAttributeValue(SCHEME, str);
    }

    @Override // com.google.gdata.data.ICategory
    public String getTerm() {
        return (String) getAttributeValue(TERM);
    }

    public void setTerm(String str) {
        Preconditions.checkNotNull(str, "Null category term");
        setAttributeValue(TERM, str);
    }

    @Override // com.google.gdata.data.ICategory
    public String getLabel() {
        return (String) getAttributeValue(LABEL);
    }

    public void setLabel(String str) {
        setAttributeValue(LABEL, str);
    }

    public String getLabelLang() {
        return (String) getAttributeValue(XML_LANG);
    }

    public void setLabelLang(String str) {
        setAttributeValue(XML_LANG, str);
    }

    @Override // com.google.gdata.model.Element
    protected Element narrow(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        return adapt(this, elementMetadata, getScheme());
    }

    @Override // com.google.gdata.model.Element
    public String toString() {
        StringBuilder sb = new StringBuilder();
        String scheme = getScheme();
        if (scheme != null) {
            sb.append("{");
            sb.append(scheme);
            sb.append("}");
        }
        sb.append(getTerm());
        String label = getLabel();
        if (label != null) {
            sb.append("(");
            sb.append(label);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (!(obj instanceof Category)) {
            return false;
        }
        Category category = (Category) obj;
        String scheme = getScheme();
        if (scheme == null) {
            if (category.getScheme() != null) {
                return false;
            }
        } else if (!scheme.equals(category.getScheme())) {
            return false;
        }
        String term = getTerm();
        if (term == null) {
            if (category.getTerm() != null) {
                return false;
            }
        } else if (!term.equals(category.getTerm())) {
            return false;
        }
        String label = getLabel();
        if (label == null) {
            if (category.getLabel() != null) {
                return false;
            }
        } else if (!label.equals(category.getLabel())) {
            return false;
        }
        return true;
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        String scheme = getScheme();
        int iHashCode = scheme != null ? scheme.hashCode() : 0;
        String term = getTerm();
        int i = (iHashCode + 629) * 37;
        int iHashCode2 = term != null ? term.hashCode() : 0;
        String label = getLabel();
        return ((iHashCode2 + i) * 37) + (label != null ? label.hashCode() : 0);
    }
}
