package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.behance.sdk.R;
import com.behance.sdk.project.modules.ImageModule;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAlbumImageGridArrayAdapter extends ArrayAdapter<ImageModule> {
    private int imageHeight;
    private LayoutInflater layoutInflater;
    private List<ImageModule> selectedImageModulesList;
    private int selectionIndicatorHeight;

    public BehanceSDKAlbumImageGridArrayAdapter(Context context, List<ImageModule> list) {
        super(context, R.layout.bsdk_adapter_album_image_view_grid_item, list);
        this.layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.imageHeight = computeImageHeight();
        this.selectionIndicatorHeight = computeSelectionIndicatorHeight();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        boolean z;
        if (view == null) {
            view = this.layoutInflater.inflate(R.layout.bsdk_adapter_album_image_view_grid_item, viewGroup, false);
            z = false;
        } else {
            z = true;
        }
        ImageView imageView = (ImageView) view.findViewById(R.id.bsdkAlbumImageAdapterThumbnailImageView);
        View viewFindViewById = view.findViewById(R.id.bsdkAlbumImageAdapterSelectionIndicator);
        if (z) {
            imageView.setImageDrawable(null);
        }
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = this.imageHeight;
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-1, this.imageHeight);
        }
        imageView.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = viewFindViewById.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = this.selectionIndicatorHeight;
        } else {
            layoutParams2 = new RelativeLayout.LayoutParams(-1, this.selectionIndicatorHeight);
        }
        viewFindViewById.setLayoutParams(layoutParams2);
        ImageModule item = getItem(i);
        if (item != null) {
            imageView.setImageBitmap(item.getThumbNail(getContext()));
            if (this.selectedImageModulesList != null && this.selectedImageModulesList.contains(item)) {
                viewFindViewById.setVisibility(0);
            } else {
                viewFindViewById.setVisibility(4);
            }
        }
        return view;
    }

    public void setSelectedImageModulesList(List<ImageModule> list) {
        this.selectedImageModulesList = list;
    }

    private int computeImageHeight() {
        Resources resources = getContext().getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.bsdk_image_selector_view_album_image_grid_left_right_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.bsdk_image_selector_view_album_image_grid_item_margin);
        int integer = resources.getInteger(R.integer.bsdk_image_selection_fragment_grid_col_count);
        return (((resources.getDisplayMetrics().widthPixels - (dimensionPixelSize * 2)) - ((integer - 1) * dimensionPixelSize2)) / integer) - (resources.getDimensionPixelSize(R.dimen.bsdk_image_selector_view_adapter_bg_stroke_width) * 2);
    }

    private int computeSelectionIndicatorHeight() {
        return (getContext().getResources().getDimensionPixelSize(R.dimen.bsdk_image_selector_view_adapter_bg_stroke_width) * 2) + this.imageHeight;
    }
}
