package com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeEditSelectedLibraryElementsController {
    private static AdobeEditSelectedLibraryElementsController editController;
    private List<AdobeLibraryElementWithParent> targetAssets;

    private AdobeEditSelectedLibraryElementsController() {
    }

    public static AdobeEditSelectedLibraryElementsController sharedController() {
        if (editController == null) {
            editController = new AdobeEditSelectedLibraryElementsController();
        }
        return editController;
    }

    public void setTargetAssets(List<AdobeLibraryElementWithParent> list) {
        this.targetAssets = list;
    }

    public void setTargetAssets(AdobeLibraryElementWithParent adobeLibraryElementWithParent) {
        this.targetAssets = new ArrayList();
        this.targetAssets.add(adobeLibraryElementWithParent);
    }

    public List<AdobeLibraryElementWithParent> getTargetAssets() {
        return this.targetAssets;
    }

    public static void clearSelection() {
        editController = null;
    }
}
