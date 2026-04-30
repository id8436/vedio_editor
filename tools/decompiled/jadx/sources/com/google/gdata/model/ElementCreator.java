package com.google.gdata.model;

import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.Metadata;

/* JADX INFO: loaded from: classes3.dex */
public interface ElementCreator extends MetadataCreator {
    ElementCreator adapt(String str, ElementKey<?, ?> elementKey);

    AttributeCreator addAttribute(AttributeKey<?> attributeKey);

    ElementCreator addElement(ElementKey<?, ?> elementKey);

    ElementCreator addUndeclaredAttributeMarker();

    ElementCreator addUndeclaredElementMarker();

    ElementCreator blacklistElements(ElementKey<?, ?>... elementKeyArr);

    ElementCreator flatten();

    AttributeCreator moveAttribute(AttributeKey<?> attributeKey, Path path);

    ElementCreator moveElement(ElementKey<?, ?> elementKey, Path path);

    ElementCreator orderAndWhitelistAttributes(AttributeKey<?>... attributeKeyArr);

    ElementCreator orderAndWhitelistElements(ElementKey<?, ?>... elementKeyArr);

    AttributeCreator replaceAttribute(AttributeKey<?> attributeKey);

    ElementCreator replaceElement(ElementKey<?, ?> elementKey);

    ElementCreator setCardinality(ElementMetadata.Cardinality cardinality);

    ElementCreator setContentRequired(boolean z);

    ElementCreator setMultipleVirtualElement(ElementMetadata.MultipleVirtualElement multipleVirtualElement);

    @Override // com.google.gdata.model.MetadataCreator
    ElementCreator setName(QName qName);

    ElementCreator setProperties(Object obj);

    @Override // com.google.gdata.model.MetadataCreator
    ElementCreator setRequired(boolean z);

    ElementCreator setSingleVirtualElement(ElementMetadata.SingleVirtualElement singleVirtualElement);

    ElementCreator setValidator(ElementValidator elementValidator);

    @Override // com.google.gdata.model.MetadataCreator
    ElementCreator setVirtualValue(Metadata.VirtualValue virtualValue);

    @Override // com.google.gdata.model.MetadataCreator
    ElementCreator setVisible(boolean z);

    ElementCreator whitelistAttributes(AttributeKey<?>... attributeKeyArr);

    ElementCreator whitelistElements(ElementKey<?, ?>... elementKeyArr);
}
