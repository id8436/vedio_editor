package com.google.gdata.data.media;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.Service;
import com.google.gdata.client.media.MediaService;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Content;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.MediaContent;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.URL;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MediaEntry<E extends BaseEntry<E>> extends BaseEntry<E> implements IMediaEntry {
    protected MediaEntry() {
    }

    protected MediaEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.BaseEntry, com.google.gdata.data.IAtom
    public void setService(Service service) {
        if (!(service instanceof MediaService)) {
            throw new IllegalArgumentException("Service does not support media");
        }
        super.setService(service);
    }

    @Override // com.google.gdata.data.media.IMediaEntry
    public void setMediaSource(MediaSource mediaSource) {
        MediaContent mediaContent;
        if (this.state.content == null) {
            mediaContent = new MediaContent();
            this.state.content = mediaContent;
        } else if (this.state.content instanceof MediaContent) {
            mediaContent = (MediaContent) this.state.content;
        } else {
            throw new IllegalArgumentException("Cannot set media source on entry with existing non-MediaContent: " + this.state.content);
        }
        mediaContent.setMediaSource(mediaSource);
        mediaContent.setMimeType(new ContentType(mediaSource.getContentType()));
    }

    @Override // com.google.gdata.data.media.IMediaEntry
    public MediaSource getMediaSource() {
        MediaContent mediaContent;
        if (!(this.state.content instanceof MediaContent) || (mediaContent = (MediaContent) this.state.content) == null) {
            return null;
        }
        return mediaContent.getMediaSource();
    }

    @Override // com.google.gdata.data.BaseEntry, com.google.gdata.data.IEntry
    public Link getMediaEditLink() {
        Link link = getLink(ILink.Rel.MEDIA_EDIT, (String) null);
        if (link == null) {
            return getLink(ILink.Rel.MEDIA_EDIT_BACKCOMPAT, (String) null);
        }
        return link;
    }

    public E updateMedia(boolean z) throws IOException, ServiceException {
        MediaSource mediaSource = getMediaSource();
        if (mediaSource == null) {
            throw new NullPointerException("Must supply media source");
        }
        if (this.state.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.entryNotAssociated);
        }
        Link mediaEditLink = getMediaEditLink();
        if (mediaEditLink == null) {
            throw new UnsupportedOperationException("Media cannot be updated");
        }
        URL url = new URL(mediaEditLink.getHref());
        MediaService mediaService = (MediaService) this.state.service;
        return !z ? (E) mediaService.updateMedia(url, getClass(), mediaSource) : (E) mediaService.updateMedia(url, this);
    }

    @Override // com.google.gdata.data.BaseEntry
    protected Content.ChildHandlerInfo getContentHandlerInfo(ExtensionProfile extensionProfile, Attributes attributes) throws ParseException, IOException {
        return MediaContent.getChildHandler(extensionProfile, attributes);
    }
}
