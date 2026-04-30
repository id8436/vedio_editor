package com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary;

import android.os.Bundle;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.color.ACLMColorAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.ACLMColorThemeAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.image.ACLMImageAssetsListProvider;
import com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsFragment;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LibraryItemsOneUpViewController {
    private static final String LIBRARY_ID = "library_id";
    private static final String START_ITEM_INDEX = "startindex";
    private List<AdobeLibraryElement> itemsList;
    private AdobeLibraryComposite library;
    private int startIndex;

    private LibraryItemsOneUpViewController() {
    }

    public static LibraryItemsOneUpViewController createInstanceFromConfigurationBundle(Bundle bundle) {
        LibraryItemsOneUpViewController libraryItemsOneUpViewController = new LibraryItemsOneUpViewController();
        AdobeLibraryComposite libraryCompositeFromID = DesignLibraryItemsFragment.getLibraryCompositeFromID(bundle.getString(LIBRARY_ID));
        libraryItemsOneUpViewController.setStartIndex(bundle.getInt(START_ITEM_INDEX));
        libraryItemsOneUpViewController.setLibrary(libraryCompositeFromID);
        return libraryItemsOneUpViewController;
    }

    private void setLibraryAndItems(AdobeLibraryComposite adobeLibraryComposite, List<AdobeLibraryElement> list) {
        this.library = adobeLibraryComposite;
        this.itemsList = list;
    }

    private void setLibrary(AdobeLibraryComposite adobeLibraryComposite) {
        this.library = adobeLibraryComposite;
        buildLibraryItemsList();
    }

    public AdobeLibraryComposite getLibrary() {
        return this.library;
    }

    private void buildLibraryItemsList() {
        this.itemsList.addAll(new ACLMColorAssetsListProvider().getElements(this.library));
        this.itemsList.addAll(new ACLMColorThemeAssetsListProvider().getElements(this.library));
        this.itemsList.addAll(new ACLMImageAssetsListProvider().getElements(this.library));
    }

    private void setStartIndex(int i) {
        this.startIndex = i;
    }

    public static LibraryItemsOneUpViewController createInstanceFromLibrary(AdobeLibraryComposite adobeLibraryComposite, List<AdobeLibraryElement> list, int i) {
        LibraryItemsOneUpViewController libraryItemsOneUpViewController = new LibraryItemsOneUpViewController();
        libraryItemsOneUpViewController.setLibraryAndItems(adobeLibraryComposite, list);
        libraryItemsOneUpViewController.setStartIndex(i);
        return libraryItemsOneUpViewController;
    }

    public int getCount() {
        if (this.itemsList != null) {
            return this.itemsList.size();
        }
        return 0;
    }

    public AdobeLibraryElement getItemAtPos(int i) {
        if (this.itemsList == null || i < 0 || i >= this.itemsList.size()) {
            return null;
        }
        return this.itemsList.get(i);
    }

    public int getStartIndex() {
        return this.startIndex;
    }

    public void saveInstanceState(Bundle bundle) {
        bundle.putInt(START_ITEM_INDEX, this.startIndex);
        bundle.putString(LIBRARY_ID, this.library.getLibraryId());
    }
}
