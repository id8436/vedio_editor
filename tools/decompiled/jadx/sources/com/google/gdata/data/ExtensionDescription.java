package com.google.gdata.data;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class ExtensionDescription extends ExtensionPoint implements Comparable<ExtensionDescription> {
    private boolean aggregate;
    private boolean arbitraryXml;
    private Class<? extends Extension> extensionClass;
    private String localName;
    private boolean mixedContent;
    private XmlNamespace namespace;
    private boolean repeatable;
    private boolean required;

    /* JADX INFO: loaded from: classes.dex */
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Default {
        boolean allowsArbitraryXml() default false;

        boolean allowsMixedContent() default false;

        boolean isAggregate() default false;

        boolean isRepeatable() default false;

        boolean isRequired() default false;

        String localName();

        String nsAlias();

        String nsUri();
    }

    public static ExtensionDescription getDefaultDescription(Class<? extends Extension> cls) {
        Default r1 = (Default) cls.getAnnotation(Default.class);
        if (r1 == null) {
            throw new IllegalArgumentException("No default description found for " + cls);
        }
        return new ExtensionDescription(cls, new XmlNamespace(r1.nsAlias(), r1.nsUri()), r1.localName(), r1.isRequired(), r1.isRepeatable(), r1.isAggregate(), r1.allowsArbitraryXml(), r1.allowsMixedContent());
    }

    public ExtensionDescription() {
        this.required = false;
        this.repeatable = false;
        this.aggregate = false;
        this.arbitraryXml = false;
        this.mixedContent = false;
    }

    public ExtensionDescription(Class<? extends Extension> cls, XmlNamespace xmlNamespace, String str, boolean z, boolean z2, boolean z3) {
        this(cls, xmlNamespace, str, z, z2, z3, false, false);
    }

    public ExtensionDescription(Class<? extends Extension> cls, XmlNamespace xmlNamespace, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.required = false;
        this.repeatable = false;
        this.aggregate = false;
        this.arbitraryXml = false;
        this.mixedContent = false;
        this.namespace = xmlNamespace;
        this.localName = str;
        this.extensionClass = cls;
        this.required = z;
        this.repeatable = z2;
        this.aggregate = z3;
        this.arbitraryXml = z4;
        this.mixedContent = z5;
    }

    public ExtensionDescription(Class<? extends Extension> cls, XmlNamespace xmlNamespace, String str) {
        this(cls, xmlNamespace, str, false, false, false);
    }

    public void setNamespace(XmlNamespace xmlNamespace) {
        this.namespace = xmlNamespace;
    }

    public final XmlNamespace getNamespace() {
        return this.namespace;
    }

    public void setLocalName(String str) {
        this.localName = str;
    }

    public final String getLocalName() {
        return this.localName;
    }

    public void setExtensionClass(Class<? extends Extension> cls) {
        this.extensionClass = cls;
    }

    public final Class<? extends Extension> getExtensionClass() {
        return this.extensionClass;
    }

    public void setRequired(boolean z) {
        this.required = z;
    }

    public final boolean isRequired() {
        return this.required;
    }

    public void setRepeatable(boolean z) {
        this.repeatable = z;
    }

    public final boolean isRepeatable() {
        return this.repeatable;
    }

    public void setAggregate(boolean z) {
        this.aggregate = z;
    }

    public final boolean isAggregate() {
        return this.aggregate;
    }

    public void setArbitraryXml(boolean z) {
        this.arbitraryXml = z;
    }

    public final boolean allowsArbitraryXml() {
        return this.arbitraryXml;
    }

    public void setMixedContent(boolean z) {
        this.mixedContent = z;
    }

    public final boolean allowsMixedContent() {
        return this.mixedContent;
    }

    @Override // java.lang.Comparable
    public int compareTo(ExtensionDescription extensionDescription) {
        String uri = this.namespace.getUri();
        if (uri == null) {
            uri = "";
        }
        String uri2 = extensionDescription.namespace.getUri();
        if (uri2 == null) {
            uri2 = "";
        }
        int iCompareTo = uri.compareTo(uri2);
        return iCompareTo != 0 ? iCompareTo : this.localName.compareTo(extensionDescription.localName);
    }

    public class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile, ClassLoader classLoader, List<XmlNamespace> list, Attributes attributes) throws ParseException {
            super(ExtensionDescription.this, extensionProfile, ExtensionDescription.class);
            String value = attributes.getValue("", "namespace");
            if (value == null) {
                throw new ParseException(CoreErrorDomain.ERR.missingNamespace);
            }
            for (XmlNamespace xmlNamespace : list) {
                if (xmlNamespace.getAlias().equals(value) || xmlNamespace.getUri().equals(value)) {
                    ExtensionDescription.this.namespace = xmlNamespace;
                    break;
                }
            }
            if (ExtensionDescription.this.namespace != null) {
                ExtensionDescription.this.localName = attributes.getValue("", "localName");
                if (ExtensionDescription.this.localName == null) {
                    throw new ParseException(CoreErrorDomain.ERR.missingLocalName);
                }
                String value2 = attributes.getValue("", "extensionClass");
                if (value2 == null) {
                    throw new ParseException(CoreErrorDomain.ERR.missingExtensionClass);
                }
                try {
                    Class<?> clsLoadClass = classLoader.loadClass(value2);
                    if (Extension.class.isAssignableFrom(clsLoadClass)) {
                        ExtensionDescription.this.extensionClass = clsLoadClass;
                        Boolean booleanAttribute = getBooleanAttribute(attributes, "required");
                        ExtensionDescription.this.required = booleanAttribute != null && booleanAttribute.booleanValue();
                        Boolean booleanAttribute2 = getBooleanAttribute(attributes, "repeatable");
                        ExtensionDescription.this.repeatable = booleanAttribute2 != null && booleanAttribute2.booleanValue();
                        Boolean booleanAttribute3 = getBooleanAttribute(attributes, "aggregate");
                        ExtensionDescription.this.aggregate = booleanAttribute3 != null && booleanAttribute3.booleanValue();
                        Boolean booleanAttribute4 = getBooleanAttribute(attributes, "arbitraryXml");
                        ExtensionDescription.this.arbitraryXml = booleanAttribute4 != null && booleanAttribute4.booleanValue();
                        Boolean booleanAttribute5 = getBooleanAttribute(attributes, "mixedContent");
                        ExtensionDescription.this.mixedContent = booleanAttribute5 != null && booleanAttribute5.booleanValue();
                        return;
                    }
                    throw new ParseException(CoreErrorDomain.ERR.mustImplementExtension);
                } catch (ClassNotFoundException e2) {
                    ParseException parseException = new ParseException(CoreErrorDomain.ERR.cantLoadExtensionClass, e2);
                    parseException.setInternalReason("Unable to load extensionClass: " + value2);
                    throw parseException;
                }
            }
            ParseException parseException2 = new ParseException(CoreErrorDomain.ERR.missingNamespaceDescription);
            parseException2.setInternalReason("No matching NamespaceDescription for " + value);
            throw parseException2;
        }
    }

    public void generateConfig(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new XmlWriter.Attribute("namespace", this.namespace.getUri()));
        arrayList.add(new XmlWriter.Attribute("localName", this.localName));
        arrayList.add(new XmlWriter.Attribute("extensionClass", this.extensionClass.getName()));
        arrayList.add(new XmlWriter.Attribute("required", this.required));
        arrayList.add(new XmlWriter.Attribute("repeatable", this.repeatable));
        arrayList.add(new XmlWriter.Attribute("aggregate", this.aggregate));
        arrayList.add(new XmlWriter.Attribute("arbitraryXml", this.arbitraryXml));
        arrayList.add(new XmlWriter.Attribute("mixedContent", this.mixedContent));
        generateStartElement(xmlWriter, Namespaces.gdataConfigNs, "extensionDescription", arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gdataConfigNs, "extensionDescription");
    }
}
