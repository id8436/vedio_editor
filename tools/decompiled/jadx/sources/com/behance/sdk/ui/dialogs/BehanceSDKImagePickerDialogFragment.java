package com.behance.sdk.ui.dialogs;

import android.app.Dialog;
import android.os.Bundle;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetDialog;
import android.support.design.widget.BottomSheetDialogFragment;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.behance.sdk.R;
import com.behance.sdk.listeners.IBehanceSDKGalleryPickerCallbacks;
import com.behance.sdk.ui.adapters.BehanceSDKGallerySheetRecyclerAdapter;
import com.behance.sdk.ui.decorators.BehanceSDKSpaceItemDecorationGrid;
import com.behance.sdk.util.BehanceSDKColumnCountUtil;
import com.behance.sdk.util.BehanceSDKGalleryUtils;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKImagePickerDialogFragment extends BottomSheetDialogFragment implements BehanceSDKGallerySheetRecyclerAdapter.GalleryCallbacks {
    private RecyclerView bsdkImagePickerRecycler;
    private IBehanceSDKGalleryPickerCallbacks callbacks;
    private BottomSheetBehavior mBehavior;

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.BsdkProjectEditorBottomSheetTheme);
    }

    @Override // android.support.design.widget.BottomSheetDialogFragment, android.support.v7.app.AppCompatDialogFragment, android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) super.onCreateDialog(bundle);
        View viewInflate = View.inflate(getContext(), R.layout.bsdk_dialog_image_picker, null);
        this.bsdkImagePickerRecycler = (RecyclerView) viewInflate.findViewById(R.id.bsdk_image_picker_recycler);
        bottomSheetDialog.setContentView(viewInflate);
        this.mBehavior = BottomSheetBehavior.from((View) viewInflate.getParent());
        this.mBehavior.setPeekHeight(Math.min(getResources().getDisplayMetrics().heightPixels / 2, (getResources().getDisplayMetrics().widthPixels * 9) / 16));
        this.bsdkImagePickerRecycler.setLayoutManager(new GridLayoutManager(getActivity(), BehanceSDKColumnCountUtil.getImagePickerColumnCount(getActivity())));
        this.bsdkImagePickerRecycler.addItemDecoration(new BehanceSDKSpaceItemDecorationGrid(getResources().getDimensionPixelSize(R.dimen.bsdk_gallery_grid_padding)));
        this.bsdkImagePickerRecycler.setAdapter(new BehanceSDKGallerySheetRecyclerAdapter(getActivity(), BehanceSDKGalleryUtils.getGalleryImageFilePaths(Environment.getExternalStorageDirectory().getAbsolutePath()), this));
        return bottomSheetDialog;
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKGallerySheetRecyclerAdapter.GalleryCallbacks
    public void onItemSelected(File file) {
        this.mBehavior.setState(5);
        if (this.callbacks != null) {
            this.callbacks.onFileSelected(file);
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKGallerySheetRecyclerAdapter.GalleryCallbacks
    public void onCCSelected() {
        this.mBehavior.setState(5);
        if (this.callbacks != null) {
            this.callbacks.onCCSelected();
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKGallerySheetRecyclerAdapter.GalleryCallbacks
    public void onCameraSelected() {
        this.mBehavior.setState(5);
        if (this.callbacks != null) {
            this.callbacks.onCameraSelected();
        }
    }

    public void setCallbacks(IBehanceSDKGalleryPickerCallbacks iBehanceSDKGalleryPickerCallbacks) {
        this.callbacks = iBehanceSDKGalleryPickerCallbacks;
    }
}
