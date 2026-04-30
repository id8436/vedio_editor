package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.PlainTextConstruct;
import com.google.gdata.data.TextContent;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_COMPLAINT)
public class ComplaintEntry extends BaseEntry<ComplaintEntry> {
    public static final String[] CATEGORIES = {YouTubeNamespace.COMPLAINT_REASON_SCHEME};

    public ComplaintEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_COMPLAINT);
    }

    public ComplaintEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_COMPLAINT);
    }

    public void addVideoUrl(String str) {
        Link link = new Link();
        link.setRel(ILink.Rel.RELATED);
        link.setType(ILink.Type.ATOM);
        link.setHref(str);
        getLinks().add(link);
    }

    public String getVideoUrl() {
        Link link = getLink(ILink.Rel.RELATED, ILink.Type.ATOM);
        if (link == null) {
            return null;
        }
        return link.getHref();
    }

    public void setComment(String str) {
        setContent(str == null ? null : new PlainTextConstruct(str));
    }

    public String getComment() {
        if (getContent() instanceof TextContent) {
            return ((TextContent) getContent()).getContent().getPlainText();
        }
        return null;
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declareArbitraryXmlExtension(BaseEntry.class);
    }
}
