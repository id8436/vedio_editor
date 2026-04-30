package com.google.gdata.data.extensions;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ExtensionVisitor;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Comments extends ExtensionPoint implements Extension {
    protected FeedLink<?> feedLink;

    public FeedLink<?> getFeedLink() {
        return this.feedLink;
    }

    public void setFeedLink(FeedLink<?> feedLink) {
        this.feedLink = feedLink;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Comments.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName("comments");
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.ExtensionPoint
    protected void visitChildren(ExtensionVisitor extensionVisitor) throws ExtensionVisitor.StoppedException {
        if (this.feedLink != null) {
            visitChild(extensionVisitor, this.feedLink);
        }
        super.visitChildren(extensionVisitor);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        generateStartElement(xmlWriter, Namespaces.gNs, "comments", null, null);
        if (this.feedLink != null) {
            this.feedLink.generate(xmlWriter, extensionProfile);
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, "comments");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Comments.this, extensionProfile, Comments.class);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (Comments.this.feedLink == null) {
                throw new ParseException(CoreErrorDomain.ERR.commentsFeedLinkRequired);
            }
            super.processEndElement();
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (!str.equals("http://schemas.google.com/g/2005") || !str2.equals("feedLink")) {
                return super.getChildHandler(str, str2, attributes);
            }
            Comments.this.feedLink = new FeedLink<>();
            return Comments.this.feedLink.getHandler(this.extProfile, str, str2, attributes);
        }
    }
}
