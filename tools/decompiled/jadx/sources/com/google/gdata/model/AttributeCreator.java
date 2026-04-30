package com.google.gdata.model;

import com.google.gdata.model.Metadata;

/* JADX INFO: loaded from: classes3.dex */
public interface AttributeCreator extends MetadataCreator {
    @Override // com.google.gdata.model.MetadataCreator
    AttributeCreator setName(QName qName);

    @Override // com.google.gdata.model.MetadataCreator
    AttributeCreator setRequired(boolean z);

    @Override // com.google.gdata.model.MetadataCreator
    AttributeCreator setVirtualValue(Metadata.VirtualValue virtualValue);

    @Override // com.google.gdata.model.MetadataCreator
    AttributeCreator setVisible(boolean z);
}
