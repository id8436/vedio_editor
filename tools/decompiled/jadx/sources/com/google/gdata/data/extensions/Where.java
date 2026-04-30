package com.google.gdata.data.extensions;

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
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Where extends ExtensionPoint implements Extension {
    protected EntryLink<?> entryLink;
    protected String label;
    protected String rel;
    protected String valueString;

    public final class Rel {
        public static final String EVENT = null;
        public static final String EVENT_ALTERNATE = "http://schemas.google.com/g/2005#event.alternate";
        public static final String EVENT_PARKING = "http://schemas.google.com/g/2005#event.parking";
    }

    public Where() {
    }

    public Where(String str, String str2, String str3) {
        this.rel = str;
        this.label = str2;
        this.valueString = str3;
    }

    public String getRel() {
        return this.rel;
    }

    public void setRel(String str) {
        this.rel = str;
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public String getValueString() {
        return this.valueString;
    }

    public void setValueString(String str) {
        this.valueString = str;
    }

    public EntryLink<?> getEntryLink() {
        return this.entryLink;
    }

    public void setEntryLink(EntryLink<?> entryLink) {
        this.entryLink = entryLink;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Where.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName("where");
        extensionDescription.setRepeatable(true);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.ExtensionPoint
    protected void visitChildren(ExtensionVisitor extensionVisitor) throws ExtensionVisitor.StoppedException {
        if (this.entryLink != null) {
            visitChild(extensionVisitor, this.entryLink);
        }
        super.visitChildren(extensionVisitor);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.rel != null) {
            arrayList.add(new XmlWriter.Attribute("rel", this.rel));
        }
        if (this.label != null) {
            arrayList.add(new XmlWriter.Attribute("label", this.label));
        }
        if (this.valueString != null) {
            arrayList.add(new XmlWriter.Attribute("valueString", this.valueString));
        }
        generateStartElement(xmlWriter, Namespaces.gNs, "where", arrayList, null);
        if (this.entryLink != null) {
            this.entryLink.generate(xmlWriter, extensionProfile);
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, "where");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Where.this, extensionProfile, Where.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if (str.equals("")) {
                if (str2.equals("rel")) {
                    Where.this.rel = str3;
                } else if (str2.equals("label")) {
                    Where.this.label = str3;
                } else if (str2.equals("valueString")) {
                    Where.this.valueString = str3;
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (!str.equals("http://schemas.google.com/g/2005") || !str2.equals("entryLink")) {
                return super.getChildHandler(str, str2, attributes);
            }
            Where.this.entryLink = new EntryLink<>();
            return Where.this.entryLink.getHandler(this.extProfile, str, str2, attributes);
        }
    }
}
