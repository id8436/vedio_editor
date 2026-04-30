package com.google.gdata.data.blogger;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.threading.InReplyTo;

/* JADX INFO: loaded from: classes3.dex */
public class CommentEntry extends BaseEntry<CommentEntry> {
    public CommentEntry() {
    }

    public CommentEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(CommentEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(CommentEntry.class, InReplyTo.class);
        }
    }

    public InReplyTo getInReplyTo() {
        return (InReplyTo) getExtension(InReplyTo.class);
    }

    public void setInReplyTo(InReplyTo inReplyTo) {
        if (inReplyTo == null) {
            removeExtension(InReplyTo.class);
        } else {
            setExtension(inReplyTo);
        }
    }

    public boolean hasInReplyTo() {
        return hasExtension(InReplyTo.class);
    }

    public Link getRepliesLink() {
        return getLink("replies", ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{CommentEntry " + super.toString() + "}";
    }
}
