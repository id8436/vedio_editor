package com.adobe.premiereclip.dcx;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;

/* JADX INFO: loaded from: classes2.dex */
public class DCXMergeSelectionFactory {
    private DCXMergeSelectionFactory() {
    }

    public static DCXMergeSelection createSelectionWithBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str) {
        return new DCXMergeSelection(adobeDCXCompositeBranch, str);
    }

    public static DCXMergeSelection createSelectionWithMutableBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, String str) {
        return new DCXMergeSelection(adobeDCXCompositeMutableBranch, str);
    }
}
