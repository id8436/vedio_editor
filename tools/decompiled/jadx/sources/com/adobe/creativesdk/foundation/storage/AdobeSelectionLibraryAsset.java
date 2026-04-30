package com.adobe.creativesdk.foundation.storage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AdobeSelectionLibraryAsset extends AdobeSelection {
    protected ArrayList<String> selected3DLightIDs;
    protected ArrayList<String> selected3DMaterialIDs;
    protected ArrayList<String> selected3DModelIDs;
    protected ArrayList<String> selectedAnimationIDs;
    protected ArrayList<String> selectedColorIDs;
    protected ArrayList<String> selectedColorThemeIDs;
    AdobeLibraryComposite selectedComponent;
    ArrayList<String> selectedElementIDs;
    ArrayList<AdobeLibraryElement> selectedElements;
    protected ArrayList<String> selectedImageIDs;
    AdobeAssetLibrary selectedItem;
    String selectedLibraryID;
    protected ArrayList<String> selectedPatternIDs;
    protected ArrayList<String> selectedTemplateIDs;

    @Deprecated
    public AdobeAssetLibrary getSelectedItem() {
        return this.selectedItem;
    }

    @Deprecated
    public ArrayList<String> getSelectedColorIDs() {
        return filterAndConvertToIds(AdobeDesignLibraryUtils.AdobeDesignLibraryColorElementType);
    }

    @Deprecated
    public ArrayList<String> getSelectedColorThemeIDs() {
        return filterAndConvertToIds(AdobeDesignLibraryUtils.AdobeDesignLibraryColorThemeElementType);
    }

    @Deprecated
    public ArrayList<String> getSelectedImageIDs() {
        return filterAndConvertToIds(AdobeDesignLibraryUtils.AdobeDesignLibraryImageElementType);
    }

    @Deprecated
    public ArrayList<String> getSelectedPatternIDs() {
        return filterAndConvertToIds(AdobeDesignLibraryUtils.AdobeDesignLibraryPatternElementType);
    }

    @Deprecated
    public ArrayList<String> getSelectedTemplateIDs() {
        return filterAndConvertToIds(AdobeDesignLibraryUtils.AdobeDesignLibraryTemplateElementType);
    }

    @Deprecated
    public ArrayList<String> getSelected3DMaterialIDs() {
        return filterAndConvertToIds(AdobeDesignLibraryUtils.AdobeDesignLibrary3DMaterialElementType);
    }

    @Deprecated
    public ArrayList<String> getSelected3DLightIDs() {
        return filterAndConvertToIds(AdobeDesignLibraryUtils.AdobeDesignLibrary3DLightElementType);
    }

    @Deprecated
    public ArrayList<String> getSelected3DModelIDs() {
        return filterAndConvertToIds(AdobeDesignLibraryUtils.AdobeDesignLibrary3DModelElementType);
    }

    @Deprecated
    public ArrayList<String> getSelectedAnimationIDs() {
        return filterAndConvertToIds(AdobeDesignLibraryUtils.AdobeDesignLibraryAnimationElementType);
    }

    @Deprecated
    protected AdobeSelectionLibraryAsset(AdobeAssetLibrary adobeAssetLibrary) {
        this.selectedItem = adobeAssetLibrary;
        this.selectedComponent = AdobeLibraryManager.getSharedInstance().getLibraryWithId(adobeAssetLibrary.getId());
    }

    @Deprecated
    protected void setSelectedColorIDs(ArrayList<String> arrayList) {
        this.selectedColorIDs = arrayList;
    }

    @Deprecated
    protected void setSelectedColorThemeIDs(ArrayList<String> arrayList) {
        this.selectedColorThemeIDs = arrayList;
    }

    @Deprecated
    protected void setSelectedImageIDs(ArrayList<String> arrayList) {
        this.selectedImageIDs = arrayList;
    }

    public ArrayList<String> getselectedElementIDs() {
        return this.selectedElementIDs;
    }

    public String getSelectedLibraryID() {
        return this.selectedComponent.getLibraryId();
    }

    ArrayList<String> getSelectedElementIDs() {
        return filterAndConvertToIds(null);
    }

    ArrayList<String> filterAndConvertToIds(String str) {
        AdobeLibraryElementFilter adobeLibraryElementFilter = new AdobeLibraryElementFilter();
        adobeLibraryElementFilter.setType(str);
        ArrayList<AdobeLibraryElement> allElementsWithFilter = this.selectedComponent.getAllElementsWithFilter(adobeLibraryElementFilter);
        if (allElementsWithFilter.size() == 0) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        for (AdobeLibraryElement adobeLibraryElement : allElementsWithFilter) {
            if (this.selectedElementIDs.get(0).equals(adobeLibraryElement.getElementId())) {
                arrayList.add(adobeLibraryElement.getElementId());
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    public AdobeSelectionLibraryAsset(AdobeLibraryComposite adobeLibraryComposite, ArrayList<String> arrayList, AdobeAssetLibrary adobeAssetLibrary) {
        this.selectedComponent = adobeLibraryComposite;
        this.selectedElementIDs = arrayList;
        this.selectedItem = adobeAssetLibrary;
    }
}
