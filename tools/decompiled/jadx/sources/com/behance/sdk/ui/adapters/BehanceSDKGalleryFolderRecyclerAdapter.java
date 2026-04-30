package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.b.a.h;
import com.behance.sdk.R;
import com.behance.sdk.ui.adapters.viewholders.BehanceSDKGalleryFolderViewHolder;
import java.io.File;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGalleryFolderRecyclerAdapter extends RecyclerView.Adapter<BehanceSDKGalleryFolderViewHolder> {
    private GalleryFolderCallbacks callbacks;
    private Context context;
    private Map<String, List<File>> files;

    public interface GalleryFolderCallbacks {
        void onFolderClicked(List<File> list);

        void onGooglePhotosClicked();

        boolean showGooglePhotos();
    }

    public BehanceSDKGalleryFolderRecyclerAdapter(Context context, Map<String, List<File>> map, GalleryFolderCallbacks galleryFolderCallbacks) {
        this.context = context;
        this.files = map;
        this.callbacks = galleryFolderCallbacks;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public BehanceSDKGalleryFolderViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new BehanceSDKGalleryFolderViewHolder(LayoutInflater.from(this.context).inflate(R.layout.bsdk_card_gallery_folder, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(BehanceSDKGalleryFolderViewHolder behanceSDKGalleryFolderViewHolder, int i) {
        if (this.callbacks.showGooglePhotos()) {
            if (i == 0) {
                behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderThumbnail.setImageResource(R.drawable.bsdk_icon_publish_google_photo);
                int dimensionPixelSize = this.context.getResources().getDimensionPixelSize(R.dimen.activity_horizontal_margin);
                behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderThumbnail.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
                behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderName.setText(R.string.bsdk_project_editor_google_photos);
                behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKGalleryFolderRecyclerAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BehanceSDKGalleryFolderRecyclerAdapter.this.callbacks.onGooglePhotosClicked();
                    }
                });
                return;
            }
            behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderThumbnail.setImageDrawable(null);
            final String str = (String) this.files.keySet().toArray()[i - 1];
            h.b(this.context).a(this.files.get(str).get(0)).a(behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderThumbnail);
            behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderName.setText(str);
            behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKGalleryFolderRecyclerAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BehanceSDKGalleryFolderRecyclerAdapter.this.callbacks.onFolderClicked((List) BehanceSDKGalleryFolderRecyclerAdapter.this.files.get(str));
                }
            });
            return;
        }
        behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderThumbnail.setImageDrawable(null);
        final String str2 = (String) this.files.keySet().toArray()[i];
        h.b(this.context).a(this.files.get(str2).get(0)).a(behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderThumbnail);
        behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderName.setText(str2);
        behanceSDKGalleryFolderViewHolder.bsdkCardGalleryFolderContainer.setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.adapters.BehanceSDKGalleryFolderRecyclerAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKGalleryFolderRecyclerAdapter.this.callbacks.onFolderClicked((List) BehanceSDKGalleryFolderRecyclerAdapter.this.files.get(str2));
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.callbacks.showGooglePhotos() ? this.files.size() + 1 : this.files.size();
    }
}
