package com.behance.sdk.listeners;

import com.behance.sdk.dto.editor.BehanceSDKEditorProjectDTO;

/* JADX INFO: loaded from: classes.dex */
public interface BehanceSDKProjectEditorServiceCallbacks {
    void onEmbedTransformFailed(int i);

    void onFileUploadFailed(int i);

    void onProjectLoaded(BehanceSDKEditorProjectDTO behanceSDKEditorProjectDTO);
}
