package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.IACLMAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryManagerUtil;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElementFilter;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ACLMDefaultAssetsListProvider implements IACLMAssetsListProvider {
    private AdobeLibraryElementFilter _filter;
    private String[] _mediaTypes;

    public void setElementMediaTypes(String[] strArr) {
        this._mediaTypes = strArr;
    }

    public void setContentTypes(String[] strArr) {
        this._filter = new AdobeLibraryElementFilter();
        this._filter.setMatchAny(true);
        this._filter.setContentTypes(new ArrayList(Arrays.asList(strArr)));
    }

    public void setFilterType(String str) {
        if (this._filter != null) {
            this._filter.setType(str);
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.IACLMAssetsListProvider
    public ArrayList<AdobeLibraryElement> getElements(AdobeLibraryComposite adobeLibraryComposite) {
        ArrayList<AdobeLibraryElement> elementsOfMediaType = null;
        if (adobeLibraryComposite != null) {
            if (this._filter != null) {
                elementsOfMediaType = ACLibraryManagerUtil.getElementsOfFilter(adobeLibraryComposite, this._filter);
            } else {
                elementsOfMediaType = ACLibraryManagerUtil.getElementsOfMediaType(adobeLibraryComposite, this._mediaTypes);
            }
        }
        if (elementsOfMediaType == null) {
            return new ArrayList<>();
        }
        return elementsOfMediaType;
    }
}
