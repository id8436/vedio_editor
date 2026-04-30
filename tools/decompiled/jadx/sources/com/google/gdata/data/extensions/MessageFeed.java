package com.google.gdata.data.extensions;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/g/2005#message")
public class MessageFeed extends BaseFeed<MessageFeed, MessageEntry> {
    public MessageFeed() {
        super(MessageEntry.class);
        getCategories().add(MessageEntry.MESSAGE_CATEGORY);
    }

    public MessageFeed(BaseFeed<?, ?> baseFeed) {
        super(MessageEntry.class, baseFeed);
        getCategories().add(MessageEntry.MESSAGE_CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
