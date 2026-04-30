package com.behance.sdk.ui.fragments;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.behance.sdk.R;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKImageDisplayGifPageItemFragment extends Fragment {
    private static final String ARG_URL = "ARG_URL";
    private static final String ARG_ZOOM = "ARG_ZOOM";

    public static BehanceSDKImageDisplayGifPageItemFragment newInstance(String str, boolean z) {
        BehanceSDKImageDisplayGifPageItemFragment behanceSDKImageDisplayGifPageItemFragment = new BehanceSDKImageDisplayGifPageItemFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_URL, str);
        bundle.putBoolean(ARG_ZOOM, z);
        behanceSDKImageDisplayGifPageItemFragment.setArguments(bundle);
        return behanceSDKImageDisplayGifPageItemFragment;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.bsdk_adapter_image_display_gif_item, viewGroup, false);
        String string = getArguments().getString(ARG_URL);
        WebView webView = (WebView) viewGroup2.findViewById(R.id.bsdk_imageDisplayGif);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setSupportZoom(getArguments().getBoolean(ARG_ZOOM, false));
        final View viewFindViewById = viewGroup2.findViewById(R.id.bsdk_gifImageDisplayActivityProgressSpinnerWrapper);
        webView.setWebViewClient(new WebViewClient() { // from class: com.behance.sdk.ui.fragments.BehanceSDKImageDisplayGifPageItemFragment.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                viewFindViewById.setVisibility(8);
            }
        });
        webView.loadDataWithBaseURL(null, "<html>\n    <head>\n        <style>\n\t\t\thtml, body, #container { width:100%; height:100%; padding:0; margin:0; }\n\t\t\tbody {width:100%; height:100%; }\n            #container { position:absolute; left:0; top:0; width:100%; height:100%; background:#000000; background-size: contain; background-repeat: no-repeat; background-position: center center }\n        </style>\n    </head>\n    <body>\n        <div id=\"container\" style=\"background-image:url(\\" + string + ")\">\n        </div>\n    </body>\n</html>", MimeTypes.TEXT_HTML, "utf-8", null);
        return viewGroup2;
    }
}
