package com.google.gdata.data.extensions;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.DateTime;
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

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class GeoPt extends ExtensionPoint implements Extension {
    protected Float elev;
    protected String label;
    protected Float lat;
    protected Float lon;
    protected DateTime time;

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public Float getLat() {
        return this.lat;
    }

    public void setLat(Float f2) {
        this.lat = f2;
    }

    public Float getLon() {
        return this.lon;
    }

    public void setLon(Float f2) {
        this.lon = f2;
    }

    public Float getElev() {
        return this.elev;
    }

    public void setElev(Float f2) {
        this.elev = f2;
    }

    public DateTime getTime() {
        return this.time;
    }

    public void setTime(DateTime dateTime) {
        this.time = dateTime;
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(GeoPt.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName("geoPt");
        extensionDescription.setRepeatable(z);
        return extensionDescription;
    }

    public static ExtensionDescription getDefaultDescription() {
        return getDefaultDescription(true);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.label != null) {
            arrayList.add(new XmlWriter.Attribute("label", this.label));
        }
        if (this.lat != null) {
            arrayList.add(new XmlWriter.Attribute("lat", this.lat.toString()));
        }
        if (this.lon != null) {
            arrayList.add(new XmlWriter.Attribute("lon", this.lon.toString()));
        }
        if (this.elev != null) {
            arrayList.add(new XmlWriter.Attribute("elev", this.elev.toString()));
        }
        if (this.time != null) {
            arrayList.add(new XmlWriter.Attribute("time", this.time.toString()));
        }
        generateStartElement(xmlWriter, Namespaces.gNs, "geoPt", arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, "geoPt");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(GeoPt.this, extensionProfile, GeoPt.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("")) {
                if (str2.equals("label")) {
                    GeoPt.this.label = str3;
                    return;
                }
                if (str2.equals("lat")) {
                    try {
                        GeoPt.this.lat = Float.valueOf(str3);
                        return;
                    } catch (NumberFormatException e2) {
                        throw new ParseException(CoreErrorDomain.ERR.invalidGeoPtLat, e2);
                    }
                }
                if (str2.equals("lon")) {
                    try {
                        GeoPt.this.lon = Float.valueOf(str3);
                        return;
                    } catch (NumberFormatException e3) {
                        throw new ParseException(CoreErrorDomain.ERR.invalidGeoPtLon, e3);
                    }
                }
                if (str2.equals("elev")) {
                    try {
                        GeoPt.this.elev = Float.valueOf(str3);
                        return;
                    } catch (NumberFormatException e4) {
                        throw new ParseException(CoreErrorDomain.ERR.invalidGeoPtElev, e4);
                    }
                }
                if (str2.equals("time")) {
                    try {
                        GeoPt.this.time = DateTime.parseDateTime(str3);
                    } catch (NumberFormatException e5) {
                        throw new ParseException(CoreErrorDomain.ERR.invalidGeoPtTime);
                    }
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (GeoPt.this.lat == null) {
                throw new ParseException(CoreErrorDomain.ERR.geoPtLatRequired);
            }
            if (GeoPt.this.lon == null) {
                throw new ParseException(CoreErrorDomain.ERR.geoPtLonRequired);
            }
            super.processEndElement();
        }
    }
}
