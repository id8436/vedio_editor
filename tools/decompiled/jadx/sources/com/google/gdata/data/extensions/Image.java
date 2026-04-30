package com.google.gdata.data.extensions;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Image extends ExtensionPoint implements Extension {
    protected Integer height;
    protected String rel;
    protected String src;
    protected Integer width;

    public final class Rel {
        public static final String FULL = null;
        public static final String RAW = "http://schemas.google.com/g/2005#raw";
        public static final String RESIZED = "http://schemas.google.com/g/2005#resized";
        public static final String SCALABLE = "http://schemas.google.com/g/2005#scalable";
        public static final String THUMBNAIL = "http://schemas.google.com/g/2005#thumbnail";
    }

    public String getRel() {
        return this.rel;
    }

    public void setRel(String str) {
        this.rel = str;
    }

    public int getWidth() {
        return this.width.intValue();
    }

    public void setWidth(int i) {
        this.width = Integer.valueOf(i);
    }

    public int getHeight() {
        return this.height.intValue();
    }

    public void setHeight(int i) {
        this.height = Integer.valueOf(i);
    }

    public String getSrc() {
        return this.src;
    }

    public void setSrc(String str) {
        this.src = str;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Image.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName("image");
        extensionDescription.setRepeatable(true);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.rel != null) {
            arrayList.add(new XmlWriter.Attribute("rel", this.rel));
        }
        if (this.width != null) {
            arrayList.add(new XmlWriter.Attribute("width", this.width.toString()));
        }
        if (this.height != null) {
            arrayList.add(new XmlWriter.Attribute("height", this.height.toString()));
        }
        if (this.src != null) {
            arrayList.add(new XmlWriter.Attribute("src", this.src));
        }
        generateStartElement(xmlWriter, Namespaces.gNs, "image", arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, "image");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Image.this, extensionProfile, Image.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws NumberFormatException {
            if (str.equals("")) {
                if (str2.equals("rel")) {
                    Image.this.rel = str3;
                    return;
                }
                if (str2.equals("width")) {
                    Image.this.width = Integer.valueOf(Integer.parseInt(str3));
                } else if (str2.equals("height")) {
                    Image.this.height = Integer.valueOf(Integer.parseInt(str3));
                } else if (str2.equals("src")) {
                    Image.this.src = str3;
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (Image.this.src == null) {
                throw new ParseException(CoreErrorDomain.ERR.missingSrcAttribute);
            }
        }
    }
}
