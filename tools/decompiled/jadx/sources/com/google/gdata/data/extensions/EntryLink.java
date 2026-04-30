package com.google.gdata.data.extensions;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Entry;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ExtensionVisitor;
import com.google.gdata.data.Link;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "entryLink", nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class EntryLink<E extends BaseEntry<?>> extends Link {
    protected BaseEntry<?> entry;
    protected final Class<E> entryClass;
    protected boolean readOnly;

    public EntryLink() {
        this(Entry.class);
    }

    public EntryLink(Class<E> cls) {
        this.entryClass = cls;
    }

    public boolean getReadOnly() {
        return this.readOnly;
    }

    public void setReadOnly(boolean z) {
        this.readOnly = z;
    }

    public E getEntry() {
        return (E) this.entry;
    }

    public void setEntry(E e2) {
        this.entry = e2;
    }

    public Class<E> getEntryClass() {
        return this.entryClass;
    }

    public static ExtensionDescription getDefaultDescription() {
        return ExtensionDescription.getDefaultDescription(EntryLink.class);
    }

    @Override // com.google.gdata.data.Link, com.google.gdata.data.ILink
    public String getType() {
        return ContentType.getAtomEntry().toString();
    }

    @Override // com.google.gdata.data.ExtensionPoint
    protected void visitChildren(ExtensionVisitor extensionVisitor) throws ExtensionVisitor.StoppedException {
        if (this.entry != null) {
            visitChild(extensionVisitor, this.entry);
        }
        super.visitChildren(extensionVisitor);
    }

    @Override // com.google.gdata.data.Link, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.rel != null) {
            arrayList.add(new XmlWriter.Attribute("rel", this.rel));
        }
        if (this.href != null) {
            arrayList.add(new XmlWriter.Attribute("href", this.href));
        }
        if (this.readOnly) {
            arrayList.add(new XmlWriter.Attribute("readOnly", "true"));
        }
        generateStartElement(xmlWriter, Namespaces.gNs, "entryLink", arrayList, null);
        if (this.entry != null) {
            ExtensionProfile entryLinkProfile = extensionProfile.getEntryLinkProfile();
            if (entryLinkProfile == null) {
                entryLinkProfile = extensionProfile;
            }
            this.entry.generateAtom(xmlWriter, entryLinkProfile);
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, "entryLink");
    }

    @Override // com.google.gdata.data.Link, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class Handler extends Link.AtomHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(extensionProfile, EntryLink.class);
        }

        @Override // com.google.gdata.data.Link.AtomHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("")) {
                if (str2.equals("readOnly")) {
                    EntryLink.this.readOnly = str3.equals("true");
                } else {
                    super.processAttribute(str, str2, str3);
                }
            }
        }

        @Override // com.google.gdata.data.Link.AtomHandler, com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (str.equals(Namespaces.atom) && str2.equals("entry")) {
                ExtensionProfile entryLinkProfile = this.extProfile.getEntryLinkProfile();
                ExtensionProfile extensionProfile = entryLinkProfile == null ? this.extProfile : entryLinkProfile;
                try {
                    EntryLink.this.entry = EntryLink.this.entryClass.newInstance();
                    BaseEntry<?> baseEntry = EntryLink.this.entry;
                    baseEntry.getClass();
                    return new BaseEntry.AtomHandler(extensionProfile);
                } catch (IllegalAccessException e2) {
                    throw new ParseException(CoreErrorDomain.ERR.cantCreateEntry);
                } catch (InstantiationException e3) {
                    throw new ParseException(CoreErrorDomain.ERR.cantCreateEntry);
                }
            }
            return super.getChildHandler(str, str2, attributes);
        }
    }
}
