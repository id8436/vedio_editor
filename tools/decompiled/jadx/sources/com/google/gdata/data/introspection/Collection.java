package com.google.gdata.data.introspection;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.Service;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.PlainTextConstruct;
import com.google.gdata.data.Reference;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.data.introspection.Categories.Handler;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.Version;
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
public class Collection extends ExtensionPoint implements Reference, ICollection {
    private List<String> accepts;
    private XmlNamespace atomPubNs;
    private List<Categories> categoriesList;
    private Version coreVersion;
    private String href;
    private TextConstruct title;

    public Collection() {
        this.coreVersion = Service.getVersion();
        this.atomPubNs = Namespaces.getAtomPubNs();
        this.accepts = new ArrayList();
        this.categoriesList = new ArrayList();
    }

    public Collection(String str) {
        this(str, null);
    }

    public Collection(String str, TextConstruct textConstruct) {
        this.coreVersion = Service.getVersion();
        this.atomPubNs = Namespaces.getAtomPubNs();
        this.accepts = new ArrayList();
        this.categoriesList = new ArrayList();
        this.href = str;
        this.title = textConstruct;
    }

    public Collection(String str, TextConstruct textConstruct, String... strArr) {
        this(str, textConstruct);
        this.accepts = Arrays.asList(strArr);
    }

    public static String getAtomEntryAcceptType() {
        return Service.getVersion().isCompatible(Service.Versions.V1) ? "entry" : "application/atom+xml;type=entry";
    }

    @Override // com.google.gdata.data.introspection.ICollection
    public TextConstruct getTitle() {
        return this.title;
    }

    public void setTitle(TextConstruct textConstruct) {
        this.title = textConstruct;
    }

    @Override // com.google.gdata.data.Reference
    public String getHref() {
        return this.href;
    }

    @Override // com.google.gdata.data.Reference
    public void setHref(String str) {
        this.href = str;
    }

    public String getType() {
        return ContentType.getAtomFeed().toString();
    }

    @Override // com.google.gdata.data.introspection.ICollection
    public List<String> getAcceptList() {
        return this.accepts;
    }

    public void addAccept(String str) {
        this.accepts.add(str);
    }

    public List<Categories> getCategoriesList() {
        return this.categoriesList;
    }

    public void addCategories(Categories categories) {
        this.categoriesList.add(categories);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList(1);
        if (this.coreVersion.isCompatible(Service.Versions.V1)) {
            arrayList.add(new XmlWriter.Attribute("title", this.title.getPlainText()));
        }
        arrayList.add(new XmlWriter.Attribute("href", this.href));
        xmlWriter.startElement(this.atomPubNs, "collection", arrayList, null);
        if (this.coreVersion.isCompatible(Service.Versions.V1)) {
            if (this.accepts != null) {
                StringBuffer stringBuffer = new StringBuffer();
                for (String str : this.accepts) {
                    if (stringBuffer.length() != 0) {
                        stringBuffer.append(',');
                    }
                    stringBuffer.append(str);
                }
                xmlWriter.simpleElement(this.atomPubNs, "accept", null, stringBuffer.toString());
            }
        } else {
            if (this.title != null) {
                this.title.generateAtom(xmlWriter, "title");
            }
            for (String str2 : this.accepts) {
                if (this.accepts != null) {
                    xmlWriter.simpleElement(this.atomPubNs, "accept", null, str2);
                }
            }
            Iterator<Categories> it = getCategoriesList().iterator();
            while (it.hasNext()) {
                it.next().generate(xmlWriter, extensionProfile);
            }
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(this.atomPubNs, "collection");
    }

    @Override // com.google.gdata.data.AbstractExtension
    public void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.href = attributeHelper.consume("href", true);
        if (this.coreVersion.isCompatible(Service.Versions.V1)) {
            this.title = new PlainTextConstruct(attributeHelper.consume("title", true));
        }
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile, attributes);
    }

    public class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile, Attributes attributes) {
            super(extensionProfile, Collection.class, attributes);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (!str.equals(Namespaces.atom)) {
                if (str.equals(Collection.this.atomPubNs.getUri())) {
                    if (str2.equals("accept")) {
                        return new AcceptHandler();
                    }
                    if (str2.equals(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCategoriesNodeName)) {
                        Categories categories = new Categories();
                        Collection.this.addCategories(categories);
                        categories.getClass();
                        return categories.new Handler(this.extProfile, attributes);
                    }
                }
            } else if (str2.equals("title") && !Collection.this.coreVersion.isCompatible(Service.Versions.V1)) {
                TextConstruct.ChildHandlerInfo childHandler = TextConstruct.getChildHandler(attributes);
                if (Collection.this.title != null) {
                    throw new ParseException(CoreErrorDomain.ERR.duplicateTitle);
                }
                Collection.this.title = childHandler.textConstruct;
                return childHandler.handler;
            }
            return super.getChildHandler(str, str2, attributes);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            super.processEndElement();
            if (Collection.this.title == null) {
                throw new ParseException(CoreErrorDomain.ERR.collectionTitleRequired);
            }
        }

        class AcceptHandler extends XmlParser.ElementHandler {
            AcceptHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                if (this.value == null) {
                    this.value = "";
                }
                if (Collection.this.coreVersion.isCompatible(Service.Versions.V1)) {
                    Collection.this.accepts = Arrays.asList(this.value.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR));
                } else {
                    Collection.this.addAccept(this.value);
                }
            }
        }
    }
}
