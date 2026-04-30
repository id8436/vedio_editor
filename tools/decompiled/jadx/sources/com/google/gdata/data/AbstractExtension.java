package com.google.gdata.data;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractExtension implements Extension {
    private static ThreadLocal<Boolean> strictValidation = new ThreadLocal<Boolean>() { // from class: com.google.gdata.data.AbstractExtension.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public Boolean initialValue() {
            return Boolean.TRUE;
        }
    };
    private boolean immutable;
    protected final String localName;
    protected final XmlNamespace namespace;

    public static final boolean isStrictValidation() {
        return strictValidation.get().booleanValue();
    }

    public static final void enableStrictValidation() {
        strictValidation.set(Boolean.TRUE);
    }

    public static final void disableStrictValidation() {
        strictValidation.set(Boolean.FALSE);
    }

    public final boolean isImmutable() {
        return this.immutable;
    }

    public final void setImmutable(boolean z) {
        this.immutable = z;
    }

    protected AbstractExtension() {
        ExtensionDescription.Default r0 = (ExtensionDescription.Default) getClass().getAnnotation(ExtensionDescription.Default.class);
        if (r0 != null) {
            this.namespace = new XmlNamespace(r0.nsAlias(), r0.nsUri());
            this.localName = r0.localName();
        } else {
            this.namespace = null;
            this.localName = null;
        }
    }

    protected AbstractExtension(XmlNamespace xmlNamespace, String str) {
        this.namespace = xmlNamespace;
        this.localName = str;
    }

    public final XmlNamespace getExtensionNamespace() {
        return this.namespace;
    }

    public final String getExtensionLocalName() {
        return this.localName;
    }

    protected void validate() throws IllegalStateException {
    }

    protected void putAttributes(AttributeGenerator attributeGenerator) {
    }

    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
    }

    protected void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile, XmlNamespace xmlNamespace, String str, List<XmlWriter.Attribute> list, AttributeGenerator attributeGenerator) throws IOException {
        xmlWriter.simpleElement(xmlNamespace, str, list, attributeGenerator.getContent());
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        if (this.namespace == null) {
            String name = getClass().getName();
            throw new IllegalStateException("No @ExtensionDescription.Default annotation found on subclass " + name.substring(name.lastIndexOf(46) + 1));
        }
        if (isStrictValidation()) {
            validate();
        }
        AttributeGenerator attributeGenerator = new AttributeGenerator();
        putAttributes(attributeGenerator);
        ArrayList arrayList = new ArrayList();
        generateAttributes(arrayList, attributeGenerator);
        generate(xmlWriter, extensionProfile, this.namespace, this.localName, arrayList, attributeGenerator);
    }

    protected void generateAttributes(List<XmlWriter.Attribute> list, AttributeGenerator attributeGenerator) {
        for (Map.Entry<String, String> entry : attributeGenerator.entrySet()) {
            String value = entry.getValue();
            if (value != null) {
                list.add(new XmlWriter.Attribute(entry.getKey(), value));
            }
        }
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException {
        return new AttributesHandler(attributes);
    }

    public class AttributesHandler extends XmlParser.ElementHandler {
        private final AttributeHelper helper;

        public AttributesHandler(Attributes attributes) {
            this.helper = attributes == null ? null : new AttributeHelper(attributes);
            if (AbstractExtension.this.immutable) {
                throw new IllegalStateException("Cannot parse into immutable instance");
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (this.helper != null) {
                this.helper.setContent(this.value);
                AbstractExtension.this.consumeAttributes(this.helper);
            }
            if (AbstractExtension.isStrictValidation()) {
                try {
                    AbstractExtension.this.validate();
                } catch (IllegalStateException e2) {
                    throw new ParseException(e2.getMessage(), e2);
                }
            }
        }
    }

    protected final void throwExceptionIfImmutable() {
        if (this.immutable) {
            throw new IllegalStateException(this.localName + " instance is read only");
        }
    }

    protected static final void throwExceptionForMissingAttribute(String str) {
        throw new IllegalStateException("Missing attribute: " + str);
    }

    protected boolean sameClassAs(Object obj) {
        return obj != null && getClass().equals(obj.getClass());
    }

    protected static boolean eq(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }
}
