package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.behance.sdk.R;
import com.behance.sdk.project.modules.EmbedModule;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.project.modules.ProjectModule;
import com.behance.sdk.project.modules.ProjectModuleTypes;
import com.i.a.b.a.b;
import com.i.a.b.f.a;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKPublishProjectPreviewAdapter extends ArrayAdapter<ProjectModule> implements a {
    private Callbacks callbacks;
    private LayoutInflater layoutInflater;
    private int numOfModulesLoaded;
    private int numOfModulesLoading;

    /* JADX INFO: loaded from: classes2.dex */
    public interface Callbacks {
        void onViewLoadingComplete();
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public BehanceSDKPublishProjectPreviewAdapter(Context context, int i, List<ProjectModule> list) {
        super(context, i, list);
        this.numOfModulesLoaded = 0;
        this.numOfModulesLoading = 0;
        this.layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.layoutInflater.inflate(R.layout.bsdk_adapter_publish_project_preview_project_fragment_list_item, viewGroup, false);
        }
        ProjectModule item = getItem(i);
        ImageView imageView = (ImageView) view.findViewById(R.id.add_project_preview_project_fragment_image_view);
        imageView.setImageBitmap(null);
        View viewFindViewById = view.findViewById(R.id.add_project_preview_fragment_embed_view);
        ProjectModuleTypes type = item.getType();
        if (ProjectModuleTypes.IMAGE.equals(type) || ProjectModuleTypes.CREATIVECLOUD_ASSET.equals(type)) {
            viewFindViewById.setVisibility(8);
            imageView.setVisibility(0);
            this.numOfModulesLoading++;
            ((ImageModule) item).displayImage(imageView, this);
        } else if (ProjectModuleTypes.EMBED.equals(type)) {
            viewFindViewById.setVisibility(0);
            imageView.setVisibility(8);
            String description = ((EmbedModule) item).getDescription();
            String subDescription = ((EmbedModule) item).getSubDescription();
            ((TextView) viewFindViewById.findViewById(R.id.bsdkPublishProjectPreviewFragmentEmbedDesc)).setText(description);
            ((TextView) viewFindViewById.findViewById(R.id.bsdkPublishProjectPreviewFragmentEmbedSubDesc)).setText(subDescription);
            checkForLoadingComplete();
        }
        return view;
    }

    @Override // com.i.a.b.f.a
    public void onLoadingCancelled(String str, View view) {
        checkForLoadingComplete();
    }

    @Override // com.i.a.b.f.a
    public void onLoadingComplete(String str, View view, Bitmap bitmap) {
        checkForLoadingComplete();
    }

    @Override // com.i.a.b.f.a
    public void onLoadingFailed(String str, View view, b bVar) {
        checkForLoadingComplete();
    }

    @Override // com.i.a.b.f.a
    public void onLoadingStarted(String str, View view) {
    }

    private void checkForLoadingComplete() {
        int i = this.numOfModulesLoaded + 1;
        this.numOfModulesLoaded = i;
        if (i >= this.numOfModulesLoading) {
            if (this.callbacks != null) {
                this.callbacks.onViewLoadingComplete();
            }
            this.numOfModulesLoading = 0;
            this.numOfModulesLoaded = 0;
        }
    }
}
