package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Comments extends Element {
    public static final ElementKey<Void, Comments> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "comments"), Void.class, Comments.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).addElement(FeedLink.KEY).setRequired(true);
        }
    }

    public Comments() {
        super(KEY);
    }

    protected Comments(ElementKey<?, ? extends Comments> elementKey) {
        super(elementKey);
    }

    protected Comments(ElementKey<?, ? extends Comments> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Comments lock() {
        return (Comments) super.lock();
    }

    public FeedLink getFeedLink() {
        return (FeedLink) super.getElement(FeedLink.KEY);
    }

    public Comments setFeedLink(FeedLink feedLink) {
        super.setElement(FeedLink.KEY, feedLink);
        return this;
    }

    public boolean hasFeedLink() {
        return super.hasElement(FeedLink.KEY);
    }
}
