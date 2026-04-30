package com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration;

import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeOneUpViewerLibraryConfiguration extends AdobeOneUpViewerBaseConfiguration {
    private ArrayList<AdobeLibraryElement> _itemsList;
    private AdobeLibraryComposite _library;
    private int _startIndex;

    public AdobeLibraryComposite getLibrary() {
        return this._library;
    }

    public void setLibrary(AdobeLibraryComposite adobeLibraryComposite) {
        this._library = adobeLibraryComposite;
    }

    public int getStartIndex() {
        return this._startIndex;
    }

    public void setStartIndex(int i) {
        this._startIndex = i;
    }

    public ArrayList<AdobeLibraryElement> getItemsList() {
        return this._itemsList;
    }

    public void setItemsList(ArrayList<AdobeLibraryElement> arrayList) {
        this._itemsList = arrayList;
    }
}
