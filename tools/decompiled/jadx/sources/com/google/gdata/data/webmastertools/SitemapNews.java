package com.google.gdata.data.webmastertools;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = SitemapNews.SITEMAP_NEWS, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
public class SitemapNews extends ExtensionPoint {
    public static final String SITEMAP_NEWS = "sitemap-news";
    private static final String SITEMAP_PUBLICATION_LABEL = "publication-label";

    public void addPublicationLabel(String str) {
        PublicationLabelConstruct publicationLabelConstruct = new PublicationLabelConstruct();
        publicationLabelConstruct.setValue(str);
        addRepeatingExtension(publicationLabelConstruct);
    }

    public Collection<String> getPublicationLabels() {
        List repeatingExtension = getRepeatingExtension(PublicationLabelConstruct.class);
        ArrayList arrayList = new ArrayList(repeatingExtension.size());
        Iterator it = repeatingExtension.iterator();
        while (it.hasNext()) {
            arrayList.add(((PublicationLabelConstruct) it.next()).getValue());
        }
        return arrayList;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(getClass());
        xmlWriter.startElement(defaultDescription.getNamespace(), defaultDescription.getLocalName(), null, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement();
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(SitemapNews.this, extensionProfile, SitemapNews.class);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (str2 != SitemapNews.SITEMAP_PUBLICATION_LABEL) {
                return super.getChildHandler(str, str2, attributes);
            }
            PublicationLabelConstruct publicationLabelConstruct = new PublicationLabelConstruct();
            SitemapNews.this.addRepeatingExtension(publicationLabelConstruct);
            return publicationLabelConstruct.getHandler(null, str, str2, attributes);
        }
    }

    @ExtensionDescription.Default(localName = SitemapNews.SITEMAP_PUBLICATION_LABEL, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    class PublicationLabelConstruct extends ValueConstruct {
        public PublicationLabelConstruct() {
            super(Namespaces.WT_NAMESPACE, SitemapNews.SITEMAP_PUBLICATION_LABEL, null);
        }
    }
}
