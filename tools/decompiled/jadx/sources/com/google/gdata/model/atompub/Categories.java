package com.google.gdata.model.atompub;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.google.common.collect.Maps;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.atom.Category;
import com.google.gdata.util.Namespaces;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Categories extends Element {
    public static final ElementKey<Void, Categories> KEY = ElementKey.of(new QName(Namespaces.atomPubStandardNs, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCategoriesNodeName), Void.class, Categories.class);
    public static final AttributeKey<Fixed> FIXED = AttributeKey.of(new QName(null, "fixed"), Fixed.class);
    public static final AttributeKey<String> HREF = AttributeKey.of(new QName(null, "href"), String.class);
    public static final AttributeKey<String> SCHEME = AttributeKey.of(new QName(null, "scheme"), String.class);

    public enum Fixed {
        NO,
        YES;

        private static final Map<String, Fixed> VALUE_MAP = Maps.newHashMap();

        static {
            for (Fixed fixed : values()) {
                VALUE_MAP.put(fixed.toString(), fixed);
            }
        }

        @Override // java.lang.Enum
        public String toString() {
            return name().toLowerCase();
        }

        public static Fixed fromString(String str) {
            return VALUE_MAP.get(str);
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(FIXED);
            elementCreatorBuild.addAttribute(HREF);
            elementCreatorBuild.addAttribute(SCHEME);
            elementCreatorBuild.addElement(Category.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
        }
    }

    public Categories() {
        super(KEY);
    }

    protected Categories(ElementKey<?, ? extends Categories> elementKey) {
        super(elementKey);
    }

    protected Categories(ElementKey<?, ? extends Categories> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Categories lock() {
        return (Categories) super.lock();
    }

    public List<Category> getCategories() {
        return super.getElements(Category.KEY);
    }

    public Categories addCategory(Category category) {
        super.addElement(Category.KEY, category);
        return this;
    }

    public boolean removeCategory(Category category) {
        return super.removeElement(category);
    }

    public void clearCategories() {
        super.removeElement(Category.KEY);
    }

    public boolean hasCategories() {
        return super.hasElement(Category.KEY);
    }

    public Fixed getFixed() {
        return (Fixed) super.getAttributeValue(FIXED);
    }

    public Categories setFixed(Fixed fixed) {
        super.setAttributeValue(FIXED, fixed);
        return this;
    }

    public boolean hasFixed() {
        return super.hasAttribute(FIXED);
    }

    public String getHref() {
        return (String) super.getAttributeValue(HREF);
    }

    public Categories setHref(String str) {
        super.setAttributeValue(HREF, str);
        return this;
    }

    public boolean hasHref() {
        return super.hasAttribute(HREF);
    }

    public String getScheme() {
        return (String) super.getAttributeValue(SCHEME);
    }

    public Categories setScheme(String str) {
        super.setAttributeValue(SCHEME, str);
        return this;
    }

    public boolean hasScheme() {
        return super.hasAttribute(SCHEME);
    }
}
