package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.extensions.Email;
import com.google.gdata.data.youtube.YtStatus;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_FRIEND)
public class FriendEntry extends BaseEntry<FriendEntry> {
    public static final String[] CATEGORIES = {YouTubeNamespace.CONTACT_LIST_SCHEME};

    public FriendEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_FRIEND);
    }

    public FriendEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_FRIEND);
    }

    public String getUsername() {
        YtUsername ytUsername = (YtUsername) getExtension(YtUsername.class);
        if (ytUsername == null) {
            return null;
        }
        return ytUsername.getContent();
    }

    public void setUsername(String str) {
        if (str == null) {
            removeExtension(YtUsername.class);
        } else {
            setExtension(new YtUsername(str));
        }
    }

    public void setStatus(YtStatus.Value value) {
        if (value == null) {
            removeExtension(YtStatus.class);
        } else {
            setExtension(new YtStatus(value));
        }
    }

    public YtStatus.Value getStatus() {
        YtStatus ytStatus = (YtStatus) getExtension(YtStatus.class);
        if (ytStatus == null) {
            return null;
        }
        return ytStatus.getStatus();
    }

    public String getUserProfileLink() {
        Link link = getLink(ILink.Rel.RELATED, ILink.Type.ATOM);
        if (link == null) {
            return null;
        }
        return link.getHref();
    }

    public void addUserProfileLink(String str) {
        Link link = new Link();
        link.setRel(ILink.Rel.RELATED);
        link.setType(ILink.Type.ATOM);
        link.setHref(str);
        getLinks().add(link);
    }

    public Email getEmail() {
        return (Email) getExtension(Email.class);
    }

    public void setEmail(Email email) {
        if (email == null) {
            removeExtension(Email.class);
        } else {
            setExtension(email);
        }
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(FriendEntry.class, YtStatus.class);
        extensionProfile.declare(FriendEntry.class, YtUsername.class);
        ExtensionDescription defaultDescription = Email.getDefaultDescription();
        defaultDescription.setRepeatable(false);
        extensionProfile.declare(FriendEntry.class, defaultDescription);
        extensionProfile.declareAdditionalNamespace(Namespaces.gNs);
        extensionProfile.declareArbitraryXmlExtension(FriendEntry.class);
    }
}
