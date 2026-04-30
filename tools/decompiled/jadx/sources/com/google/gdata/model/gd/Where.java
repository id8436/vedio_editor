package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Where extends Element {
    public static final ElementKey<Void, Where> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "where"), Void.class, Where.class);
    public static final AttributeKey<String> LABEL = AttributeKey.of(new QName(null, "label"), String.class);
    public static final AttributeKey<String> REL = AttributeKey.of(new QName(null, "rel"), String.class);
    public static final AttributeKey<String> VALUE_STRING = AttributeKey.of(new QName(null, "valueString"), String.class);

    public final class Rel {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#event", "http://schemas.google.com/g/2005#event.alternate", "http://schemas.google.com/g/2005#event.parking"};
        public static final String EVENT = "http://schemas.google.com/g/2005#event";
        public static final String EVENT_ALTERNATE = "http://schemas.google.com/g/2005#event.alternate";
        public static final String EVENT_PARKING = "http://schemas.google.com/g/2005#event.parking";

        public static String[] values() {
            return ALL_VALUES;
        }

        private Rel() {
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(LABEL);
            elementCreatorBuild.addAttribute(REL);
            elementCreatorBuild.addAttribute(VALUE_STRING);
            elementCreatorBuild.addElement(EntryLink.KEY);
        }
    }

    public Where() {
        super(KEY);
    }

    protected Where(ElementKey<?, ? extends Where> elementKey) {
        super(elementKey);
    }

    protected Where(ElementKey<?, ? extends Where> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Where lock() {
        return (Where) super.lock();
    }

    public EntryLink getEntryLink() {
        return (EntryLink) super.getElement(EntryLink.KEY);
    }

    public Where setEntryLink(EntryLink entryLink) {
        super.setElement(EntryLink.KEY, entryLink);
        return this;
    }

    public boolean hasEntryLink() {
        return super.hasElement(EntryLink.KEY);
    }

    public String getLabel() {
        return (String) super.getAttributeValue(LABEL);
    }

    public Where setLabel(String str) {
        super.setAttributeValue(LABEL, str);
        return this;
    }

    public boolean hasLabel() {
        return super.hasAttribute(LABEL);
    }

    public String getRel() {
        return (String) super.getAttributeValue(REL);
    }

    public Where setRel(String str) {
        super.setAttributeValue(REL, str);
        return this;
    }

    public boolean hasRel() {
        return super.hasAttribute(REL);
    }

    public String getValueString() {
        return (String) super.getAttributeValue(VALUE_STRING);
    }

    public Where setValueString(String str) {
        super.setAttributeValue(VALUE_STRING, str);
        return this;
    }

    public boolean hasValueString() {
        return super.hasAttribute(VALUE_STRING);
    }
}
