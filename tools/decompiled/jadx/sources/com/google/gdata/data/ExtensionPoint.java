package com.google.gdata.data;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.ExtensionVisitor;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlBlob;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.base.Pair;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class ExtensionPoint extends AbstractExtension {
    private ExtensionManifest manifest;
    private Map<Class<? extends Extension>, Extension> nonRepeatingExtensionMap;
    private Map<Class<? extends Extension>, List<Extension>> repeatingExtensionMap;
    protected XmlBlob xmlBlob;

    public ExtensionPoint() {
        this.nonRepeatingExtensionMap = new LinkedHashMap();
        this.repeatingExtensionMap = new LinkedHashMap();
        this.xmlBlob = new XmlBlob();
    }

    protected ExtensionPoint(ExtensionPoint extensionPoint) {
        this.nonRepeatingExtensionMap = new LinkedHashMap();
        this.repeatingExtensionMap = new LinkedHashMap();
        this.xmlBlob = new XmlBlob();
        this.nonRepeatingExtensionMap = extensionPoint.nonRepeatingExtensionMap;
        this.repeatingExtensionMap = extensionPoint.repeatingExtensionMap;
        this.xmlBlob = extensionPoint.xmlBlob;
        this.manifest = extensionPoint.manifest;
    }

    public void declareExtensions(ExtensionProfile extensionProfile) {
    }

    public final <T extends Extension> boolean hasExtension(Class<T> cls) {
        return this.nonRepeatingExtensionMap.containsKey(cls);
    }

    public final <T extends Extension> boolean hasRepeatingExtension(Class<T> cls) {
        List<Extension> list = this.repeatingExtensionMap.get(cls);
        return (list == null || list.isEmpty()) ? false : true;
    }

    public <T extends Extension> T getExtension(Class<T> cls) {
        return (T) this.nonRepeatingExtensionMap.get(cls);
    }

    public Collection<Extension> getExtensions() {
        return Collections.unmodifiableCollection(this.nonRepeatingExtensionMap.values());
    }

    public <T extends Extension> List<T> getRepeatingExtension(Class<T> cls) {
        List<T> list = (List) this.repeatingExtensionMap.get(cls);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.repeatingExtensionMap.put(cls, arrayList);
            return arrayList;
        }
        return list;
    }

    public Collection<List<Extension>> getRepeatingExtensions() {
        return Collections.unmodifiableCollection(this.repeatingExtensionMap.values());
    }

    protected boolean addExtension(Extension extension, Class<? extends Extension> cls) {
        if (this.nonRepeatingExtensionMap.containsKey(cls)) {
            return false;
        }
        this.nonRepeatingExtensionMap.put(cls, extension);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addExtension(Extension extension) {
        addExtension(extension, extension.getClass());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setExtension(Extension extension) {
        this.nonRepeatingExtensionMap.remove(extension.getClass());
        addExtension(extension, extension.getClass());
    }

    protected void addRepeatingExtension(Extension extension, Class<? extends Extension> cls) {
        List<Extension> arrayList = this.repeatingExtensionMap.get(cls);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.add(extension);
        this.repeatingExtensionMap.put(cls, arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addRepeatingExtension(Extension extension) {
        addRepeatingExtension(extension, extension.getClass());
    }

    public void removeExtension(Extension extension) {
        this.nonRepeatingExtensionMap.remove(extension.getClass());
    }

    public void removeExtension(Class<? extends Extension> cls) {
        this.nonRepeatingExtensionMap.remove(cls);
    }

    public void removeRepeatingExtension(Extension extension) {
        List<Extension> list = this.repeatingExtensionMap.get(extension.getClass());
        if (list != null) {
            list.remove(extension);
        }
    }

    protected void visitChild(ExtensionVisitor extensionVisitor, Extension extension) throws ExtensionVisitor.StoppedException {
        if (extension instanceof ExtensionPoint) {
            ((ExtensionPoint) extension).visit(extensionVisitor, this);
        } else {
            extensionVisitor.visit(this, extension);
        }
    }

    protected void visitChildren(ExtensionVisitor extensionVisitor) throws ExtensionVisitor.StoppedException {
        Iterator<Extension> it = this.nonRepeatingExtensionMap.values().iterator();
        while (it.hasNext()) {
            visitChild(extensionVisitor, it.next());
        }
        Iterator<List<Extension>> it2 = this.repeatingExtensionMap.values().iterator();
        while (it2.hasNext()) {
            Iterator<Extension> it3 = it2.next().iterator();
            while (it3.hasNext()) {
                visitChild(extensionVisitor, it3.next());
            }
        }
    }

    public void visit(ExtensionVisitor extensionVisitor, ExtensionPoint extensionPoint) throws ExtensionVisitor.StoppedException {
        if (extensionVisitor.visit(extensionPoint, this)) {
            visitChildren(extensionVisitor);
        }
        extensionVisitor.visitComplete(this);
    }

    public XmlBlob getXmlBlob() {
        return this.xmlBlob;
    }

    public void setXmlBlob(XmlBlob xmlBlob) {
        this.xmlBlob = xmlBlob;
    }

    public XmlBlob generateCumulativeXmlBlob(ExtensionProfile extensionProfile) throws IOException {
        XmlBlob xmlBlob = new XmlBlob();
        List<XmlNamespace> namespaces = xmlBlob.getNamespaces();
        StringWriter stringWriter = new StringWriter();
        XmlWriter xmlWriter = new XmlWriter(stringWriter);
        if (this.xmlBlob != null) {
            xmlBlob.setLang(this.xmlBlob.getLang());
            xmlBlob.setBase(this.xmlBlob.getBase());
            namespaces.addAll(this.xmlBlob.getNamespaces());
            stringWriter.write(this.xmlBlob.getBlob());
        }
        if (this.manifest != null) {
            for (XmlNamespace xmlNamespace : this.manifest.getNamespaceDecls()) {
                XmlNamespace xmlNamespace2 = new XmlNamespace(xmlNamespace.getAlias(), xmlNamespace.getUri());
                if (!namespaces.contains(xmlNamespace2)) {
                    namespaces.add(xmlNamespace2);
                }
            }
        }
        Iterator<Extension> it = this.nonRepeatingExtensionMap.values().iterator();
        while (it.hasNext()) {
            it.next().generate(xmlWriter, extensionProfile);
        }
        for (List<Extension> list : this.repeatingExtensionMap.values()) {
            xmlWriter.startRepeatingElement();
            Iterator<Extension> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().generate(xmlWriter, extensionProfile);
            }
            xmlWriter.endRepeatingElement();
        }
        xmlBlob.setBlob(stringWriter.toString());
        return xmlBlob;
    }

    public void parseCumulativeXmlBlob(XmlBlob xmlBlob, ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls) throws ParseException, IOException {
        this.xmlBlob = new XmlBlob();
        this.nonRepeatingExtensionMap.clear();
        this.repeatingExtensionMap.clear();
        StringWriter stringWriter = new StringWriter();
        XmlWriter xmlWriter = new XmlWriter(stringWriter);
        XmlBlob.startElement(xmlWriter, null, "CUMULATIVE_BLOB", xmlBlob, null, null);
        XmlBlob.endElement(xmlWriter, null, "CUMULATIVE_BLOB", xmlBlob);
        new XmlParser().parse(new StringReader(stringWriter.toString()), new CumulativeBlobHandler(extensionProfile, cls), "", "CUMULATIVE_BLOB");
    }

    public class CumulativeBlobHandler extends XmlParser.ElementHandler {
        private final ExtensionProfile extProfile;
        private final Class<? extends ExtensionPoint> extendedClass;

        public CumulativeBlobHandler(ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls) {
            this.extProfile = extensionProfile;
            this.extendedClass = cls;
            ExtensionPoint.this.initializeArbitraryXml(extensionProfile, cls, this);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            XmlParser.ElementHandler extensionHandler = ExtensionPoint.this.getExtensionHandler(this.extProfile, this.extendedClass, str, str2, attributes);
            return extensionHandler != null ? extensionHandler : super.getChildHandler(str, str2, attributes);
        }
    }

    protected ExtensionManifest getManifest(ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls) {
        if (this.manifest == null) {
            this.manifest = extensionProfile.getManifest(cls);
        }
        return this.manifest;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile, XmlNamespace xmlNamespace, String str, List<XmlWriter.Attribute> list, AttributeGenerator attributeGenerator) throws IOException {
        if (attributeGenerator.getContent() != null) {
            throw new IllegalStateException("No content allowed on an extension point");
        }
        try {
            ExtensionManifest manifest = extensionProfile.getManifest(getClass());
            if (manifest != null) {
                checkRequiredExtensions(manifest);
            }
            generateStartElement(xmlWriter, xmlNamespace, str, list, null);
            generateExtensions(xmlWriter, extensionProfile);
            xmlWriter.endElement(xmlNamespace, str);
        } catch (ParseException e2) {
            throw new IllegalStateException(e2.getMessage());
        }
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException {
        return new ExtensionHandler(extensionProfile, getClass(), attributes);
    }

    protected void generateStartElement(XmlWriter xmlWriter, XmlNamespace xmlNamespace, String str, Collection<XmlWriter.Attribute> collection, Collection<XmlNamespace> collection2) throws IOException {
        XmlBlob.startElement(xmlWriter, xmlNamespace, str, this.xmlBlob, collection, collection2);
    }

    protected void generateExtensions(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        Iterator<Extension> it = this.nonRepeatingExtensionMap.values().iterator();
        while (it.hasNext()) {
            it.next().generate(xmlWriter, extensionProfile);
        }
        for (List<Extension> list : this.repeatingExtensionMap.values()) {
            xmlWriter.startRepeatingElement();
            Iterator<Extension> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().generate(xmlWriter, extensionProfile);
            }
            xmlWriter.endRepeatingElement();
        }
        if (this.xmlBlob != null) {
            xmlWriter.innerXml(this.xmlBlob.getBlob());
        }
    }

    protected void initializeArbitraryXml(ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls, XmlParser.ElementHandler elementHandler) {
        boolean z;
        boolean z2;
        boolean zAllowsArbitraryXml = extensionProfile.allowsArbitraryXml();
        ExtensionManifest manifest = getManifest(extensionProfile, cls);
        if (manifest == null || !manifest.arbitraryXml) {
            z = zAllowsArbitraryXml;
            z2 = false;
        } else {
            z = manifest.arbitraryXml;
            z2 = manifest.mixedContent;
        }
        if (z) {
            elementHandler.initializeXmlBlob(this.xmlBlob, z2, false);
        }
    }

    protected ExtensionDescription getExtensionDescription(ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls, String str, String str2) {
        ExtensionManifest manifest = getManifest(extensionProfile, cls);
        if (manifest == null) {
            return null;
        }
        ExtensionDescription extensionDescription = manifest.supportedExtensions.get(Pair.of(str, str2));
        if (extensionDescription == null) {
            return manifest.supportedExtensions.get(Pair.of(str, "*"));
        }
        return extensionDescription;
    }

    protected static <T extends Extension> T createExtensionInstance(Class<T> cls) throws ParseException {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e2) {
            throw new ParseException(CoreErrorDomain.ERR.cantCreateExtension, e2);
        } catch (InstantiationException e3) {
            throw new ParseException(CoreErrorDomain.ERR.cantCreateExtension, e3);
        }
    }

    protected XmlParser.ElementHandler getExtensionHandler(ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls, String str, String str2, Attributes attributes) throws ParseException, IOException {
        Class<? extends Extension> extensionClass;
        ExtensionDescription extensionDescription = getExtensionDescription(extensionProfile, cls, str, str2);
        if (extensionDescription == null || (extensionClass = extensionDescription.getExtensionClass()) == null) {
            return null;
        }
        Extension extension = extensionDescription.isAggregate() ? getExtension(extensionClass) : null;
        boolean z = true;
        if (extension == null) {
            extension = createExtensionInstance(extensionClass);
        } else {
            z = false;
        }
        XmlParser.ElementHandler handler = extension.getHandler(extensionProfile, str, str2, attributes);
        if (z) {
            if (extensionDescription.isRepeatable()) {
                addRepeatingExtension(extension, extensionClass);
            } else if (!addExtension(extension, extensionClass)) {
                ParseException parseException = new ParseException(CoreErrorDomain.ERR.duplicateExtension);
                parseException.setInternalReason("Duplicate extension element " + str + ":" + str2);
                throw parseException;
            }
        }
        return handler;
    }

    protected void checkRequiredExtensions(ExtensionManifest extensionManifest) throws ParseException {
        for (ExtensionDescription extensionDescription : extensionManifest.supportedExtensions.values()) {
            if (extensionDescription.isRequired()) {
                Class<? extends Extension> extensionClass = extensionDescription.getExtensionClass();
                if (!(extensionDescription.isRepeatable() ? this.repeatingExtensionMap.containsKey(extensionClass) : this.nonRepeatingExtensionMap.containsKey(extensionClass))) {
                    ParseException parseException = new ParseException(CoreErrorDomain.ERR.missingExtensionElement);
                    parseException.setInternalReason("Required extension element " + extensionDescription.getNamespace().getUri() + ":" + extensionDescription.getLocalName() + " not found.");
                    throw parseException;
                }
            }
        }
    }

    public class ExtensionHandler extends AbstractExtension.AttributesHandler {
        protected ExtensionManifest extManifest;
        protected ExtensionProfile extProfile;
        protected Class<? extends ExtensionPoint> extendedClass;
        protected boolean hasExtensions;

        public ExtensionHandler(ExtensionPoint extensionPoint, ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls) {
            this(extensionProfile, cls, null);
        }

        public ExtensionHandler(ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls, Attributes attributes) {
            super(attributes);
            this.extProfile = extensionProfile;
            this.extendedClass = cls;
            this.extManifest = extensionProfile.getManifest(cls);
            if (this.extManifest != null) {
                this.hasExtensions = true;
            }
            ExtensionPoint.this.initializeArbitraryXml(this.extProfile, cls, this);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            XmlParser.ElementHandler extensionHandler;
            return (!this.hasExtensions || (extensionHandler = ExtensionPoint.this.getExtensionHandler(this.extProfile, this.extendedClass, str, str2, attributes)) == null) ? super.getChildHandler(str, str2, attributes) : extensionHandler;
        }

        @Override // com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            super.processEndElement();
            if (this.extManifest != null && AbstractExtension.isStrictValidation()) {
                ExtensionPoint.this.checkRequiredExtensions(this.extManifest);
            }
            for (Extension extension : ExtensionPoint.this.nonRepeatingExtensionMap.values()) {
                if (extension instanceof ValidatingExtension) {
                    ((ValidatingExtension) extension).validate(ExtensionPoint.this);
                }
            }
            Iterator it = ExtensionPoint.this.repeatingExtensionMap.values().iterator();
            while (it.hasNext()) {
                for (Extension extension2 : (List) it.next()) {
                    if (extension2 instanceof ValidatingExtension) {
                        ((ValidatingExtension) extension2).validate(ExtensionPoint.this);
                    }
                }
            }
        }
    }
}
