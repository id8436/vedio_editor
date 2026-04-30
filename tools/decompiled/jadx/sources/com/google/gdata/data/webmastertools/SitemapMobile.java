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
@ExtensionDescription.Default(localName = SitemapMobile.SITEMAP_MOBILE, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
public class SitemapMobile extends ExtensionPoint {
    private static final String SITEMAP_MARKUP_LANG = "markup-language";
    public static final String SITEMAP_MOBILE = "sitemap-mobile";

    public void addMarkupLanguage(String str) {
        MarkupLanguageConstruct markupLanguageConstruct = new MarkupLanguageConstruct();
        markupLanguageConstruct.setValue(str);
        addRepeatingExtension(markupLanguageConstruct);
    }

    public Collection<String> getMarkupLanguages() {
        List repeatingExtension = getRepeatingExtension(MarkupLanguageConstruct.class);
        ArrayList arrayList = new ArrayList(repeatingExtension.size());
        Iterator it = repeatingExtension.iterator();
        while (it.hasNext()) {
            arrayList.add(((MarkupLanguageConstruct) it.next()).getValue());
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
            super(SitemapMobile.this, extensionProfile, SitemapMobile.class);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (str2 != SitemapMobile.SITEMAP_MARKUP_LANG) {
                return super.getChildHandler(str, str2, attributes);
            }
            MarkupLanguageConstruct markupLanguageConstruct = new MarkupLanguageConstruct();
            SitemapMobile.this.addRepeatingExtension(markupLanguageConstruct);
            return markupLanguageConstruct.getHandler(null, str, str2, attributes);
        }
    }

    @ExtensionDescription.Default(localName = SitemapMobile.SITEMAP_MARKUP_LANG, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    class MarkupLanguageConstruct extends ValueConstruct {
        public MarkupLanguageConstruct() {
            super(Namespaces.WT_NAMESPACE, SitemapMobile.SITEMAP_MARKUP_LANG, null);
        }
    }
}
