package com.google.gdata.model.gd;

import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.atom.Category;
import com.google.gdata.model.atom.Feed;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class EventFeed extends Feed {
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/g/2005#event").lock();
    public static final ElementKey<Void, EventFeed> KEY = ElementKey.of(Feed.KEY.getId(), Void.class, EventFeed.class);
    public static final String KIND = "http://schemas.google.com/g/2005#event";

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            Feed.registerMetadata(metadataRegistry);
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addUndeclaredElementMarker();
            elementCreatorBuild.addElement(EventEntry.KEY);
            metadataRegistry.adapt(Feed.KEY, "http://schemas.google.com/g/2005#event", KEY);
        }
    }

    public EventFeed() {
        super(KEY);
        addCategory(CATEGORY);
    }

    public EventFeed(Feed feed) {
        super(KEY, feed);
    }

    protected EventFeed(ElementKey<?, ? extends EventFeed> elementKey) {
        super(elementKey);
    }

    protected EventFeed(ElementKey<?, ? extends EventFeed> elementKey, Feed feed) {
        super(elementKey, feed);
    }

    @Override // com.google.gdata.model.Element
    public EventFeed lock() {
        return (EventFeed) super.lock();
    }

    @Override // com.google.gdata.model.atom.Feed, com.google.gdata.data.IFeed
    public List<? extends EventEntry> getEntries() {
        return getEntries(EventEntry.KEY);
    }
}
