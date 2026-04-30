package com.google.gdata.data.extensions;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.extensions.BaseEventEntry;
import com.google.gdata.data.extensions.BaseEventFeed;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseEventFeed<F extends BaseEventFeed<F, E>, E extends BaseEventEntry<E>> extends BaseFeed<F, E> {
    public BaseEventFeed(Class<E> cls) {
        super(cls);
        getCategories().add(EventEntry.EVENT_CATEGORY);
    }

    public BaseEventFeed(Class<E> cls, BaseFeed<?, ?> baseFeed) {
        super(cls, baseFeed);
        getCategories().add(EventEntry.EVENT_CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(BaseEventFeed.class, Where.getDefaultDescription());
        super.declareExtensions(extensionProfile);
    }
}
