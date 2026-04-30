package com.google.gdata.model;

import com.google.gdata.client.CoreErrorDomain;

/* JADX INFO: loaded from: classes3.dex */
public class MetadataValidator implements ElementValidator {
    @Override // com.google.gdata.model.ElementValidator
    public void validate(ValidationContext validationContext, Element element, ElementMetadata<?, ?> elementMetadata) {
        MetadataKey key = elementMetadata.getKey();
        if (element.hasTextValue()) {
            if (key.getDatatype() == Void.class) {
                validationContext.addError(element, CoreErrorDomain.ERR.invalidTextContent.withInternalReason("Element " + key.getId() + " must not contain text content."));
            }
        } else if (key.getDatatype() != Void.class && elementMetadata.isContentRequired()) {
            validationContext.addError(element, CoreErrorDomain.ERR.missingTextContent.withInternalReason("Element " + key.getId() + " must contain a text content value."));
        }
        for (AttributeKey<?> attributeKey : elementMetadata.getAttributes()) {
            if (elementMetadata.bindAttribute(attributeKey).isRequired() && element.getAttributeValue(attributeKey) == null) {
                validationContext.addError(element, CoreErrorDomain.ERR.missingAttribute.withInternalReason("Element must contain value for attribute " + attributeKey.getId()));
            }
        }
        for (ElementKey<?, ?> elementKey : elementMetadata.getElements()) {
            if (elementMetadata.bindElement(elementKey).isRequired() && !element.hasElement(elementKey)) {
                validationContext.addError(element, CoreErrorDomain.ERR.missingExtensionElement.withInternalReason("Element must contain a child named " + elementKey.getId()));
            }
        }
    }
}
