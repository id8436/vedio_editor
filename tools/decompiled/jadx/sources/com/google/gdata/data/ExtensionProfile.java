package com.google.gdata.data;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityPublicationRecordConstants;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.ExtensionDescription.Handler;
import com.google.gdata.data.Kind;
import com.google.gdata.data.codesearch.Package;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.base.Pair;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.TreeSet;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes.dex */
public class ExtensionProfile {
    private ExtensionProfile entryLinkProfile;
    private ExtensionProfile feedLinkProfile;
    private HashSet<Class<? extends Kind.Adaptor>> declared = new HashSet<>();
    private final Map<Class<?>, ExtensionManifest> profile = new HashMap();
    private Collection<XmlNamespace> additionalNamespaces = new LinkedHashSet();
    private Collection<XmlNamespace> nsDecls = null;
    private boolean isAutoExtending = false;
    private boolean allowsArbitraryXml = true;

    public void addDeclarations(Kind.Adaptor adaptor) {
        if (this.declared.add((Class<? extends Kind.Adaptor>) adaptor.getClass())) {
            adaptor.declareExtensions(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Class<? extends ExtensionPoint> extensionPointClass(Class cls) {
        return cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized void declare(Class<? extends ExtensionPoint> cls, ExtensionDescription extensionDescription) {
        ExtensionDescription extensionDescription2;
        boolean z = false;
        synchronized (this) {
            ExtensionDescription extensionDescription3 = extensionDescription;
            while (this.isAutoExtending && Kind.Adaptable.class.isAssignableFrom(cls.getSuperclass())) {
                if (z || !extensionDescription3.isRequired()) {
                    extensionDescription2 = extensionDescription3;
                } else {
                    extensionDescription2 = new ExtensionDescription(extensionDescription3.getExtensionClass(), extensionDescription3.getNamespace(), extensionDescription3.getLocalName(), false, extensionDescription3.isRepeatable(), extensionDescription3.isAggregate(), extensionDescription3.allowsArbitraryXml(), extensionDescription3.allowsMixedContent());
                    z = true;
                }
                cls = extensionPointClass(cls.getSuperclass());
                extensionDescription3 = extensionDescription2;
            }
            ExtensionManifest orCreateManifest = getOrCreateManifest(cls);
            this.profile.put(cls, orCreateManifest);
            Pair<String, String> pair = new Pair<>(extensionDescription3.getNamespace().getUri(), extensionDescription3.getLocalName());
            orCreateManifest.supportedExtensions.put(pair, extensionDescription3);
            Iterator<ExtensionManifest> it = orCreateManifest.subclassManifests.iterator();
            while (it.hasNext()) {
                it.next().supportedExtensions.put(pair, extensionDescription3);
            }
            if (extensionDescription3.allowsArbitraryXml()) {
                Class<? extends Extension> extensionClass = extensionDescription3.getExtensionClass();
                this.profile.put(extensionClass, getOrCreateManifest(extensionClass));
                declareArbitraryXmlExtension(extensionClass, extensionDescription3.allowsMixedContent());
            }
            this.nsDecls = null;
        }
    }

    public synchronized void declare(Class<? extends ExtensionPoint> cls, Class<? extends Extension> cls2) {
        declare(cls, ExtensionDescription.getDefaultDescription(cls2));
    }

    @Deprecated
    public synchronized void declareFeedExtension(ExtensionDescription extensionDescription) {
        declare(BaseFeed.class, extensionDescription);
    }

    @Deprecated
    public synchronized void declareFeedExtension(Class<? extends Extension> cls) {
        declare(BaseFeed.class, cls);
    }

    @Deprecated
    public synchronized void declareEntryExtension(ExtensionDescription extensionDescription) {
        declare(BaseEntry.class, extensionDescription);
    }

    @Deprecated
    public synchronized void declareEntryExtension(Class<? extends Extension> cls) {
        declare(BaseEntry.class, cls);
    }

    public synchronized void declareArbitraryXmlExtension(Class<? extends ExtensionPoint> cls) {
        declareArbitraryXmlExtension(cls, false);
    }

    public synchronized void declareArbitraryXmlExtension(Class<? extends ExtensionPoint> cls, boolean z) {
        ExtensionManifest orCreateManifest = getOrCreateManifest(cls);
        orCreateManifest.arbitraryXml = true;
        orCreateManifest.mixedContent = z;
        for (ExtensionManifest extensionManifest : orCreateManifest.subclassManifests) {
            extensionManifest.arbitraryXml = true;
            extensionManifest.mixedContent = z;
        }
        this.profile.put(cls, orCreateManifest);
        this.nsDecls = null;
    }

    public synchronized void declareAdditionalNamespace(XmlNamespace xmlNamespace) {
        this.additionalNamespaces.add(xmlNamespace);
    }

    public synchronized void declareFeedLinkProfile(ExtensionProfile extensionProfile) {
        this.feedLinkProfile = extensionProfile;
        this.nsDecls = null;
    }

    public synchronized ExtensionProfile getFeedLinkProfile() {
        return this.feedLinkProfile;
    }

    public synchronized void declareEntryLinkProfile(ExtensionProfile extensionProfile) {
        this.entryLinkProfile = extensionProfile;
        this.nsDecls = null;
    }

    public synchronized ExtensionProfile getEntryLinkProfile() {
        return this.entryLinkProfile;
    }

    public ExtensionManifest getManifest(Class<?> cls) {
        while (cls != null) {
            ExtensionManifest extensionManifest = this.profile.get(cls);
            if (extensionManifest == null) {
                cls = cls.getSuperclass();
            } else {
                return extensionManifest;
            }
        }
        return null;
    }

    public boolean isDeclared(Class<?> cls) {
        return this.profile.containsKey(cls);
    }

    public synchronized Collection<XmlNamespace> getNamespaceDecls() {
        if (this.nsDecls == null) {
            this.nsDecls = computeNamespaceDecls();
        }
        return this.nsDecls;
    }

    public void setAutoExtending(boolean z) {
        this.isAutoExtending = z;
    }

    public boolean isAutoExtending() {
        return this.isAutoExtending;
    }

    public void setArbitraryXml(boolean z) {
        this.allowsArbitraryXml = z;
    }

    public boolean allowsArbitraryXml() {
        return this.allowsArbitraryXml;
    }

    private ExtensionManifest getOrCreateManifest(Class<? extends ExtensionPoint> cls) {
        ExtensionManifest manifest = getManifest(cls);
        if (manifest == null || manifest.extendedType != cls) {
            ExtensionManifest extensionManifest = new ExtensionManifest(cls);
            Stack stack = new Stack();
            while (manifest != null) {
                stack.push(manifest);
                manifest = getManifest(manifest.extendedType.getSuperclass());
            }
            while (!stack.empty()) {
                ExtensionManifest extensionManifest2 = (ExtensionManifest) stack.pop();
                extensionManifest.supportedExtensions.putAll(extensionManifest2.supportedExtensions);
                extensionManifest.arbitraryXml = extensionManifest2.arbitraryXml;
                extensionManifest2.subclassManifests.add(extensionManifest);
            }
            for (Map.Entry<Class<?>, ExtensionManifest> entry : this.profile.entrySet()) {
                if (cls.isAssignableFrom(entry.getKey())) {
                    extensionManifest.subclassManifests.add(entry.getValue());
                }
            }
            return extensionManifest;
        }
        return manifest;
    }

    private synchronized Collection<XmlNamespace> computeNamespaceDecls() {
        HashSet hashSet;
        hashSet = new HashSet();
        hashSet.addAll(this.additionalNamespaces);
        Iterator<ExtensionManifest> it = this.profile.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().getNamespaceDecls());
        }
        if (this.feedLinkProfile != null) {
            hashSet.addAll(this.feedLinkProfile.computeNamespaceDecls());
        }
        if (this.entryLinkProfile != null) {
            hashSet.addAll(this.entryLinkProfile.computeNamespaceDecls());
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class Handler extends XmlParser.ElementHandler {
        private ClassLoader configLoader;
        private ExtensionProfile configProfile;
        private List<XmlNamespace> namespaces = new ArrayList();

        public Handler(ExtensionProfile extensionProfile, ClassLoader classLoader, Attributes attributes) throws ParseException {
            Boolean booleanAttribute;
            this.configProfile = extensionProfile;
            this.configLoader = classLoader;
            if (attributes != null && (booleanAttribute = getBooleanAttribute(attributes, "arbitraryXml")) != null) {
                ExtensionProfile.this.allowsArbitraryXml = booleanAttribute.booleanValue();
            }
        }

        public void validate() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            validate();
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (str.equals(Namespaces.gdataConfig)) {
                if (str2.equals("namespaceDescription")) {
                    String value = attributes.getValue("", AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationAliasKey);
                    if (value == null) {
                        ParseException parseException = new ParseException(CoreErrorDomain.ERR.missingAttribute);
                        parseException.setInternalReason("NamespaceDescription alias attribute is missing");
                        throw parseException;
                    }
                    String value2 = attributes.getValue("", Package.ATTRIBUTE_URI);
                    if (value2 == null) {
                        ParseException parseException2 = new ParseException(CoreErrorDomain.ERR.missingAttribute);
                        parseException2.setInternalReason("NamespaceDescription uri attribute is missing");
                        throw parseException2;
                    }
                    XmlNamespace xmlNamespace = new XmlNamespace(value, value2);
                    this.namespaces.add(xmlNamespace);
                    ExtensionProfile.this.declareAdditionalNamespace(xmlNamespace);
                    return new XmlParser.ElementHandler();
                }
                if (str2.equals("extensionPoint")) {
                    return ExtensionProfile.this.new ExtensionPointHandler(this.configProfile, this.configLoader, this.namespaces, attributes);
                }
            }
            return super.getChildHandler(str, str2, attributes);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class ExtensionPointHandler extends XmlParser.ElementHandler {
        private boolean arbitraryXml;
        private ClassLoader configLoader;
        private ExtensionProfile configProfile;
        private List<ExtensionDescription> extDescriptions = new ArrayList();
        private Class<? extends ExtensionPoint> extensionPoint;
        private List<XmlNamespace> namespaces;

        public ExtensionPointHandler(ExtensionProfile extensionProfile, ClassLoader classLoader, List<XmlNamespace> list, Attributes attributes) throws ParseException {
            this.configProfile = extensionProfile;
            this.configLoader = classLoader;
            this.namespaces = list;
            String value = attributes.getValue("", "extendedClass");
            if (value == null) {
                ParseException parseException = new ParseException(CoreErrorDomain.ERR.missingAttribute);
                parseException.setInternalReason("ExtensionPoint extendedClass attribute is missing");
                throw parseException;
            }
            try {
                Class<?> clsLoadClass = classLoader.loadClass(value);
                if (ExtensionPoint.class.isAssignableFrom(clsLoadClass)) {
                    this.extensionPoint = ExtensionProfile.this.extensionPointClass(clsLoadClass);
                    Boolean booleanAttribute = getBooleanAttribute(attributes, "arbitraryXml");
                    if (booleanAttribute != null) {
                        this.arbitraryXml = booleanAttribute.booleanValue();
                        return;
                    }
                    return;
                }
                throw new ParseException(CoreErrorDomain.ERR.mustExtendExtensionPoint);
            } catch (ClassNotFoundException e2) {
                throw new ParseException(CoreErrorDomain.ERR.cantLoadExtensionPoint, e2);
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            if (this.arbitraryXml) {
                ExtensionProfile.this.declareArbitraryXmlExtension(this.extensionPoint);
            }
            Iterator<ExtensionDescription> it = this.extDescriptions.iterator();
            while (it.hasNext()) {
                ExtensionProfile.this.declare(this.extensionPoint, it.next());
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (!str.equals(Namespaces.gdataConfig) || !str2.equals("extensionDescription")) {
                return super.getChildHandler(str, str2, attributes);
            }
            ExtensionDescription extensionDescription = new ExtensionDescription();
            this.extDescriptions.add(extensionDescription);
            extensionDescription.getClass();
            return extensionDescription.new Handler(this.configProfile, this.configLoader, this.namespaces, attributes);
        }
    }

    public void parseConfig(ExtensionProfile extensionProfile, ClassLoader classLoader, InputStream inputStream) throws ParseException, IOException {
        new XmlParser().parse(inputStream, new Handler(extensionProfile, classLoader, null), Namespaces.gdataConfig, "extensionProfile");
    }

    public void generateConfig(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new XmlWriter.Attribute("arbitraryXml", this.allowsArbitraryXml));
        xmlWriter.startElement(Namespaces.gdataConfigNs, "extensionProfile", arrayList, this.nsDecls);
        for (XmlNamespace xmlNamespace : this.additionalNamespaces) {
            List<XmlWriter.Attribute> arrayList2 = new ArrayList<>();
            arrayList2.add(new XmlWriter.Attribute(AdobeCommunityPublicationRecordConstants.AdobeCommunityPublicationAliasKey, xmlNamespace.getAlias()));
            arrayList2.add(new XmlWriter.Attribute(Package.ATTRIBUTE_URI, xmlNamespace.getUri()));
            xmlWriter.simpleElement(Namespaces.gdataConfigNs, "namespaceDescription", arrayList2, null);
        }
        TreeSet<Class> treeSet = new TreeSet(new Comparator<Class<?>>() { // from class: com.google.gdata.data.ExtensionProfile.1
            @Override // java.util.Comparator
            public int compare(Class<?> cls, Class<?> cls2) {
                return cls.getName().compareTo(cls2.getName());
            }
        });
        Iterator<Class<?>> it = this.profile.keySet().iterator();
        while (it.hasNext()) {
            treeSet.add(it.next());
        }
        for (Class cls : treeSet) {
            ExtensionManifest extensionManifest = this.profile.get(cls);
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(new XmlWriter.Attribute("extendedClass", cls.getName()));
            arrayList3.add(new XmlWriter.Attribute("arbitraryXml", extensionManifest.arbitraryXml));
            xmlWriter.startElement(Namespaces.gdataConfigNs, "extensionPoint", arrayList3, null);
            TreeSet treeSet2 = new TreeSet();
            Iterator<ExtensionDescription> it2 = extensionManifest.getSupportedExtensions().values().iterator();
            while (it2.hasNext()) {
                treeSet2.add(it2.next());
            }
            Iterator it3 = treeSet2.iterator();
            while (it3.hasNext()) {
                ((ExtensionDescription) it3.next()).generateConfig(xmlWriter, extensionProfile);
            }
            xmlWriter.endElement(Namespaces.gdataConfigNs, "extensionPoint");
        }
        xmlWriter.endElement(Namespaces.gdataConfigNs, "extensionProfile");
    }
}
