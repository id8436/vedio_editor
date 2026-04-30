package com.adobe.creativesdk.foundation.internal.storage.controllers.OneUpViewConfiguration;

import android.widget.ImageView;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.internal.storage.AdobeStorageDataSource;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeOneUpViewerFilesConfiguration extends AdobeOneUpViewerBaseConfiguration {
    private AdobeAssetFile assetFile;
    private int commentBottomBarId;
    private TextView commentCountView;
    private ImageView commentView;
    private AdobeStorageDataSource dataSource;
    private int editBottomBarId;
    private int infoBottomBarId;

    public AdobeAssetFile getAssetFile() {
        return this.assetFile;
    }

    public void setAssetFile(AdobeAssetFile adobeAssetFile) {
        this.assetFile = adobeAssetFile;
    }

    public AdobeStorageDataSource getDataSource() {
        return this.dataSource;
    }

    public void setDataSource(AdobeStorageDataSource adobeStorageDataSource) {
        this.dataSource = adobeStorageDataSource;
    }

    public void setInfoBottomBarId(int i) {
        this.infoBottomBarId = i;
    }

    public int getInfoBottomBarId() {
        return this.infoBottomBarId;
    }

    public void setCommentBottomBarId(int i) {
        this.commentBottomBarId = i;
    }

    public int getCommentBottomBarId() {
        return this.commentBottomBarId;
    }

    public void setEditBottomBarId(int i) {
        this.editBottomBarId = i;
    }

    public int getEditBottomBarId() {
        return this.editBottomBarId;
    }

    public void setCommentCountView(TextView textView) {
        this.commentCountView = textView;
    }

    public TextView getCommentCountView() {
        return this.commentCountView;
    }

    public void setCommentView(ImageView imageView) {
        this.commentView = imageView;
    }

    public ImageView getCommentView() {
        return this.commentView;
    }
}
