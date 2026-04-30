package com.google.gdata.model.gd;

import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.atom.Category;
import com.google.gdata.model.atom.Feed;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MessageFeed extends Feed {
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/g/2005#message").lock();
    public static final ElementKey<Void, MessageFeed> KEY = ElementKey.of(Feed.KEY.getId(), Void.class, MessageFeed.class);
    public static final String KIND = "http://schemas.google.com/g/2005#message";

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            Feed.registerMetadata(metadataRegistry);
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addUndeclaredElementMarker();
            elementCreatorBuild.addElement(MessageEntry.KEY);
            metadataRegistry.adapt(Feed.KEY, "http://schemas.google.com/g/2005#message", KEY);
        }
    }

    public MessageFeed() {
        super(KEY);
        addCategory(CATEGORY);
    }

    public MessageFeed(Feed feed) {
        super(KEY, feed);
    }

    protected MessageFeed(ElementKey<?, ? extends MessageFeed> elementKey) {
        super(elementKey);
    }

    protected MessageFeed(ElementKey<?, ? extends MessageFeed> elementKey, Feed feed) {
        super(elementKey, feed);
    }

    @Override // com.google.gdata.model.Element
    public MessageFeed lock() {
        return (MessageFeed) super.lock();
    }

    @Override // com.google.gdata.model.atom.Feed, com.google.gdata.data.IFeed
    public List<? extends MessageEntry> getEntries() {
        return getEntries(MessageEntry.KEY);
    }
}
