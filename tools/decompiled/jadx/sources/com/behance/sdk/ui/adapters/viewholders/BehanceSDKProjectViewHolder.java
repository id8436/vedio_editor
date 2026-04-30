package com.behance.sdk.ui.adapters.viewholders;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.behance.sdk.R;
import com.facebook.drawee.view.d;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectViewHolder extends BehanceSDKAbstractViewHolder {
    public TextView appreciations;
    public View appreciationsContainer;
    public TextView artist;
    public d cover;
    public ProgressBar loader;
    public TextView title;
    public TextView views;

    public BehanceSDKProjectViewHolder(View view) {
        super(view);
        if (view.getId() == R.id.card_loader) {
            this.loader = (ProgressBar) view.findViewById(R.id.bsdk_card_loader_progress_bar);
            view.setClickable(false);
            view.setLongClickable(false);
            return;
        }
        this.title = (TextView) view.findViewById(R.id.bsdk_discover_project_card_title);
        this.artist = (TextView) view.findViewById(R.id.bsdk_discover_project_card_artist);
        this.appreciations = (TextView) view.findViewById(R.id.bsdk_discover_project_card_appreciations);
        this.views = (TextView) view.findViewById(R.id.bsdk_discover_project_card_views);
        this.cover = (d) view.findViewById(R.id.bsdk_discover_project_card_cover);
        this.appreciationsContainer = view.findViewById(R.id.bsdk_discover_project_card_appreciations_container);
        view.setClickable(true);
        view.setLongClickable(true);
    }
}
