package com.google.gdata.data.photos;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.data.media.MediaFeed;
import com.google.gdata.data.photos.GphotoFeed;
import com.google.gdata.data.photos.impl.GphotoDataImpl;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class GphotoFeed<F extends GphotoFeed> extends MediaFeed<F, GphotoEntry> implements AtomData, GphotoData {
    private final GphotoData delegate;

    public GphotoFeed() {
        this((Class<? extends GphotoEntry>) GphotoEntry.class);
    }

    protected GphotoFeed(Class<? extends GphotoEntry> cls) {
        super(cls);
        this.delegate = new GphotoDataImpl(this);
    }

    public GphotoFeed(BaseFeed<?, ?> baseFeed) {
        this(GphotoEntry.class, baseFeed);
    }

    protected GphotoFeed(Class<? extends GphotoEntry> cls, BaseFeed baseFeed) {
        super(cls, baseFeed);
        this.delegate = new GphotoDataImpl(this);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        this.delegate.declareExtensions(extensionProfile);
        super.declareExtensions(extensionProfile);
    }

    @Override // com.google.gdata.data.BaseFeed
    public void generateRss(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        Link link = getLink(ILink.Rel.PREVIOUS, ILink.Type.ATOM);
        Link link2 = getLink(ILink.Rel.NEXT, ILink.Type.ATOM);
        if (link != null) {
            this.delegate.addRepeatingExtension(new RssLink(link));
        }
        if (link2 != null) {
            this.delegate.addRepeatingExtension(new RssLink(link2));
        }
        super.generateRss(xmlWriter, extensionProfile);
    }

    final class RssLink implements Extension {
        private final Link link;

        public RssLink(Link link) {
            this.link = link;
        }

        @Override // com.google.gdata.data.Extension
        public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
            this.link.generateAtom(xmlWriter, extensionProfile);
        }

        @Override // com.google.gdata.data.Extension
        public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
            return null;
        }
    }

    @Override // com.google.gdata.data.photos.AtomData
    public TextConstruct getDescription() {
        return getSubtitle();
    }

    @Override // com.google.gdata.data.photos.AtomData
    public void setDescription(TextConstruct textConstruct) {
        setSubtitle(textConstruct);
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
}
