package com.behance.sdk.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.behance.sdk.R;
import com.behance.sdk.enums.BehanceSDKProjectModuleType;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.ui.fragments.BehanceSDKImageDisplayDialogFragment;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectDisplayWebChromeClient extends WebChromeClient {
    private static final String FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG = "FRAGMENT_TAG_PROJECT_IMAGE_DISPLAY_DIALOG";
    private Callbacks callbacks;
    private Context mContext;
    private String[] projectImagesURLsArray;
    public static String EVENT_TYPE_APPRECIATE_PROJECT = "EVENT_TYPE_APPRECIATE_PROJECT";
    public static String EVENT_TYPE_FOLLOW_UNFOLLOW_USER = "EVENT_TYPE_FOLLOW_UNFOLLOW_USER";
    public static String EVENT_TYPE_ADD_TO_COLLECTION = "EVENT_TYPE_ADD_TO_COLLECTION";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKProjectDisplayWebChromeClient.class);

    public interface Callbacks {
        void onChromeClientAddToCollectionClicked();

        void onChromeClientProjectModuleClicked();
    }

    public BehanceSDKProjectDisplayWebChromeClient(Context context) {
        this.mContext = context;
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public void setProjectImagesURLs(String[] strArr) {
        this.projectImagesURLsArray = strArr;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        if (str2.startsWith(BehanceSDKProjectModuleType.IMAGE.name())) {
            BehanceSDKImageDisplayDialogFragment behanceSDKImageDisplayDialogFragment = BehanceSDKImageDisplayDialogFragment.getInstance(this.projectImagesURLsArray, Integer.parseInt(str2.substring(BehanceSDKProjectModuleType.IMAGE.name().length())));
            try {
                FragmentManager supportFragmentManager = ((FragmentActivity) this.mContext).getSupportFragmentManager();
                FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
                Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag(FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG);
                if (fragmentFindFragmentByTag != null) {
                    fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
                }
                behanceSDKImageDisplayDialogFragment.show(fragmentTransactionBeginTransaction, FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG);
            } catch (Exception e2) {
                logger.error(e2, "Can't get fragment manager from context ", new Object[0]);
            }
        } else if (str2.startsWith(BehanceSDKProjectModuleType.EMBED.name())) {
            String strSubstring = str2.substring(BehanceSDKProjectModuleType.EMBED.name().length());
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(strSubstring));
            this.mContext.startActivity(Intent.createChooser(intent, this.mContext.getResources().getString(R.string.bsdk_cwcc_chooser_title_embed_module)));
        } else if (str2.startsWith(BehanceSDKProjectModuleType.VIDEO.name())) {
            PackageManager packageManager = this.mContext.getPackageManager();
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setType("video/x-flv");
            if (packageManager.queryIntentActivities(intent2, 0).size() > 0) {
                Intent intent3 = new Intent("android.intent.action.VIEW");
                intent3.setType("video/x-flv");
                intent3.setData(Uri.parse(str2.substring(BehanceSDKProjectModuleType.VIDEO.name().length())));
                this.mContext.startActivity(Intent.createChooser(intent3, this.mContext.getResources().getString(R.string.bsdk_cwcc_chooser_title_video_module)));
            } else {
                displayCannotPlayMediaMessage(this.mContext, this.mContext.getResources().getString(R.string.bsdk_cwcc_video_player_not_found_msg_title), this.mContext.getResources().getString(R.string.bsdk_cwcc_video_player_not_found_msg_body));
            }
        }
        if (this.callbacks != null) {
            this.callbacks.onChromeClientProjectModuleClicked();
            if (str2.startsWith(EVENT_TYPE_ADD_TO_COLLECTION)) {
                this.callbacks.onChromeClientAddToCollectionClicked();
            }
        }
        jsResult.confirm();
        return true;
    }

    private void displayCannotPlayMediaMessage(Context context, String str, String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setPositiveButton(context.getResources().getString(R.string.bsdk_cwcc_player_not_found_ok_btn), new DialogInterface.OnClickListener() { // from class: com.behance.sdk.util.BehanceSDKProjectDisplayWebChromeClient.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.create();
        builder.show().getWindow().setLayout(context.getResources().getDimensionPixelSize(R.dimen.bsdk_ed_error_dialog_width), -2);
    }
}
