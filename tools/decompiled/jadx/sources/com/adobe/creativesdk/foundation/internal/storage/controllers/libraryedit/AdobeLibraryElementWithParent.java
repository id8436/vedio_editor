package com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit;

import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibraryElementWithParent {
    private AdobeLibraryComposite libraryComposite;
    private AdobeLibraryElement libraryElement;

    public AdobeLibraryElementWithParent(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) {
        setLibraryElement(adobeLibraryElement);
        setLibraryComposite(adobeLibraryComposite);
    }

    public AdobeLibraryComposite getLibraryComposite() {
        return this.libraryComposite;
    }

    public void setLibraryComposite(AdobeLibraryComposite adobeLibraryComposite) {
        this.libraryComposite = adobeLibraryComposite;
    }

    public AdobeLibraryElement getLibraryElement() {
        return this.libraryElement;
    }

    public void setLibraryElement(AdobeLibraryElement adobeLibraryElement) {
        this.libraryElement = adobeLibraryElement;
    }
}
