package com.google.gdata.model;

import com.google.gdata.model.Metadata;

/* JADX INFO: loaded from: classes3.dex */
abstract class Transform {
    private final boolean isMoved;
    private final QName name;
    private final Path path;
    private final Boolean required;
    private final TransformKey source;
    private final Metadata.VirtualValue virtualValue;
    private final Boolean visible;

    Transform() {
        this.name = null;
        this.required = null;
        this.visible = null;
        this.virtualValue = null;
        this.source = null;
        this.path = null;
        this.isMoved = false;
    }

    Transform(MetadataCreatorImpl metadataCreatorImpl) {
        this.name = metadataCreatorImpl.getName();
        this.required = metadataCreatorImpl.getRequired();
        this.visible = metadataCreatorImpl.getVisible();
        this.virtualValue = metadataCreatorImpl.getVirtualValue();
        this.source = metadataCreatorImpl.getSource();
        this.path = metadataCreatorImpl.getPath();
        this.isMoved = metadataCreatorImpl.isMoved();
    }

    Transform(Iterable<? extends Transform> iterable) {
        Path path = null;
        boolean z = false;
        TransformKey transformKey = null;
        Metadata.VirtualValue virtualValue = null;
        Boolean bool = null;
        Boolean bool2 = null;
        QName qName = null;
        for (Transform transform : iterable) {
            qName = transform.name != null ? transform.name : qName;
            bool2 = transform.required != null ? transform.required : bool2;
            bool = transform.visible != null ? transform.visible : bool;
            virtualValue = transform.virtualValue != null ? transform.virtualValue : virtualValue;
            transformKey = transform.source != null ? transform.source : transformKey;
            path = transform.path != null ? transform.path : path;
            z = transform.isMoved ? true : z;
        }
        this.name = qName;
        this.required = bool2;
        this.visible = bool;
        this.virtualValue = virtualValue;
        this.source = transformKey;
        this.path = path;
        this.isMoved = z;
    }

    Transform(Transform transform, Transform transform2) {
        this.name = (QName) first(transform.name, transform2.name);
        this.required = transform.required;
        this.visible = (Boolean) first(transform.visible, transform2.visible);
        this.virtualValue = (Metadata.VirtualValue) first(transform.virtualValue, transform2.virtualValue);
        this.path = transform.path;
        this.isMoved = transform.isMoved;
        this.source = null;
    }

    static <T> T first(T... tArr) {
        for (T t : tArr) {
            if (t != null) {
                return t;
            }
        }
        return null;
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

    Path getPath() {
        return this.path;
    }

    boolean isMoved() {
        return this.isMoved;
    }

    boolean isEmpty() {
        return this.name == null && this.required == null && this.visible == null && this.virtualValue == null && this.source == null && this.path == null && !this.isMoved;
    }
}
