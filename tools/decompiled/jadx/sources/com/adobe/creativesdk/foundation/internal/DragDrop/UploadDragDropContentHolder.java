package com.adobe.creativesdk.foundation.internal.DragDrop;

import android.net.Uri;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class UploadDragDropContentHolder {
    private ArrayList<Uri> itemsUriList;
    private String targetFolderHref;

    public UploadDragDropContentHolder(String str, ArrayList<Uri> arrayList) {
        this.targetFolderHref = str;
        this.itemsUriList = arrayList;
    }

    public String getTargetFolderHref() {
        return this.targetFolderHref;
    }

    public ArrayList<Uri> getItemsUriList() {
        return this.itemsUriList;
    }
}
