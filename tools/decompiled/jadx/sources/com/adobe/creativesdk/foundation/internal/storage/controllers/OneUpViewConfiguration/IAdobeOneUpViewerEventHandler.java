package com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.internal.utils.coachmarks.IAdobeCoachMarksDismissListener;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;

/* JADX INFO: loaded from: classes2.dex */
public interface IAdobeOneUpViewerEventHandler {
    void clear(AdobeAsset adobeAsset);

    void handleCreationOfActivity(Bundle bundle, AdobeOneUpViewData adobeOneUpViewData, Activity activity, AdobeCloud adobeCloud);

    void handleMenuClick(int i, AdobeOneUpViewData adobeOneUpViewData, Activity activity, AdobeCloud adobeCloud);

    void handleNewPage(AdobeOneUpViewData adobeOneUpViewData, AdobeCloud adobeCloud);

    void handleNewPageForBottomBar(AdobeOneUpViewData adobeOneUpViewData, RelativeLayout relativeLayout, TextView textView);

    void handleOrientationChangeForCoachMark(int i);

    boolean isAScreenshotFile();

    void openedInPrivateCloud(boolean z);

    void showCoachMarks(Activity activity, String str, String str2, String str3, View view, boolean z, int i, IAdobeCoachMarksDismissListener iAdobeCoachMarksDismissListener);
}
