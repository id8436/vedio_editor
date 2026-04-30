package com.google.gdata.data.media;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.Service;
import com.google.gdata.client.media.MediaService;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Link;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MediaFeed<F extends BaseFeed, E extends BaseEntry> extends BaseFeed<F, E> {
    protected MediaFeed(Class<? extends E> cls) {
        super(cls);
    }

    protected MediaFeed(Class<? extends E> cls, BaseFeed<?, ?> baseFeed) {
        super(cls, baseFeed);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.IAtom
    public void setService(Service service) {
        if (!(service instanceof MediaService)) {
            throw new IllegalArgumentException("Service does not support media");
        }
        super.setService(service);
    }

    public E insert(MediaSource mediaSource) throws IOException, ServiceException {
        return (E) insert(mediaSource, this.entryClass);
    }

    /* JADX WARN: Incorrect return type in method signature: <T:TE;>(Lcom/google/gdata/data/media/MediaSource;Ljava/lang/Class<TT;>;)TT; */
    protected BaseEntry insert(MediaSource mediaSource, Class cls) throws IOException, ServiceException {
        if (this.feedState.service == null) {
            throw new ServiceException(CoreErrorDomain.ERR.entryNotAssociated);
        }
        Link entryPostLink = getEntryPostLink();
        if (entryPostLink == null) {
            throw new UnsupportedOperationException("Media cannot be inserted");
        }
        return (BaseEntry) ((MediaService) this.feedState.service).insert(new URL(entryPostLink.getHref()), cls, mediaSource);
    }
}
