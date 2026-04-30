package com.google.gdata.wireformats;

import com.google.gdata.model.Attribute;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.ElementVisitor;
import com.google.gdata.model.Metadata;
import com.google.gdata.model.QName;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class XmlGenerator implements ElementVisitor, WireFormatGenerator {
    private final XmlNamespace defaultNamespace;
    protected final ElementMetadata<?, ?> rootMetadata;
    protected final XmlWriter xw;
    private static final XmlNamespace USE_ROOT_ELEMENT_NAMESPACE = new XmlNamespace("__USE_ROOT_ELEMENT_NAMESPACE__");
    private static final ElementGenerator DEFAULT_GENERATOR = new XmlElementGenerator();

    public interface ElementGenerator {
        void endElement(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) throws IOException;

        boolean startElement(XmlWriter xmlWriter, Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws IOException;

        void textContent(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) throws IOException;
    }

    public XmlGenerator(StreamProperties streamProperties, Writer writer, Charset charset, boolean z) {
        this(streamProperties, writer, charset, z, USE_ROOT_ELEMENT_NAMESPACE);
    }

    public XmlGenerator(StreamProperties streamProperties, Writer writer, Charset charset, boolean z, XmlNamespace xmlNamespace) {
        EnumSet enumSetOf = EnumSet.of(XmlWriter.WriterFlags.WRITE_HEADER);
        if (z) {
            enumSetOf.add(XmlWriter.WriterFlags.PRETTY_PRINT);
        }
        try {
            this.xw = new XmlWriter(writer, enumSetOf, charset.name());
            this.rootMetadata = streamProperties.getRootMetadata();
            this.defaultNamespace = xmlNamespace;
        } catch (IOException e2) {
            throw new RuntimeException("Unable to create XML generator", e2);
        }
    }

    public class XmlElementGenerator implements ElementGenerator {
        @Override // com.google.gdata.wireformats.XmlGenerator.ElementGenerator
        public boolean startElement(XmlWriter xmlWriter, Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws IOException {
            Collection<XmlNamespace> namespaces = getNamespaces(element, element2, elementMetadata);
            List<XmlWriter.Attribute> attributes = getAttributes(element2, elementMetadata);
            QName name = getName(element2, elementMetadata);
            xmlWriter.startElement(name.getNs(), name.getLocalName(), attributes, namespaces);
            return true;
        }

        protected QName getName(Element element, ElementMetadata<?, ?> elementMetadata) {
            return elementMetadata == null ? element.getElementId() : elementMetadata.getName();
        }

        protected Collection<XmlNamespace> getNamespaces(Element element, Element element2, ElementMetadata<?, ?> elementMetadata) {
            if (element == null) {
                return GeneratorUtils.calculateNamespaces(element2, elementMetadata).values();
            }
            return null;
        }

        protected List<XmlWriter.Attribute> getAttributes(Element element, ElementMetadata<?, ?> elementMetadata) {
            Iterator<Attribute> attributeIterator = element.getAttributeIterator(elementMetadata);
            if (!attributeIterator.hasNext()) {
                return null;
            }
            element.getElementKey();
            ArrayList arrayList = new ArrayList();
            while (attributeIterator.hasNext()) {
                Attribute next = attributeIterator.next();
                AttributeKey attributeKey = next.getAttributeKey();
                Metadata metadataBindAttribute = elementMetadata == null ? null : elementMetadata.bindAttribute(attributeKey);
                QName name = metadataBindAttribute != null ? metadataBindAttribute.getName() : attributeKey.getId();
                arrayList.add(new XmlWriter.Attribute(name.getNs() != null ? name.getNs().getAlias() : null, name.getLocalName(), next.getValue().toString()));
            }
            return arrayList;
        }

        @Override // com.google.gdata.wireformats.XmlGenerator.ElementGenerator
        public void textContent(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) throws IOException {
            Object textValue = elementMetadata == null ? element.getTextValue() : elementMetadata.generateValue(element, elementMetadata);
            if (textValue != null) {
                String string = textValue.toString();
                if (string.length() > 0) {
                    xmlWriter.characters(string);
                }
            }
        }

        @Override // com.google.gdata.wireformats.XmlGenerator.ElementGenerator
        public void endElement(XmlWriter xmlWriter, Element element, ElementMetadata<?, ?> elementMetadata) throws IOException {
            QName name = getName(element, elementMetadata);
            xmlWriter.endElement(name.getNs(), name.getLocalName());
        }
    }

    @Override // com.google.gdata.wireformats.WireFormatGenerator
    public void generate(Element element) throws IOException {
        generate(element, this.rootMetadata);
    }

    public void generate(Element element, ElementMetadata<?, ?> elementMetadata) throws IOException {
        if (elementMetadata != null && !elementMetadata.getKey().equals(element.getElementKey())) {
            throw new IllegalStateException("Element key (" + element.getElementKey() + ") does not match metadata key (" + elementMetadata.getKey() + ")");
        }
        try {
            element.visit(this, elementMetadata);
        } catch (ElementVisitor.StoppedException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            throw e2;
        }
    }

    private ElementGenerator getElementGenerator(ElementMetadata<?, ?> elementMetadata) {
        XmlWireFormatProperties xmlWireFormatProperties;
        ElementGenerator elementGenerator;
        return (elementMetadata == null || (xmlWireFormatProperties = (XmlWireFormatProperties) elementMetadata.getProperties()) == null || (elementGenerator = xmlWireFormatProperties.getElementGenerator()) == null) ? DEFAULT_GENERATOR : elementGenerator;
    }

    @Override // com.google.gdata.model.ElementVisitor
    public boolean visit(Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws ElementVisitor.StoppedException {
        if (element == null) {
            try {
                setRootNamespace(elementMetadata, element2);
            } catch (IOException e2) {
                throw new ElementVisitor.StoppedException(e2);
            }
        }
        if (elementMetadata == null || elementMetadata.isSelected(element2)) {
            return getElementGenerator(elementMetadata).startElement(this.xw, element, element2, elementMetadata);
        }
        return false;
    }

    private void setRootNamespace(ElementMetadata<?, ?> elementMetadata, Element element) {
        XmlNamespace ns = this.defaultNamespace;
        if (ns == USE_ROOT_ELEMENT_NAMESPACE) {
            if (elementMetadata != null) {
                ns = elementMetadata.getDefaultNamespace();
            } else {
                ns = element.getElementId().getNs();
            }
        }
        if (ns != null) {
            this.xw.setDefaultNamespace(ns);
        }
    }

    @Override // com.google.gdata.model.ElementVisitor
    public void visitComplete(Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws ElementVisitor.StoppedException {
        if (elementMetadata != null) {
            try {
                if (!elementMetadata.isSelected(element2)) {
                    return;
                }
            } catch (IOException e2) {
                throw new ElementVisitor.StoppedException(e2);
            }
        }
        ElementGenerator elementGenerator = getElementGenerator(elementMetadata);
        elementGenerator.textContent(this.xw, element2, elementMetadata);
        elementGenerator.endElement(this.xw, element2, elementMetadata);
    }
}
