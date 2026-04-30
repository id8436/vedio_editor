package com.google.gdata.model.gd;

import com.google.gdata.data.ILink;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.atom.Feed;
import com.google.gdata.util.ContentType;

/* JADX INFO: loaded from: classes3.dex */
public class FeedLink extends Element implements ILink {
    public static final ElementKey<Void, FeedLink> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "feedLink"), FeedLink.class);
    public static final AttributeKey<Integer> COUNT_HINT = AttributeKey.of(new QName("countHint"), Integer.class);
    public static final AttributeKey<String> HREF = AttributeKey.of(new QName("href"));
    public static final AttributeKey<Boolean> READ_ONLY = AttributeKey.of(new QName("readOnly"), Boolean.class);
    public static final AttributeKey<String> REL = AttributeKey.of(new QName("rel"));

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(REL);
            elementCreatorBuild.addAttribute(HREF);
            elementCreatorBuild.addAttribute(READ_ONLY);
            elementCreatorBuild.addAttribute(COUNT_HINT);
            elementCreatorBuild.addElement(Feed.KEY);
        }
    }

    public FeedLink() {
        super(KEY);
    }

    protected FeedLink(ElementKey<?, ? extends FeedLink> elementKey) {
        super(elementKey);
    }

    protected FeedLink(ElementKey<?, ? extends FeedLink> elementKey, Element element) {
        super(elementKey, element);
    }

    public Integer getCountHint() {
        return (Integer) getAttributeValue(COUNT_HINT);
    }

    public void setCountHint(Integer num) {
        setAttributeValue(COUNT_HINT, num);
    }

    public boolean hasCountHint() {
        return getCountHint() != null;
    }

    public Feed getFeed() {
        return (Feed) getElement(Feed.KEY);
    }

    public void setFeed(Feed feed) {
        setElement(Feed.KEY, feed);
    }

    public boolean hasFeed() {
        return hasElement(Feed.KEY);
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
        return "{FeedLink countHint=" + getAttributeValue(COUNT_HINT) + " href=" + ((String) getAttributeValue(HREF)) + " readOnly=" + getAttributeValue(READ_ONLY) + " rel=" + ((String) getAttributeValue(REL)) + "}";
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
