package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.support.v7.widget.Toolbar;
import android.view.View;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public interface IDocumentPickerCallback {
    Toolbar getActionBarToolbar();

    View getContentView();

    boolean handleBackPress();

    void startProvidingDocuments(ArrayList<AdobeAsset> arrayList);
}
