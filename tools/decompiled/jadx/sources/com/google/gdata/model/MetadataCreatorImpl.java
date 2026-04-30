package com.google.gdata.model;

import com.google.gdata.model.Metadata;
import com.google.gdata.util.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
abstract class MetadataCreatorImpl implements MetadataCreator {
    private boolean isMoved;
    private QName name;
    private Path path;
    final MetadataRegistry registry;
    private Boolean required;
    private TransformKey source;
    final TransformKey transformKey;
    private Metadata.VirtualValue virtualValue;
    private Boolean visible;

    MetadataCreatorImpl(MetadataRegistry metadataRegistry, TransformKey transformKey) {
        this.registry = metadataRegistry;
        this.transformKey = transformKey;
    }

    void merge(MetadataCreatorImpl metadataCreatorImpl) {
        Preconditions.checkNotNull(metadataCreatorImpl, "other");
        if (metadataCreatorImpl.name != null) {
            this.name = metadataCreatorImpl.name;
        }
        if (metadataCreatorImpl.required != null) {
            this.required = metadataCreatorImpl.required;
        }
        if (metadataCreatorImpl.visible != null) {
            this.visible = metadataCreatorImpl.visible;
        }
        if (metadataCreatorImpl.virtualValue != null) {
            this.virtualValue = metadataCreatorImpl.virtualValue;
        }
        if (metadataCreatorImpl.source != null) {
            this.source = metadataCreatorImpl.source;
        }
        if (metadataCreatorImpl.path != null) {
            this.path = metadataCreatorImpl.path;
        }
        if (metadataCreatorImpl.isMoved) {
            this.isMoved = true;
        }
    }

    @Override // com.google.gdata.model.MetadataCreator
    public MetadataCreatorImpl setName(QName qName) {
        synchronized (this.registry) {
            this.name = qName;
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.MetadataCreator
    public MetadataCreatorImpl setRequired(boolean z) {
        synchronized (this.registry) {
            this.required = Boolean.valueOf(z);
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.MetadataCreator
    public MetadataCreatorImpl setVisible(boolean z) {
        synchronized (this.registry) {
            this.visible = Boolean.valueOf(z);
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.MetadataCreator
    public MetadataCreatorImpl setVirtualValue(Metadata.VirtualValue virtualValue) {
        synchronized (this.registry) {
            this.virtualValue = virtualValue;
            this.registry.dirty();
        }
        return this;
    }

    void setSource(Path path, TransformKey transformKey) {
        synchronized (this.registry) {
            this.path = path;
            this.source = transformKey;
            this.registry.dirty();
            if (this.required == null) {
                setRequired(false);
            }
        }
    }

    MetadataCreatorImpl moved() {
        synchronized (this.registry) {
            this.isMoved = true;
            this.registry.dirty();
        }
        return this;
    }

    TransformKey getTransformKey() {
        return this.transformKey;
    }

    QName getName() {
        return this.name;
    }

    Boolean getRequired() {
        return this.required;
    }

    Boolean getVisible() {
        return this.visible;
    }

    Metadata.VirtualValue getVirtualValue() {
        return this.virtualValue;
    }

    TransformKey getSource() {
        return this.source;
    }

    public Path getPath() {
        return this.path;
    }

    boolean isMoved() {
        return this.isMoved;
    }
}
