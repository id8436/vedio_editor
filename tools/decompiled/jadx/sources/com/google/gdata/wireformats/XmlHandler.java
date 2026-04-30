package com.google.gdata.wireformats;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.QName;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlBlob;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.wireformats.XmlParser;
import java.io.IOException;
import java.util.List;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class XmlHandler extends XmlParser.ElementHandler {
    protected final Element element;
    protected final ElementMetadata<?, ?> metadata;
    protected final Element parentElement;
    protected final ValidationContext vc;

    @Override // com.google.gdata.wireformats.XmlParser.ElementHandler
    public /* bridge */ /* synthetic */ String getAbsoluteUri(String str) throws ParseException {
        return super.getAbsoluteUri(str);
    }

    @Override // com.google.gdata.wireformats.XmlParser.ElementHandler
    public /* bridge */ /* synthetic */ Boolean getBooleanAttribute(Attributes attributes, String str) throws ParseException {
        return super.getBooleanAttribute(attributes, str);
    }

    @Override // com.google.gdata.wireformats.XmlParser.ElementHandler
    public /* bridge */ /* synthetic */ XmlParser.ElementHandler getChildHandler(QName qName, Attributes attributes, List list) throws ParseException, IOException {
        return getChildHandler(qName, attributes, (List<XmlNamespace>) list);
    }

    @Override // com.google.gdata.wireformats.XmlParser.ElementHandler
    public /* bridge */ /* synthetic */ void initializeXmlBlob(XmlBlob xmlBlob, boolean z, boolean z2) throws IOException {
        super.initializeXmlBlob(xmlBlob, z, z2);
    }

    public XmlHandler(ValidationContext validationContext, Element element, Element element2, ElementMetadata<?, ?> elementMetadata) {
        this.vc = validationContext;
        this.parentElement = element;
        this.element = element2;
        this.metadata = elementMetadata;
    }

    public Element getElement() {
        return this.element;
    }

    @Override // com.google.gdata.wireformats.XmlParser.ElementHandler
    public void processAttribute(QName qName, String str) throws ParseException {
        if (this.element.hasAttribute(qName)) {
            throw new ParseException(CoreErrorDomain.ERR.duplicateAttributeValue.withInternalReason("Duplicate value for attribute " + qName));
        }
        AttributeKey<?> attributeKeyFindAttribute = this.metadata == null ? null : this.metadata.findAttribute(qName);
        if (attributeKeyFindAttribute != null) {
            this.element.setAttributeValue(attributeKeyFindAttribute, ObjectConverter.getValue(str, (Class) attributeKeyFindAttribute.getDatatype()));
        } else {
            this.element.setAttributeValue(qName, str);
        }
    }

    @Override // com.google.gdata.wireformats.XmlParser.ElementHandler
    public XmlHandler getChildHandler(QName qName, Attributes attributes, List<XmlNamespace> list) throws ParseException, IOException {
        Element element;
        ElementMetadata<?, ?> elementMetadataFindMetadata = findMetadata(qName);
        Element elementCreateChildElement = createChildElement(qName, elementMetadataFindMetadata);
        if (elementMetadataFindMetadata != null && elementMetadataFindMetadata.getCardinality() == ElementMetadata.Cardinality.SET) {
            element = this.element;
        } else {
            this.element.addElement(elementCreateChildElement);
            element = null;
        }
        return createHandler(qName, element, elementCreateChildElement, elementMetadataFindMetadata);
    }

    protected XmlHandler createHandler(QName qName, Element element, Element element2, ElementMetadata<?, ?> elementMetadata) {
        return new XmlHandler(this.vc, element, element2, elementMetadata);
    }

    protected ElementMetadata<?, ?> findMetadata(QName qName) {
        ElementKey<?, ?> elementKeyFindElement;
        if (this.metadata == null || (elementKeyFindElement = this.metadata.findElement(qName)) == null) {
            return null;
        }
        return this.metadata.bindElement(elementKeyFindElement);
    }

    protected Element createChildElement(QName qName, ElementMetadata<?, ?> elementMetadata) throws ParseException {
        if (elementMetadata == null) {
            return new Element(qName);
        }
        try {
            return elementMetadata.createElement();
        } catch (ContentCreationException e2) {
            throw new ParseException(e2);
        }
    }

    @Override // com.google.gdata.wireformats.XmlParser.ElementHandler
    public void processEndElement() throws ParseException {
        if (this.value != null) {
            this.value = this.value.trim();
            if (!this.value.equals("")) {
                this.element.setTextValue(ObjectConverter.getValue(this.value, (Class) this.element.getElementKey().getDatatype()));
            }
        }
        if (this.parentElement != null) {
            this.parentElement.addElement(this.element);
        }
    }
}
