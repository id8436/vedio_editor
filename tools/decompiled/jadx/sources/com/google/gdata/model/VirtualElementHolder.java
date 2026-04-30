package com.google.gdata.model;

import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.PathAdapter;

/* JADX INFO: loaded from: classes3.dex */
class VirtualElementHolder {
    private final ElementMetadata.MultipleVirtualElement multiple;
    private final ElementMetadata.SingleVirtualElement single;

    static VirtualElementHolder of(ElementMetadata.SingleVirtualElement singleVirtualElement) {
        if (singleVirtualElement == null) {
            return null;
        }
        return new VirtualElementHolder(singleVirtualElement, null);
    }

    static VirtualElementHolder of(ElementMetadata.MultipleVirtualElement multipleVirtualElement) {
        if (multipleVirtualElement == null) {
            return null;
        }
        return new VirtualElementHolder(null, multipleVirtualElement);
    }

    static VirtualElementHolder of(Path path) {
        if (path == null) {
            return null;
        }
        PathAdapter.ElementAdapter elementAdapter = PathAdapter.elementAdapter(path);
        return new VirtualElementHolder(elementAdapter, elementAdapter);
    }

    private VirtualElementHolder(ElementMetadata.SingleVirtualElement singleVirtualElement, ElementMetadata.MultipleVirtualElement multipleVirtualElement) {
        this.single = singleVirtualElement;
        this.multiple = multipleVirtualElement;
    }

    ElementMetadata.SingleVirtualElement getSingleVirtualElement() {
        return this.single;
    }

    ElementMetadata.MultipleVirtualElement getMultipleVirtualElement() {
        return this.multiple;
    }
}
