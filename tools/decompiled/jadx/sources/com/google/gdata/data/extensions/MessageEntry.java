package com.google.gdata.data.extensions;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/g/2005#message")
public class MessageEntry extends BaseEntry<MessageEntry> {
    public static final String MESSAGE_KIND = "http://schemas.google.com/g/2005#message";
    public static final Category MESSAGE_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/g/2005#message");
    public static final Category STARRED_CATEGORY = new Category("http://schemas.google.com/g/2005", "http://schemas.google.com/g/2005#message.starred");
    public static final Category UNREAD_CATEGORY = new Category("http://schemas.google.com/g/2005", "http://schemas.google.com/g/2005#message.unread");
    public static final Category CHAT_CATEGORY = new Category("http://schemas.google.com/g/2005", "http://schemas.google.com/g/2005#message.chat");
    public static final Category SPAM_CATEGORY = new Category("http://schemas.google.com/g/2005", "http://schemas.google.com/g/2005#message.spam");
    public static final Category SENT_CATEGORY = new Category("http://schemas.google.com/g/2005", "http://schemas.google.com/g/2005#message.sent");
    public static final Category INBOX_CATEGORY = new Category("http://schemas.google.com/g/2005", "http://schemas.google.com/g/2005#message.inbox");

    public MessageEntry() {
        getCategories().add(MESSAGE_CATEGORY);
    }

    public MessageEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        getCategories().add(MESSAGE_CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(MessageEntry.class, Rating.getDefaultDescription(false));
        extensionProfile.declare(MessageEntry.class, When.getDefaultDescription(false));
        extensionProfile.declare(MessageEntry.class, GeoPt.getDefaultDescription(false));
        extensionProfile.declare(MessageEntry.class, Who.getDefaultDescription());
    }

    public Rating getRating() {
        return (Rating) getExtension(Rating.class);
    }

    public void setRating(Rating rating) {
        setExtension(rating);
    }

    public When getTime() {
        return (When) getExtension(When.class);
    }

    public void setTime(When when) {
        setExtension(when);
    }

    public GeoPt getGeoPt() {
        return (GeoPt) getExtension(GeoPt.class);
    }

    public void setGeoPt(GeoPt geoPt) {
        setExtension(geoPt);
    }

    public List<Who> getWhoList() {
        return getRepeatingExtension(Who.class);
    }
}
