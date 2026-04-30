package com.behance.sdk.ui.adapters;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.ArrayAdapter;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKAlbumDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAlbumGridArrayAdapter extends ArrayAdapter<BehanceSDKAlbumDTO> {
    private int albumCoverImageHeight;
    private int albumNameContainerHeight;
    private LayoutInflater layoutInflater;

    public BehanceSDKAlbumGridArrayAdapter(Context context, List<BehanceSDKAlbumDTO> list) {
        super(context, R.layout.bsdk_adapter_album_grid_item, list);
        this.layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.albumCoverImageHeight = computeAlbumCoverImageHeight();
        this.albumNameContainerHeight = (int) (((double) this.albumCoverImageHeight) * 0.25d);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ac  */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r12, android.view.View r13, android.view.ViewGroup r14) {
        /*
            r11 = this;
            r10 = 8
            r9 = -1
            r4 = 0
            if (r13 != 0) goto L6c
            android.view.LayoutInflater r0 = r11.layoutInflater
            int r1 = com.behance.sdk.R.layout.bsdk_adapter_album_grid_item
            android.view.View r13 = r0.inflate(r1, r14, r4)
            r3 = r4
        Lf:
            java.lang.Object r0 = r11.getItem(r12)
            com.behance.sdk.dto.BehanceSDKAlbumDTO r0 = (com.behance.sdk.dto.BehanceSDKAlbumDTO) r0
            int r1 = com.behance.sdk.R.id.bsdkAlbumGridAdapterCoverImageView
            android.view.View r1 = r13.findViewById(r1)
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            int r2 = com.behance.sdk.R.id.bsdkAlbumGridAdapterAlbumNameTxtView
            android.view.View r2 = r13.findViewById(r2)
            android.widget.TextView r2 = (android.widget.TextView) r2
            if (r3 == 0) goto L2b
            r3 = 0
            r1.setImageBitmap(r3)
        L2b:
            int r3 = r11.albumCoverImageHeight
            int r5 = r11.albumNameContainerHeight
            if (r0 == 0) goto Lac
            android.content.Context r6 = r11.getContext()
            com.behance.sdk.enums.BehanceSDKAlbumType r7 = r0.getAlbumType()
            com.behance.sdk.enums.BehanceSDKAlbumType r8 = com.behance.sdk.enums.BehanceSDKAlbumType.DEVICE_ALBUM
            if (r7 != r8) goto L6f
            android.widget.ImageView$ScaleType r7 = android.widget.ImageView.ScaleType.CENTER_CROP
            r1.setScaleType(r7)
            android.graphics.Bitmap r6 = r0.getCoverBitmap(r6)
            r1.setImageBitmap(r6)
            java.lang.String r0 = r0.getName()
            r2.setText(r0)
            r2.setVisibility(r4)
            r0 = r3
        L54:
            android.view.ViewGroup$LayoutParams r3 = r1.getLayoutParams()
            if (r3 == 0) goto L9f
            r3.height = r0
            r0 = r3
        L5d:
            r1.setLayoutParams(r0)
            android.view.ViewGroup$LayoutParams r0 = r2.getLayoutParams()
            if (r0 == 0) goto La6
            r0.height = r5
        L68:
            r2.setLayoutParams(r0)
            return r13
        L6c:
            r0 = 1
            r3 = r0
            goto Lf
        L6f:
            com.behance.sdk.enums.BehanceSDKAlbumType r4 = r0.getAlbumType()
            com.behance.sdk.enums.BehanceSDKAlbumType r6 = com.behance.sdk.enums.BehanceSDKAlbumType.CAMERA
            if (r4 != r6) goto L87
            int r0 = r3 + r5
            android.widget.ImageView$ScaleType r3 = android.widget.ImageView.ScaleType.CENTER
            r1.setScaleType(r3)
            int r3 = com.behance.sdk.R.drawable.bsdk_icon_adapter_album_camera_type_indicator
            r1.setImageResource(r3)
            r2.setVisibility(r10)
            goto L54
        L87:
            com.behance.sdk.enums.BehanceSDKAlbumType r0 = r0.getAlbumType()
            com.behance.sdk.enums.BehanceSDKAlbumType r4 = com.behance.sdk.enums.BehanceSDKAlbumType.CREATIVE_CLOUD
            if (r0 != r4) goto Lac
            int r0 = r3 + r5
            android.widget.ImageView$ScaleType r3 = android.widget.ImageView.ScaleType.CENTER
            r1.setScaleType(r3)
            int r3 = com.behance.sdk.R.drawable.bsdk_icon_adapter_album_cloud_type_indicator
            r1.setImageResource(r3)
            r2.setVisibility(r10)
            goto L54
        L9f:
            android.widget.RelativeLayout$LayoutParams r3 = new android.widget.RelativeLayout$LayoutParams
            r3.<init>(r9, r0)
            r0 = r3
            goto L5d
        La6:
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams
            r0.<init>(r9, r5)
            goto L68
        Lac:
            r0 = r3
            goto L54
        */
        throw new UnsupportedOperationException("Method not decompiled: com.behance.sdk.ui.adapters.BehanceSDKAlbumGridArrayAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    private int computeAlbumCoverImageHeight() {
        Resources resources = getContext().getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.bsdk_image_selector_view_album_grid_left_right_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.bsdk_image_selector_view_album_grid_item_margin);
        int integer = resources.getInteger(R.integer.bsdk_album_selector_fragment_grid_col_count);
        return (((resources.getDisplayMetrics().widthPixels - (dimensionPixelSize * 2)) - ((integer - 1) * dimensionPixelSize2)) / integer) - (resources.getDimensionPixelSize(R.dimen.bsdk_image_selector_view_adapter_bg_stroke_width) * 2);
    }
}
