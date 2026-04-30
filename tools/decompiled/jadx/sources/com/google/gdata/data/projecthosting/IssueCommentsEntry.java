package com.google.gdata.data.projecthosting;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;

/* JADX INFO: loaded from: classes3.dex */
public class IssueCommentsEntry extends BaseEntry<IssueCommentsEntry> {
    public IssueCommentsEntry() {
    }

    public IssueCommentsEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(IssueCommentsEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(IssueCommentsEntry.class, IssuesLink.getDefaultDescription(false, true));
            extensionProfile.declare(IssueCommentsEntry.class, SendEmail.class);
            extensionProfile.declare(IssueCommentsEntry.class, Updates.class);
            new Updates().declareExtensions(extensionProfile);
        }
    }

    public SendEmail getSendEmail() {
        return (SendEmail) getExtension(SendEmail.class);
    }

    public void setSendEmail(SendEmail sendEmail) {
        if (sendEmail == null) {
            removeExtension(SendEmail.class);
        } else {
            setExtension(sendEmail);
        }
    }

    public boolean hasSendEmail() {
        return hasExtension(SendEmail.class);
    }

    public Updates getUpdates() {
        return (Updates) getExtension(Updates.class);
    }

    public void setUpdates(Updates updates) {
        if (updates == null) {
            removeExtension(Updates.class);
        } else {
            setExtension(updates);
        }
    }

    public boolean hasUpdates() {
        return hasExtension(Updates.class);
    }

    public Link getAtomRepliesLink() {
        return getLink("replies", ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{IssueCommentsEntry " + super.toString() + "}";
    }
}
