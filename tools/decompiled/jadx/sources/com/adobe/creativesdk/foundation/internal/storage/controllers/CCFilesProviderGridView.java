package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditGridView;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class CCFilesProviderGridView extends EditGridView {
    public CCFilesProviderGridView(Context context) {
        super(context);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditGridView
    protected ArrayList<AdobeAsset> getSelectedAssets() {
        return super.getSelectedAssets();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditGridView
    protected void enableController() {
        super.enableController();
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.edit.EditGridView
    protected void disableController() {
        super.disableController();
    }
}
