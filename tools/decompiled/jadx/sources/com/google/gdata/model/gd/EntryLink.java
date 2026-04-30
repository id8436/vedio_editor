package com.google.gdata.model.gd;

import com.google.gdata.data.ILink;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.atom.Entry;
import com.google.gdata.util.ContentType;

/* JADX INFO: loaded from: classes3.dex */
public class EntryLink extends Element implements ILink {
    public static final ElementKey<Void, EntryLink> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "entryLink"), EntryLink.class);
    public static final AttributeKey<String> HREF = AttributeKey.of(new QName("href"));
    public static final AttributeKey<Boolean> READ_ONLY = AttributeKey.of(new QName("readOnly"), Boolean.class);
    public static final AttributeKey<String> REL = AttributeKey.of(new QName("rel"));

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(REL);
            elementCreatorBuild.addAttribute(HREF);
            elementCreatorBuild.addAttribute(READ_ONLY);
            elementCreatorBuild.addElement(Entry.KEY);
        }
    }

    public EntryLink() {
        super(KEY);
    }

    protected EntryLink(ElementKey<?, ? extends EntryLink> elementKey) {
        super(elementKey);
    }

    protected EntryLink(ElementKey<?, ? extends EntryLink> elementKey, Element element) {
        super(elementKey, element);
    }

    public Entry getEntry() {
        return (Entry) getElement(Entry.KEY);
    }

    public void setEntry(Entry entry) {
        setElement(Entry.KEY, entry);
    }

    public boolean hasEntry() {
        return hasElement(Entry.KEY);
    }

    @Override // com.google.gdata.data.Reference
    public String getHref() {
        return (String) getAttributeValue(HREF);
    }

    @Override // com.google.gdata.data.Reference
    public void setHref(String str) {
        setAttributeValue(HREF, str);
    }

    public boolean hasHref() {
        return getHref() != null;
    }

    public Boolean getReadOnly() {
        return (Boolean) getAttributeValue(READ_ONLY);
    }

    public void setReadOnly(Boolean bool) {
        setAttributeValue(READ_ONLY, bool);
    }

    public boolean hasReadOnly() {
        return getReadOnly() != null;
    }

    @Override // com.google.gdata.data.ILink
    public String getRel() {
        return (String) getAttributeValue(REL);
    }

    @Override // com.google.gdata.data.ILink
    public void setRel(String str) {
        setAttributeValue(REL, str);
    }

    public boolean hasRel() {
        return getRel() != null;
    }

    @Override // com.google.gdata.model.Element
    public String toString() {
        return "{EntryLink href=" + ((String) getAttributeValue(HREF)) + " readOnly=" + getAttributeValue(READ_ONLY) + " rel=" + ((String) getAttributeValue(REL)) + "}";
    }

    @Override // com.google.gdata.data.ILink
    public String getType() {
        return ContentType.getAtomFeed().toString();
    }

    @Override // com.google.gdata.data.ILink
    public void setType(String str) {
        throw new UnsupportedOperationException("Type property not modifiable in " + FeedLink.class.getSimpleName());
    }
}
