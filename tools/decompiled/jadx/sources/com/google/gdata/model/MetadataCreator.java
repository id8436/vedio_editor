package com.google.gdata.model;

import com.google.gdata.model.Metadata;

/* JADX INFO: loaded from: classes3.dex */
public interface MetadataCreator {
    MetadataCreator setName(QName qName);

    MetadataCreator setRequired(boolean z);

    MetadataCreator setVirtualValue(Metadata.VirtualValue virtualValue);

    MetadataCreator setVisible(boolean z);
}
