package com.google.gdata.data;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.photos.GphotoAccess;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.ServiceConfigurationException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.io.Reader;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class OpenSearchDescriptionDocument extends ExtensionPoint {
    protected boolean adultContent;
    protected String attribution;
    protected String contact;
    protected String description;
    protected String developer;
    protected String format;
    protected String image;
    protected String longName;
    protected String sampleSearch;
    protected String shortName;
    protected int syndicationRight;
    protected String tags;
    protected String url;

    public class SyndicationRight {
        public static final int CLOSED = 3;
        public static final int LIMITED = 1;
        public static final int OPEN = 0;
        public static final int PRIVATE = 2;
    }

    public OpenSearchDescriptionDocument() {
        this.syndicationRight = 0;
        this.adultContent = false;
    }

    public OpenSearchDescriptionDocument(OpenSearchDescriptionDocument openSearchDescriptionDocument) {
        this.syndicationRight = 0;
        this.adultContent = false;
        this.url = openSearchDescriptionDocument.url;
        this.format = openSearchDescriptionDocument.format;
        this.shortName = openSearchDescriptionDocument.shortName;
        this.longName = openSearchDescriptionDocument.longName;
        this.description = openSearchDescriptionDocument.description;
        this.tags = openSearchDescriptionDocument.tags;
        this.image = openSearchDescriptionDocument.image;
        this.sampleSearch = openSearchDescriptionDocument.sampleSearch;
        this.developer = openSearchDescriptionDocument.developer;
        this.contact = openSearchDescriptionDocument.contact;
        this.attribution = openSearchDescriptionDocument.attribution;
        this.syndicationRight = openSearchDescriptionDocument.syndicationRight;
        this.adultContent = openSearchDescriptionDocument.adultContent;
    }

    public final String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public final String getFormat() {
        return this.format;
    }

    public void setFormat(String str) {
        this.format = str;
    }

    public final String getShortName() {
        return this.shortName;
    }

    public void setShortName(String str) {
        this.shortName = str;
    }

    public final String getLongName() {
        return this.longName;
    }

    public void setLongName(String str) {
        this.longName = str;
    }

    public final String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public final String getTags() {
        return this.tags;
    }

    public void setTags(String str) {
        this.tags = str;
    }

    public final String getImage() {
        return this.image;
    }

    public void setImage(String str) {
        this.image = str;
    }

    public final String getSampleSearch() {
        return this.sampleSearch;
    }

    public void setSampleSearch(String str) {
        this.sampleSearch = str;
    }

    public final String getDeveloper() {
        return this.developer;
    }

    public void setDeveloper(String str) {
        this.developer = str;
    }

    public final String getContact() {
        return this.contact;
    }

    public void setContact(String str) {
        this.contact = str;
    }

    public final String getAttribution() {
        return this.attribution;
    }

    public void setAttribution(String str) {
        this.attribution = str;
    }

    public final int getSyndicationRight() {
        return this.syndicationRight;
    }

    public void setSyndicationRight(int i) {
        this.syndicationRight = i;
    }

    public final boolean getAdultContent() {
        return this.adultContent;
    }

    public void setAdultContent(boolean z) {
        this.adultContent = z;
    }

    public void generate(XmlWriter xmlWriter) throws IOException {
        String str;
        XmlNamespace openSearchDescNs = Namespaces.getOpenSearchDescNs();
        xmlWriter.startElement(openSearchDescNs, "OpenSearchDescription", null, null);
        if (this.url != null) {
            xmlWriter.simpleElement(openSearchDescNs, "Url", null, this.url);
        }
        if (this.format != null) {
            xmlWriter.simpleElement(openSearchDescNs, "Format", null, this.format);
        }
        if (this.shortName != null) {
            xmlWriter.simpleElement(openSearchDescNs, "ShortName", null, this.shortName);
        }
        if (this.longName != null) {
            xmlWriter.simpleElement(openSearchDescNs, "LongName", null, this.longName);
        }
        if (this.description != null) {
            xmlWriter.simpleElement(openSearchDescNs, "Description", null, this.description);
        }
        if (this.tags != null) {
            xmlWriter.simpleElement(openSearchDescNs, "Tags", null, this.tags);
        }
        if (this.image != null) {
            xmlWriter.simpleElement(openSearchDescNs, "Image", null, this.image);
        }
        if (this.sampleSearch != null) {
            xmlWriter.simpleElement(openSearchDescNs, "SampleSearch", null, this.sampleSearch);
        }
        if (this.developer != null) {
            xmlWriter.simpleElement(openSearchDescNs, "Developer", null, this.developer);
        }
        if (this.contact != null) {
            xmlWriter.simpleElement(openSearchDescNs, "Contact", null, this.contact);
        }
        if (this.attribution != null) {
            xmlWriter.simpleElement(openSearchDescNs, "Attribution", null, this.attribution);
        }
        switch (this.syndicationRight) {
            case 1:
                str = "limited";
                break;
            case 2:
                str = GphotoAccess.Value.PRIVATE;
                break;
            case 3:
                str = "closed";
                break;
            default:
                str = "open";
                break;
        }
        xmlWriter.simpleElement(openSearchDescNs, "SyndicationRight", null, str);
        if (this.adultContent) {
            xmlWriter.simpleElement(openSearchDescNs, "AdultContent", null, "true");
        }
        xmlWriter.endElement(openSearchDescNs, "OpenSearchDescription");
    }

    public void validateConfiguration() throws ServiceConfigurationException {
        if (this.format == null) {
            throw new ServiceConfigurationException(CoreErrorDomain.ERR.missingFormat);
        }
        if (this.shortName == null) {
            throw new ServiceConfigurationException(CoreErrorDomain.ERR.missingShortName);
        }
        if (this.description == null) {
            throw new ServiceConfigurationException(CoreErrorDomain.ERR.missingDescription);
        }
        if (this.tags == null) {
            throw new ServiceConfigurationException(CoreErrorDomain.ERR.missingTags);
        }
        if (this.contact == null) {
            throw new ServiceConfigurationException(CoreErrorDomain.ERR.missingContact);
        }
    }

    public void parse(ExtensionProfile extensionProfile, Reader reader) throws ParseException, IOException {
        new XmlParser().parse(reader, new Handler(extensionProfile), Namespaces.getOpenSearchDescNs().getUri(), "OpenSearchDescription");
    }

    public class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(OpenSearchDescriptionDocument.this, extensionProfile, OpenSearchDescriptionDocument.class);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (str.equals(Namespaces.getOpenSearchDescNs().getUri())) {
                if (str2.equals("Url")) {
                    ensureNull(OpenSearchDescriptionDocument.this.url);
                    return new UrlHandler();
                }
                if (str2.equals("Format")) {
                    ensureNull(OpenSearchDescriptionDocument.this.format);
                    return new FormatHandler();
                }
                if (str2.equals("ShortName")) {
                    ensureNull(OpenSearchDescriptionDocument.this.shortName);
                    return new ShortNameHandler();
                }
                if (str2.equals("LongName")) {
                    ensureNull(OpenSearchDescriptionDocument.this.longName);
                    return new LongNameHandler();
                }
                if (str2.equals("Description")) {
                    ensureNull(OpenSearchDescriptionDocument.this.description);
                    return new DescriptionHandler();
                }
                if (str2.equals("Tags")) {
                    ensureNull(OpenSearchDescriptionDocument.this.tags);
                    return new TagsHandler();
                }
                if (str2.equals("Image")) {
                    ensureNull(OpenSearchDescriptionDocument.this.image);
                    return new ImageHandler();
                }
                if (str2.equals("SampleSearch")) {
                    ensureNull(OpenSearchDescriptionDocument.this.sampleSearch);
                    return new SampleSearchHandler();
                }
                if (str2.equals("Developer")) {
                    ensureNull(OpenSearchDescriptionDocument.this.developer);
                    return new DeveloperHandler();
                }
                if (str2.equals("Contact")) {
                    ensureNull(OpenSearchDescriptionDocument.this.contact);
                    return new ContactHandler();
                }
                if (str2.equals("Attribution")) {
                    ensureNull(OpenSearchDescriptionDocument.this.attribution);
                    return new AttributionHandler();
                }
                if (str2.equals("SyndicationRight")) {
                    return new SyndicationRightHandler();
                }
                if (str2.equals("AdultContent")) {
                    return new AdultContentHandler();
                }
                return null;
            }
            return super.getChildHandler(str, str2, attributes);
        }

        private void ensureNull(String str) throws ParseException {
            if (str != null) {
                throw new ParseException(CoreErrorDomain.ERR.duplicateValue);
            }
        }

        class UrlHandler extends XmlParser.ElementHandler {
            private UrlHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                OpenSearchDescriptionDocument.this.url = this.value;
            }
        }

        class FormatHandler extends XmlParser.ElementHandler {
            private FormatHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                OpenSearchDescriptionDocument.this.format = this.value;
            }
        }

        class ShortNameHandler extends XmlParser.ElementHandler {
            private ShortNameHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                OpenSearchDescriptionDocument.this.shortName = this.value;
            }
        }

        class LongNameHandler extends XmlParser.ElementHandler {
            private LongNameHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                OpenSearchDescriptionDocument.this.longName = this.value;
            }
        }

        class DescriptionHandler extends XmlParser.ElementHandler {
            private DescriptionHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                OpenSearchDescriptionDocument.this.description = this.value;
            }
        }

        class TagsHandler extends XmlParser.ElementHandler {
            private TagsHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                OpenSearchDescriptionDocument.this.tags = this.value;
            }
        }

        class ImageHandler extends XmlParser.ElementHandler {
            private ImageHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                OpenSearchDescriptionDocument.this.image = this.value;
            }
        }

        class SampleSearchHandler extends XmlParser.ElementHandler {
            private SampleSearchHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                OpenSearchDescriptionDocument.this.sampleSearch = this.value;
            }
        }

        class DeveloperHandler extends XmlParser.ElementHandler {
            private DeveloperHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                OpenSearchDescriptionDocument.this.developer = this.value;
            }
        }

        class ContactHandler extends XmlParser.ElementHandler {
            private ContactHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                OpenSearchDescriptionDocument.this.contact = this.value;
            }
        }

        class AttributionHandler extends XmlParser.ElementHandler {
            private AttributionHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                OpenSearchDescriptionDocument.this.attribution = this.value;
            }
        }

        class SyndicationRightHandler extends XmlParser.ElementHandler {
            private SyndicationRightHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                if (this.value.equalsIgnoreCase("open")) {
                    OpenSearchDescriptionDocument.this.syndicationRight = 0;
                    return;
                }
                if (this.value.equalsIgnoreCase("limited")) {
                    OpenSearchDescriptionDocument.this.syndicationRight = 1;
                } else if (this.value.equalsIgnoreCase(GphotoAccess.Value.PRIVATE)) {
                    OpenSearchDescriptionDocument.this.syndicationRight = 2;
                } else if (this.value.equalsIgnoreCase("closed")) {
                    OpenSearchDescriptionDocument.this.syndicationRight = 3;
                }
            }
        }

        class AdultContentHandler extends XmlParser.ElementHandler {
            private AdultContentHandler() {
            }

            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                if (!this.value.equals("false") && !this.value.equals("FALSE") && !this.value.equals("0") && !this.value.equals("no") && !this.value.equals("NO")) {
                    OpenSearchDescriptionDocument.this.adultContent = true;
                }
            }
        }
    }
}
