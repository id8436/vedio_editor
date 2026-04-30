package com.google.gdata.model;

import com.google.gdata.model.Metadata;

/* JADX INFO: loaded from: classes3.dex */
final class AttributeCreatorImpl extends MetadataCreatorImpl implements AttributeCreator {
    AttributeCreatorImpl(MetadataRegistry metadataRegistry, TransformKey transformKey) {
        super(metadataRegistry, transformKey);
    }

    AttributeTransform toTransform() {
        return AttributeTransform.create(this);
    }

    @Override // com.google.gdata.model.MetadataCreatorImpl, com.google.gdata.model.MetadataCreator
    public AttributeCreatorImpl setName(QName qName) {
        return (AttributeCreatorImpl) super.setName(qName);
    }

    @Override // com.google.gdata.model.MetadataCreatorImpl, com.google.gdata.model.MetadataCreator
    public AttributeCreatorImpl setRequired(boolean z) {
        return (AttributeCreatorImpl) super.setRequired(z);
    }

    @Override // com.google.gdata.model.MetadataCreatorImpl, com.google.gdata.model.MetadataCreator
    public AttributeCreatorImpl setVisible(boolean z) {
        return (AttributeCreatorImpl) super.setVisible(z);
    }

    @Override // com.google.gdata.model.MetadataCreatorImpl, com.google.gdata.model.MetadataCreator
    public AttributeCreatorImpl setVirtualValue(Metadata.VirtualValue virtualValue) {
        return (AttributeCreatorImpl) super.setVirtualValue(virtualValue);
    }

    @Override // com.google.gdata.model.MetadataCreatorImpl
    void setSource(Path path, TransformKey transformKey) {
        super.setSource(path, transformKey);
        setVirtualValue((Metadata.VirtualValue) PathAdapter.valueAdapter(path));
    }
}
