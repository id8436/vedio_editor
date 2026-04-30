package com.adobe.creativesdk.foundation.internal.comments;

import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetCommentsManager {
    AdobeAsset targetAsset;

    public AdobeAssetCommentsManager(AdobeAsset adobeAsset) {
        this.targetAsset = adobeAsset;
    }

    public void getComments(IAdobeGetCommentsCallback iAdobeGetCommentsCallback) {
        AdobeCommentsSession.getSharedSession().getComments(this.targetAsset, iAdobeGetCommentsCallback);
    }

    public void deleteComment(String str, IAdobeDeleteCommentCallback iAdobeDeleteCommentCallback) {
        AdobeCommentsSession.getSharedSession().deleteComment(str, iAdobeDeleteCommentCallback);
    }

    public void addComments(String str, IAdobeAddCommentCallback iAdobeAddCommentCallback) {
        AdobeCommentsSession sharedSession = AdobeCommentsSession.getSharedSession();
        AdobeUXAuthManager sharedAuthManager = AdobeUXAuthManager.getSharedAuthManager();
        sharedSession.createComment(this.targetAsset, sharedAuthManager.getUserProfile().getDisplayName(), sharedAuthManager.getUserProfile().getEmail(), str, iAdobeAddCommentCallback);
    }
}
