package com.adobe.creativesdk.foundation.internal.DragDrop;

import android.content.ClipData;
import android.content.ClipDescription;
import android.util.Log;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSDragToLokiEvent;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.CCFilesWithUploadFragment;
import com.adobe.creativesdk.foundation.internal.storage.controllers.IAdobeAssetContainerListViewDelegate;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadManager;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import java.util.ArrayList;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
public class UploadDragDropEventListener implements View.OnDragListener {
    public static String T = UploadDragDropEventListener.class.getSimpleName();
    private View _newSelectionFrame;
    FrameLayout container;
    IAdobeAssetContainerListViewDelegate containerDelegate;
    boolean isEmptyStateViewHided = false;
    LayoutInflater layoutInflater;
    ListenerType mListenerType;
    ImageView selectionImageView;
    AdobeAssetFolder targetAssetFolder;
    String uploadFolderHref;

    public enum ListenerType {
        ROOT,
        FOLDER
    }

    public UploadDragDropEventListener(AdobeAssetFolder adobeAssetFolder, ListenerType listenerType, IAdobeAssetContainerListViewDelegate iAdobeAssetContainerListViewDelegate) {
        this.targetAssetFolder = adobeAssetFolder;
        this.uploadFolderHref = adobeAssetFolder.getHref().toString();
        this.mListenerType = listenerType;
        this.containerDelegate = iAdobeAssetContainerListViewDelegate;
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(View view, DragEvent dragEvent) {
        switch (dragEvent.getAction()) {
            case 1:
                if (AdobeUploadManager.getInstance(AdobeAssetFolder.class).haveSessionForEndPoint(this.targetAssetFolder)) {
                    Log.e(T, "Already session found");
                } else {
                    ClipDescription clipDescription = dragEvent.getClipDescription();
                    if (clipDescription.hasMimeType("text/vnd.android.intent") || clipDescription.hasMimeType(MimeTypes.TEXT_HTML) || clipDescription.hasMimeType(MimeTypes.TEXT_PLAIN)) {
                        Log.e(T, " Unsupported MimeTypes for dragged content. Returning false");
                    } else {
                        if (this.containerDelegate != null && (this.containerDelegate instanceof CCFilesWithUploadFragment)) {
                            CCFilesWithUploadFragment cCFilesWithUploadFragment = (CCFilesWithUploadFragment) this.containerDelegate;
                            if (!cCFilesWithUploadFragment.isFloatingMenuExpanded().booleanValue()) {
                                if (cCFilesWithUploadFragment.isEmptyFolderViewVisible()) {
                                    cCFilesWithUploadFragment.hideEmptyStateView();
                                    this.isEmptyStateViewHided = true;
                                }
                            }
                        }
                        this.layoutInflater = (LayoutInflater) view.getContext().getSystemService("layout_inflater");
                        if (this.mListenerType.equals(ListenerType.ROOT)) {
                            this.container = (FrameLayout) view.findViewById(R.id.adobe_csdk_assetview_container_content_assetsview);
                            this._newSelectionFrame = this.layoutInflater.inflate(R.layout.adobe_assetcell_drag_drop_frame, (ViewGroup) this.container, false);
                            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                            layoutParams.setMargins(8, 8, 8, 8);
                            this._newSelectionFrame.setLayoutParams(layoutParams);
                            if (this.container != null) {
                                this.container.addView(this._newSelectionFrame, 1);
                            }
                        } else {
                            this.container = (FrameLayout) view.findViewById(R.id.asset_content_holder);
                            this._newSelectionFrame = this.layoutInflater.inflate(R.layout.adobe_assetcell_drag_drop_frame, (ViewGroup) this.container, false);
                            this._newSelectionFrame.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                        }
                    }
                }
                break;
            case 2:
                break;
            case 3:
                new AdobeAnalyticsETSDragToLokiEvent(AdobeAnalyticsETSDragToLokiEvent.ADOBE_ETS_ENVIRONMENT_DRAG_TO_LOKI).endAndTrackEvent();
                ClipData clipData = dragEvent.getClipData();
                int itemCount = clipData.getItemCount();
                ArrayList arrayList = new ArrayList(itemCount);
                view.getContext().getContentResolver();
                for (int i = 0; i < itemCount; i++) {
                    arrayList.add(i, clipData.getItemAt(i).getUri());
                }
                if (itemCount > 0) {
                    AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_UPLOAD_DRAG_DROP_CONTENT, new UploadDragDropContentHolder(this.uploadFolderHref, arrayList));
                }
                break;
            case 4:
                if (this.container.indexOfChild(this._newSelectionFrame) != -1) {
                    this.container.removeViewAt(1);
                }
                break;
            case 5:
                this.selectionImageView = (ImageView) this._newSelectionFrame.findViewById(R.id.selectionImageView);
                this.selectionImageView.setImageDrawable(view.getResources().getDrawable(R.drawable.blue_rectangle_dash_line));
                if (this.mListenerType.equals(ListenerType.FOLDER) && this.container != null) {
                    this.container.addView(this._newSelectionFrame, 1);
                } else {
                    if (this.containerDelegate != null && (this.containerDelegate instanceof CCFilesWithUploadFragment)) {
                        CCFilesWithUploadFragment cCFilesWithUploadFragment2 = (CCFilesWithUploadFragment) this.containerDelegate;
                        if (cCFilesWithUploadFragment2.isEmptyFolderViewVisible()) {
                            cCFilesWithUploadFragment2.hideEmptyStateView();
                            this.isEmptyStateViewHided = true;
                        }
                    }
                    if (this.container.indexOfChild(this._newSelectionFrame) == -1) {
                        this.container.addView(this._newSelectionFrame, 1);
                    }
                }
                break;
            case 6:
                if (this.mListenerType.equals(ListenerType.ROOT) && this.isEmptyStateViewHided && this.containerDelegate != null && (this.containerDelegate instanceof CCFilesWithUploadFragment)) {
                    CCFilesWithUploadFragment cCFilesWithUploadFragment3 = (CCFilesWithUploadFragment) this.containerDelegate;
                    if (cCFilesWithUploadFragment3.isEmptyFolder()) {
                        cCFilesWithUploadFragment3.showEmptyAssetsStateView();
                    }
                    this.isEmptyStateViewHided = false;
                }
                if (this.container != null) {
                    this.container.removeViewAt(1);
                }
                break;
            default:
                Log.e("DragDrop Example", "Unknown action type received by OnDragListener.");
                break;
        }
        return false;
    }
}
