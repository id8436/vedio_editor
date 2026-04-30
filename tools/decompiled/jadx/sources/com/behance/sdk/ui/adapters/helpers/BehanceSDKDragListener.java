package com.behance.sdk.ui.adapters.helpers;

import android.support.v7.widget.RecyclerView;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface BehanceSDKDragListener {
    void onDragActionComplete(List<BehanceSDKEditProjectModuleAbstract> list);

    void onDragStarted(RecyclerView.ViewHolder viewHolder);
}
