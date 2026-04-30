package com.behance.sdk.ui.dialogs;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.behance.sdk.R;
import com.behance.sdk.util.BehanceSDKProjectEditorEmbedUtils;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKEmbedViewerDialogFragment extends DialogFragment {
    public static final String ARGS_EXTRA_EMBED = "ARGS_EXTRA_EMBED";
    private WebView bsdkDialogEmbedViewerWebview;

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.BsdkDialogBaseTheme_FullScreen);
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.bsdk_fragment_dialog_embed_viewer, viewGroup, false);
        this.bsdkDialogEmbedViewerWebview = (WebView) viewInflate.findViewById(R.id.bsdk_dialog_embed_viewer_webview);
        this.bsdkDialogEmbedViewerWebview.setBackgroundColor(0);
        if (getArguments() != null && getArguments().containsKey(ARGS_EXTRA_EMBED)) {
            String string = getArguments().getString(ARGS_EXTRA_EMBED);
            WebSettings settings = this.bsdkDialogEmbedViewerWebview.getSettings();
            settings.setLoadWithOverviewMode(true);
            settings.setUseWideViewPort(true);
            settings.setJavaScriptEnabled(true);
            settings.setSupportZoom(false);
            settings.setDefaultTextEncodingName("UTF-8");
            this.bsdkDialogEmbedViewerWebview.loadDataWithBaseURL(null, "<html><head><meta name=\"viewport\" content=\"width=" + BehanceSDKProjectEditorEmbedUtils.getWidth(string) + "\"/></head><body>" + BehanceSDKProjectEditorEmbedUtils.setHtmlPosition(string) + "</body></html>", MimeTypes.TEXT_HTML, "utf-8", null);
        }
        return viewInflate;
    }
}
