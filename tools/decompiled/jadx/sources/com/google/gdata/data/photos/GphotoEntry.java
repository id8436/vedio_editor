package com.google.gdata.data.photos;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.data.media.MediaEntry;
import com.google.gdata.data.photos.GphotoEntry;
import com.google.gdata.data.photos.impl.GphotoDataImpl;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class GphotoEntry<E extends GphotoEntry<E>> extends MediaEntry<E> implements AtomData, GphotoData {
    private final GphotoData delegate;

    public GphotoEntry() {
        this.delegate = new GphotoDataImpl(this);
    }

    protected GphotoEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        this.delegate = new GphotoDataImpl(this);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        this.delegate.declareExtensions(extensionProfile);
        super.declareExtensions(extensionProfile);
    }

    public Link getFeedLink() {
        return getLink(ILink.Rel.FEED, ILink.Type.ATOM);
    }

    public <F extends GphotoFeed<F>> F getFeed(Class<F> cls, String... strArr) throws IOException, ServiceException {
        String str;
        if (this.state.service == null) {
            throw new ServiceException("Entry is not associated with a GData service.");
        }
        Link feedLink = getFeedLink();
        if (feedLink == null) {
            throw new UnsupportedOperationException("Missing feed link.");
        }
        String href = feedLink.getHref();
        if (strArr == null || strArr.length <= 0) {
            str = href;
        } else {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < strArr.length; i++) {
                if (i > 0) {
                    sb.append(',');
                }
                sb.append(strArr[i]);
            }
            if (href.indexOf(63) == -1) {
                str = href + "?kind=" + ((Object) sb);
            } else {
                str = href + "&kind=" + ((Object) sb);
            }
        }
        return (F) this.state.service.getFeed(new URL(str), cls);
    }

    @Override // com.google.gdata.data.photos.GphotoData
    public String getGphotoId() {
        return this.delegate.getGphotoId();
    }

    @Override // com.google.gdata.data.photos.GphotoData
    public void setGphotoId(Long l) {
        this.delegate.setGphotoId(l);
    }

    @Override // com.google.gdata.data.photos.GphotoData
    public void setGphotoId(String str) {
        this.delegate.setGphotoId(str);
    }

    @Override // com.google.gdata.data.photos.AtomData
    public TextConstruct getDescription() {
        return getSummary();
    }

    @Override // com.google.gdata.data.photos.AtomData
    public void setDescription(TextConstruct textConstruct) {
        setSummary(textConstruct);
    }

    @Override // com.google.gdata.data.BaseEntry
    public void generateRss(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        TextConstruct summary = getSummary();
        if (summary != null) {
            try {
                setSummary(new SummaryTextConstruct(summary));
            } finally {
                if (summary != null) {
                    setSummary(summary);
                }
            }
        }
        super.generateRss(xmlWriter, extensionProfile);
    }

    @Override // com.google.gdata.data.BaseEntry
    public GphotoEntry<?> getAdaptedEntry() throws Kind.AdaptorException {
        return (GphotoEntry) super.getAdaptedEntry();
    }

    class SummaryTextConstruct extends TextConstruct {
        private final TextConstruct wrapped;

        public SummaryTextConstruct(TextConstruct textConstruct) {
            this.wrapped = textConstruct;
        }

        @Override // com.google.gdata.data.TextConstruct
        public void generateAtom(XmlWriter xmlWriter, String str) throws IOException {
            this.wrapped.generateRss(xmlWriter, "description", TextConstruct.RssFormat.FULL_HTML);
        }

        @Override // com.google.gdata.data.TextConstruct
        public void generateRss(XmlWriter xmlWriter, String str, TextConstruct.RssFormat rssFormat) throws IOException {
            this.wrapped.generateRss(xmlWriter, str, rssFormat);
        }

        @Override // com.google.gdata.data.TextConstruct, com.google.gdata.data.ITextConstruct
        public String getPlainText() {
            return this.wrapped.getPlainText();
        }

        @Override // com.google.gdata.data.TextConstruct, com.google.gdata.data.ITextConstruct
        public int getType() {
            return this.wrapped.getType();
        }

        @Override // com.google.gdata.data.TextConstruct
        public boolean isEmpty() {
            return this.wrapped.isEmpty();
        }
    }
}
