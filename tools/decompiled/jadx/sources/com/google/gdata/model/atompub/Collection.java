package com.google.gdata.model.atompub;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.common.collect.Lists;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.Service;
import com.google.gdata.data.Reference;
import com.google.gdata.data.introspection.ICollection;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.model.atom.Source;
import com.google.gdata.model.atom.TextContent;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.Version;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Collection extends Element implements Reference, ICollection {
    private final Version coreVersion;
    public static final ElementKey<Void, Collection> KEY = ElementKey.of(new QName(Namespaces.atomPubStandardNs, "collection"), Collection.class);
    public static final AttributeKey<String> HREF = AttributeKey.of(new QName("href"));
    public static final AttributeKey<String> TITLE = AttributeKey.of(new QName("title"));

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(TITLE).setVisible(false);
            elementCreatorBuild.addAttribute(HREF);
            elementCreatorBuild.addElement(Accept.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            elementCreatorBuild.addElement(Categories.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            elementCreatorBuild.addElement(Source.TITLE).setRequired(true);
        }
    }

    public Collection() {
        super(KEY);
        this.coreVersion = Service.getVersion();
    }

    protected Collection(ElementKey<?, ? extends Collection> elementKey) {
        super(elementKey);
        this.coreVersion = Service.getVersion();
    }

    protected Collection(ElementKey<?, ? extends Collection> elementKey, Element element) {
        super(elementKey, element);
        this.coreVersion = Service.getVersion();
    }

    public Collection(String str) {
        this();
        setHref(str);
    }

    public Collection(String str, TextContent textContent, String... strArr) {
        this();
        setHref(str);
        setTitle(textContent);
        for (String str2 : strArr) {
            addAccept(str2);
        }
    }

    public List<Accept> getAccepts() {
        List<Accept> elements = super.getElements(Accept.KEY);
        if (this.coreVersion.isCompatible(Service.Versions.V1)) {
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            for (Accept accept : elements) {
                String value = accept.getValue();
                if (value != null && value.indexOf(44) != -1) {
                    for (String str : value.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR)) {
                        arrayListNewArrayList.add(new Accept(str));
                    }
                } else {
                    arrayListNewArrayList.add(accept);
                }
            }
            return arrayListNewArrayList;
        }
        return elements;
    }

    @Override // com.google.gdata.data.introspection.ICollection
    public List<String> getAcceptList() {
        List<Accept> accepts = getAccepts();
        ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(accepts.size());
        Iterator<Accept> it = accepts.iterator();
        while (it.hasNext()) {
            arrayListNewArrayListWithCapacity.add(it.next().getValue());
        }
        return arrayListNewArrayListWithCapacity;
    }

    public Collection addAccept(Accept accept) {
        super.addElement(Accept.KEY, accept);
        return this;
    }

    public Collection addAccept(String str) {
        super.addElement(Accept.KEY, new Accept(str));
        return this;
    }

    public boolean removeAccept(Accept accept) {
        return super.removeElement(Accept.KEY, accept);
    }

    public boolean removeAccept(String str) {
        boolean z = false;
        Iterator<Accept> it = getAccepts().iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                Accept next = it.next();
                if (str.equals(next.getValue())) {
                    super.removeElement(Accept.KEY, next);
                    z = true;
                } else {
                    z = z2;
                }
            } else {
                return z2;
            }
        }
    }

    public boolean hasAccepts() {
        return super.hasElement(Accept.KEY);
    }

    public List<Categories> getCategorieses() {
        return super.getElements(Categories.KEY);
    }

    public Collection addCategories(Categories categories) {
        super.addElement(Categories.KEY, categories);
        return this;
    }

    public boolean hasCategorieses() {
        return super.hasElement(Categories.KEY);
    }

    @Override // com.google.gdata.data.Reference
    public String getHref() {
        return (String) super.getAttributeValue(HREF);
    }

    @Override // com.google.gdata.data.Reference
    public void setHref(String str) {
        setAttributeValue(HREF, str);
    }

    public boolean hasHref() {
        return getHref() != null;
    }

    @Override // com.google.gdata.data.introspection.ICollection
    public TextContent getTitle() {
        return (TextContent) super.getElement(Source.TITLE);
    }

    public Collection setTitle(TextContent textContent) {
        setAttributeValue(TITLE, textContent == null ? null : textContent.getPlainText());
        super.setElement(Source.TITLE, textContent);
        return this;
    }

    public boolean hasTitle() {
        return super.hasElement(Source.TITLE);
    }

    @Override // com.google.gdata.model.Element
    public Element resolve(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        String str = (String) getAttributeValue(TITLE);
        TextContent textContent = (TextContent) getElement(Source.TITLE);
        if (str != null) {
            if (textContent == null) {
                addElement(Source.TITLE, TextContent.plainText(str));
            } else if (!str.equals(textContent.getPlainText())) {
                validationContext.addError(this, CoreErrorDomain.ERR.duplicateTitle);
            }
        } else if (textContent != null) {
            setAttributeValue(TITLE, textContent.getPlainText());
        }
        if (this.coreVersion.isCompatible(Service.Versions.V1)) {
            List<Accept> accepts = getAccepts();
            if (accepts.size() > 1) {
                StringBuilder sb = new StringBuilder();
                for (Accept accept : accepts) {
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    sb.append(accept.getValue());
                }
                removeElement(Accept.KEY);
                addAccept(sb.toString());
            }
        }
        return super.resolve(elementMetadata, validationContext);
    }

    @Override // com.google.gdata.model.Element
    public String toString() {
        return "{Collection href=" + ((String) getAttributeValue(HREF)) + "}";
    }
}
