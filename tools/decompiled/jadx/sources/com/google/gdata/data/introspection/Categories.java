package com.google.gdata.data.introspection;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.Category;
import com.google.gdata.data.Category.AtomHandler;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Categories extends ExtensionPoint {
    private XmlNamespace atomPubNs = Namespaces.getAtomPubNs();
    private List<Category> categories;
    private String defaultScheme;
    private Boolean fixed;
    private String href;

    public Categories() {
    }

    public Categories(boolean z, String str, Category... categoryArr) {
        this.fixed = Boolean.valueOf(z);
        this.defaultScheme = str;
        if (categoryArr.length != 0) {
            this.categories = Arrays.asList(categoryArr);
        }
    }

    public Categories(String str) {
        this.href = str;
    }

    public boolean isFixed() {
        return this.fixed != null && this.fixed.booleanValue();
    }

    public String getDefaultScheme() {
        return this.defaultScheme;
    }

    public String getHref() {
        return this.href;
    }

    public List<Category> getCategoryList() {
        return this.categories;
    }

    public void addCategory(Category category) {
        if (this.categories == null) {
            this.categories = new ArrayList();
        }
        this.categories.add(category);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile, attributes);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.href = attributeHelper.consume("href", false);
        this.defaultScheme = attributeHelper.consume("scheme", false);
        String strConsume = attributeHelper.consume("fixed", false);
        if (strConsume != null) {
            if ("yes".equals(strConsume)) {
                this.fixed = true;
            } else if ("no".equals(strConsume)) {
                this.fixed = false;
            } else {
                ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidFixedAttribute);
                parseException.setInternalReason("Invalid value for fixed attribute:" + strConsume);
                throw parseException;
            }
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    public void validate() throws IllegalStateException {
        if (this.href != null) {
            if (this.fixed != null || this.defaultScheme != null || this.categories != null) {
                throw new IllegalStateException("The href attribute cannot be used with other attributes or nested category elements");
            }
        }
    }

    public void parseAtom(ExtensionProfile extensionProfile, XmlParser xmlParser) throws ParseException, IOException {
        xmlParser.parse(new Handler(extensionProfile, null), this.atomPubNs.getUri(), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCategoriesNodeName);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.fixed != null) {
            arrayList.add(new XmlWriter.Attribute("fixed", this.fixed.booleanValue() ? "yes" : "no"));
        }
        if (this.defaultScheme != null) {
            arrayList.add(new XmlWriter.Attribute("scheme", this.defaultScheme));
        }
        if (this.href != null) {
            arrayList.add(new XmlWriter.Attribute("href", this.href));
        }
        xmlWriter.startElement(this.atomPubNs, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCategoriesNodeName, arrayList, null);
        if (this.categories != null) {
            xmlWriter.startRepeatingElement();
            Iterator<Category> it = this.categories.iterator();
            while (it.hasNext()) {
                it.next().generateAtom(xmlWriter);
            }
            xmlWriter.endRepeatingElement();
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(this.atomPubNs, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCategoriesNodeName);
    }

    public class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile, Attributes attributes) {
            super(extensionProfile, Categories.class, attributes);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (!str.equals(Namespaces.atom) || !str2.equals("category")) {
                return super.getChildHandler(str, str2, attributes);
            }
            Category category = new Category();
            Categories.this.addCategory(category);
            category.getClass();
            return category.new AtomHandler();
        }
    }
}
