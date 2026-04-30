package com.google.gdata.data.calendar;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Link;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class WebContent implements Extension {
    private static final ExtensionDescription EXTENSION_DESCRIPTION;
    private static final String GADGET_TYPE = "webContentGadgetPref";
    public static final String REL = "http://schemas.google.com/gCal/2005/webContent";
    private static final String TYPE = "webContent";
    private Map<String, String> gadgetPrefs;
    private Link webContentLink;
    private String width = null;
    private String height = null;
    private String url = null;

    static {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(WebContent.class);
        extensionDescription.setNamespace(Namespaces.gCalNs);
        extensionDescription.setLocalName(TYPE);
        extensionDescription.setRepeatable(false);
        EXTENSION_DESCRIPTION = extensionDescription;
    }

    public WebContent() {
        setLink(new Link(REL, null, null));
    }

    public static ExtensionDescription getDefaultDescription() {
        return EXTENSION_DESCRIPTION;
    }

    public static void updateWebContent(CalendarEventEntry calendarEventEntry) throws ParseException {
        Link webContentLink = calendarEventEntry.getWebContentLink();
        if (webContentLink == null) {
            calendarEventEntry.setWebContent(null);
            return;
        }
        WebContent webContent = calendarEventEntry.getWebContent();
        webContent.setLink(webContentLink);
        calendarEventEntry.setWebContent(webContent);
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (getWidth() != null) {
            arrayList.add(new XmlWriter.Attribute("width", getWidth()));
        }
        if (getHeight() != null) {
            arrayList.add(new XmlWriter.Attribute("height", getHeight()));
        }
        if (getUrl() != null) {
            arrayList.add(new XmlWriter.Attribute("url", getUrl()));
        }
        Map<String, String> gadgetPrefs = getGadgetPrefs();
        if (arrayList.size() != 0) {
            if (gadgetPrefs == null || gadgetPrefs.isEmpty()) {
                xmlWriter.simpleElement(Namespaces.gCalNs, TYPE, arrayList, null);
                return;
            }
            xmlWriter.startElement(Namespaces.gCalNs, TYPE, arrayList, null);
            xmlWriter.startRepeatingElement();
            for (Map.Entry<String, String> entry : gadgetPrefs.entrySet()) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new XmlWriter.Attribute("name", entry.getKey()));
                arrayList2.add(new XmlWriter.Attribute("value", entry.getValue()));
                xmlWriter.simpleElement(Namespaces.gCalNs, GADGET_TYPE, arrayList2, null);
            }
            xmlWriter.endRepeatingElement();
            xmlWriter.endElement(Namespaces.gCalNs, TYPE);
        }
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException, IOException {
        return new Handler();
    }

    class Handler extends XmlParser.ElementHandler {
        public Handler() {
            WebContent.this.width = null;
            WebContent.this.height = null;
            WebContent.this.url = null;
            WebContent.this.gadgetPrefs = null;
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if (str.equals("")) {
                if (str2.equals("width")) {
                    WebContent.this.setWidth(str3);
                } else if (str2.equals("height")) {
                    WebContent.this.setHeight(str3);
                } else if (str2.equals("url")) {
                    WebContent.this.setUrl(str3);
                }
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) {
            if (Namespaces.gCal.equals(str) && WebContent.GADGET_TYPE.equals(str2)) {
                return WebContent.this.new GadgetPrefHandler(this);
            }
            return null;
        }

        void addGadgetPref(String str, String str2) {
            if (WebContent.this.gadgetPrefs == null) {
                WebContent.this.gadgetPrefs = new HashMap();
            }
            WebContent.this.gadgetPrefs.put(str, str2);
        }
    }

    class GadgetPrefHandler extends XmlParser.ElementHandler {
        private Handler parentHandler;
        private String name = null;
        private String value = null;

        GadgetPrefHandler(Handler handler) {
            this.parentHandler = handler;
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("")) {
                if (str2.equals("name")) {
                    this.name = str3;
                } else if (str2.equals("value")) {
                    this.value = str3;
                }
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (this.name != null && this.value != null) {
                this.parentHandler.addGadgetPref(this.name, this.value);
            } else {
                if (this.name != null) {
                    throw new ParseException("name attribute defined but not value");
                }
                if (this.value != null) {
                    throw new ParseException("value attribute defined but not name");
                }
            }
        }
    }

    Link getLink() {
        return this.webContentLink;
    }

    void setLink(Link link) {
        if (this.webContentLink != null) {
            this.webContentLink.removeExtension(WebContent.class);
        }
        this.webContentLink = link;
        this.webContentLink.setExtension(this);
    }

    public String getIcon() {
        return this.webContentLink.getHref();
    }

    public void setIcon(String str) {
        this.webContentLink.setHref(str);
    }

    public String getTitle() {
        return this.webContentLink.getTitle();
    }

    public void setTitle(String str) {
        this.webContentLink.setTitle(str);
    }

    public String getType() {
        return this.webContentLink.getType();
    }

    public void setType(String str) {
        this.webContentLink.setType(str);
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getWidth() {
        return this.width;
    }

    public void setWidth(String str) {
        this.width = str;
    }

    public String getHeight() {
        return this.height;
    }

    public void setHeight(String str) {
        this.height = str;
    }

    public Map<String, String> getGadgetPrefs() {
        return this.gadgetPrefs;
    }

    public void setGadgetPrefs(Map<String, String> map) {
        this.gadgetPrefs = map;
    }

    public String toString() {
        return "icon=" + getIcon() + ",title=" + getTitle() + ",type=" + getType() + ",width=" + getWidth() + ",height=" + getHeight() + ",url=" + getUrl();
    }
}
