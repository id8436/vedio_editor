package com.google.gdata.data.extensions;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ExtensionVisitor;
import com.google.gdata.data.Feed;
import com.google.gdata.data.Link;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "feedLink", nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class FeedLink<F extends BaseFeed<?, ?>> extends Link {
    protected Integer countHint;
    protected BaseFeed<?, ?> feed;
    protected final Class<F> feedClass;
    protected boolean readOnly;

    public FeedLink() {
        this(Feed.class);
    }

    public FeedLink(Class<F> cls) {
        this.readOnly = false;
        this.feedClass = cls;
    }

    public boolean getReadOnly() {
        return this.readOnly;
    }

    public void setReadOnly(boolean z) {
        this.readOnly = z;
    }

    public Integer getCountHint() {
        return this.countHint;
    }

    public void setCountHint(Integer num) {
        this.countHint = num;
    }

    public F getFeed() {
        return (F) this.feed;
    }

    public void setFeed(F f2) {
        this.feed = f2;
    }

    public Class<F> getFeedClass() {
        return this.feedClass;
    }

    public static ExtensionDescription getDefaultDescription() {
        return ExtensionDescription.getDefaultDescription(FeedLink.class);
    }

    @Override // com.google.gdata.data.Link, com.google.gdata.data.ILink
    public String getType() {
        return ContentType.getAtomFeed().toString();
    }

    @Override // com.google.gdata.data.ExtensionPoint
    protected void visitChildren(ExtensionVisitor extensionVisitor) throws ExtensionVisitor.StoppedException {
        if (this.feed != null) {
            visitChild(extensionVisitor, this.feed);
        }
        super.visitChildren(extensionVisitor);
    }

    @Override // com.google.gdata.data.Link, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.rel != null) {
            arrayList.add(new XmlWriter.Attribute("rel", this.rel));
        }
        if (this.href != null) {
            arrayList.add(new XmlWriter.Attribute("href", this.href));
        }
        if (this.readOnly) {
            arrayList.add(new XmlWriter.Attribute("readOnly", "true"));
        }
        if (this.countHint != null) {
            arrayList.add(new XmlWriter.Attribute("countHint", this.countHint.toString()));
        }
        generateStartElement(xmlWriter, Namespaces.gNs, "feedLink", arrayList, null);
        if (this.feed != null) {
            ExtensionProfile feedLinkProfile = extensionProfile.getFeedLinkProfile();
            if (feedLinkProfile == null) {
                feedLinkProfile = extensionProfile;
            }
            this.feed.generateAtom(xmlWriter, feedLinkProfile);
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, "feedLink");
    }

    @Override // com.google.gdata.data.Link, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class Handler extends Link.AtomHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(extensionProfile, FeedLink.class);
        }

        @Override // com.google.gdata.data.Link.AtomHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("")) {
                if (str2.equals("readOnly")) {
                    FeedLink.this.readOnly = str3.equals("true");
                } else {
                    if (str2.equals("countHint")) {
                        try {
                            FeedLink.this.countHint = Integer.valueOf(str3);
                            return;
                        } catch (NumberFormatException e2) {
                            throw new ParseException(CoreErrorDomain.ERR.invalidCountHintAttribute, e2);
                        }
                    }
                    super.processAttribute(str, str2, str3);
                }
            }
        }

        @Override // com.google.gdata.data.Link.AtomHandler, com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (str.equals(Namespaces.atom) && str2.equals("feed")) {
                ExtensionProfile feedLinkProfile = this.extProfile.getFeedLinkProfile();
                ExtensionProfile extensionProfile = feedLinkProfile == null ? this.extProfile : feedLinkProfile;
                try {
                    FeedLink.this.feed = FeedLink.this.feedClass.newInstance();
                    BaseFeed<?, ?> baseFeed = FeedLink.this.feed;
                    baseFeed.getClass();
                    return new BaseFeed.FeedHandler(extensionProfile);
                } catch (IllegalAccessException e2) {
                    throw new ParseException(CoreErrorDomain.ERR.cantCreateFeed, e2);
                } catch (InstantiationException e3) {
                    throw new ParseException(CoreErrorDomain.ERR.cantCreateFeed, e3);
                }
            }
            return super.getChildHandler(str, str2, attributes);
        }
    }
}
