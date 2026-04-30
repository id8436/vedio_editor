package com.behance.sdk.ui.fragments;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.content.FileProvider;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.BehanceSDKHeadlessFragmentTags;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKImageDTO;
import com.behance.sdk.factory.BehanceSDKImageValidatorFactory;
import com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment;
import com.behance.sdk.listeners.BehanceSDKImageLoadListener;
import com.behance.sdk.listeners.IBehanceSDKGalleryPickerCallbacks;
import com.behance.sdk.ui.activities.BehanceSDKCCLauncherActivity;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorCoverStripRecyclerAdapter;
import com.behance.sdk.ui.components.BehanceSDKCropView;
import com.behance.sdk.ui.decorators.BehanceSDKSpaceItemDecorationGrid;
import com.behance.sdk.ui.dialogs.BehanceSDKImagePickerDialogFragment;
import com.behance.sdk.util.BehanceSDKProjectEditorFileUtils;
import java.io.File;
import java.io.IOException;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorCoverFragment extends Fragment implements IBehanceSDKGalleryPickerCallbacks, BehanceSDKProjectEditorCoverStripRecyclerAdapter.CoverCallbacks {
    private static final String FRAGMENT_TAG_GALLERY_PICKER = "FRAGMENT_TAG_GALLERY_PICKER";
    private static final int REQUEST_CODE_CC_ASSETS = 2002;
    private static final int REQUEST_CODE_IMAGE_CAPTURE = 2001;
    private BehanceSDKProjectEditorHeadlessFragment headlessFragment;
    private String imageCaptureFilePath;
    private BehanceSDKCropView projectEditorCoverCropView;
    private RelativeLayout projectEditorCoverLoader;
    private RecyclerView projectEditorCoverThumbnailRecycler;

    private void initView(View view) {
        this.projectEditorCoverCropView = (BehanceSDKCropView) view.findViewById(R.id.project_editor_cover_crop_view);
        this.projectEditorCoverLoader = (RelativeLayout) view.findViewById(R.id.project_editor_cover_loader);
        this.projectEditorCoverThumbnailRecycler = (RecyclerView) view.findViewById(R.id.project_editor_cover_thumbnail_recycler);
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.bsdk_fragment_project_editor_cover, viewGroup, false);
        initView(viewInflate);
        this.headlessFragment = (BehanceSDKProjectEditorHeadlessFragment) getActivity().getSupportFragmentManager().findFragmentByTag(BehanceSDKHeadlessFragmentTags.FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT);
        final List<BehanceSDKImageDTO> coverImages = this.headlessFragment.getCoverImages();
        final int i = getResources().getConfiguration().orientation == 1 ? 0 : 1;
        this.projectEditorCoverThumbnailRecycler.setLayoutManager(new LinearLayoutManager(getActivity(), i, false));
        this.projectEditorCoverThumbnailRecycler.addItemDecoration(new BehanceSDKSpaceItemDecorationGrid(getResources().getDimensionPixelSize(R.dimen.bsdk_cover_list_padding)));
        this.projectEditorCoverThumbnailRecycler.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorCoverFragment.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                BehanceSDKProjectEditorCoverFragment.this.projectEditorCoverThumbnailRecycler.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                BehanceSDKProjectEditorCoverFragment.this.projectEditorCoverThumbnailRecycler.setAdapter(new BehanceSDKProjectEditorCoverStripRecyclerAdapter(BehanceSDKProjectEditorCoverFragment.this.getActivity(), coverImages, i, BehanceSDKProjectEditorCoverFragment.this.headlessFragment.isCoverChosen() ? -1 : 0, BehanceSDKProjectEditorCoverFragment.this));
                if (coverImages.size() == 0 && BehanceSDKProjectEditorCoverFragment.this.headlessFragment.getDraftCover() == null) {
                    BehanceSDKProjectEditorCoverFragment.this.onNewClick();
                }
            }
        });
        if (this.headlessFragment.isCoverChosen()) {
            hideLoader();
            this.projectEditorCoverCropView.setImageBitmap(BitmapFactory.decodeFile(this.headlessFragment.getCoverPath()));
            this.projectEditorCoverCropView.setEnabled(false);
        } else if (this.headlessFragment.getDraftCover() != null) {
            setProjectEditorCoverCropViewImageUri(Uri.parse(this.headlessFragment.getDraftCover()));
            this.projectEditorCoverCropView.setEnabled(false);
        } else if (coverImages.size() > 0) {
            if (coverImages.get(0).isLocal()) {
                setProjectEditorCoverCropViewImageUri(Uri.parse("file://" + coverImages.get(0).getPath()));
            } else {
                setProjectEditorCoverCropViewImageUri(Uri.parse(coverImages.get(0).getPath()));
            }
            this.projectEditorCoverCropView.setEnabled(true);
        }
        return viewInflate;
    }

    private void setProjectEditorCoverCropViewImageUri(Uri uri) {
        showLoader();
        this.projectEditorCoverCropView.setImageUri(uri, new BehanceSDKImageLoadListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorCoverFragment.2
            @Override // com.behance.sdk.listeners.BehanceSDKImageLoadListener
            public void onImageLoadComplete() {
                BehanceSDKProjectEditorCoverFragment.this.hideLoader();
            }
        });
    }

    private void showLoader() {
        this.projectEditorCoverLoader.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideLoader() {
        this.projectEditorCoverLoader.setVisibility(8);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorCoverStripRecyclerAdapter.CoverCallbacks
    public void onCoverClick(String str, boolean z) {
        this.projectEditorCoverCropView.setEnabled(true);
        setProjectEditorCoverCropViewImageUri(z ? Uri.parse("file://" + str) : Uri.parse(str));
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorCoverStripRecyclerAdapter.CoverCallbacks
    public void onNewClick() {
        BehanceSDKImagePickerDialogFragment behanceSDKImagePickerDialogFragment = new BehanceSDKImagePickerDialogFragment();
        behanceSDKImagePickerDialogFragment.setCallbacks(this);
        behanceSDKImagePickerDialogFragment.show(getFragmentManager(), FRAGMENT_TAG_GALLERY_PICKER);
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKGalleryPickerCallbacks
    public void onFileSelected(File file) {
        addFileAndSelect(file.getAbsolutePath());
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKGalleryPickerCallbacks
    public void onCameraSelected() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
            File fileCreateImageFile = null;
            try {
                fileCreateImageFile = BehanceSDKProjectEditorFileUtils.createImageFile(getActivity());
            } catch (IOException e2) {
            }
            if (fileCreateImageFile != null) {
                this.imageCaptureFilePath = fileCreateImageFile.getAbsolutePath();
                intent.putExtra("output", FileProvider.getUriForFile(getActivity(), BehanceSDK.getInstance().getFileProviderAuthority(), fileCreateImageFile));
                startActivityForResult(intent, 2001);
            }
        }
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKGalleryPickerCallbacks
    public void onCCSelected() {
        Intent intent = new Intent(getContext(), (Class<?>) BehanceSDKCCLauncherActivity.class);
        intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_ALLOWED_MIME_TYPES, EnumSet.of(AdobeAssetMimeTypes.MIMETYPE_GIF, AdobeAssetMimeTypes.MIMETYPE_JPEG, AdobeAssetMimeTypes.MIMETYPE_JPG, AdobeAssetMimeTypes.MIMETYPE_PNG, AdobeAssetMimeTypes.MIMETYPE_BMP));
        intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_IMAGE_VALIDATOR_TYPE, BehanceSDKImageValidatorFactory.PUBLISH_PROJECT_IMAGE_VALIDATOR);
        startActivityForResult(intent, 2002);
    }

    private void addFileAndSelect(String str) {
        BitmapFactory.Options storedImageDetails = BehanceSDKProjectEditorFileUtils.getStoredImageDetails(str);
        BehanceSDKImageDTO behanceSDKImageDTO = new BehanceSDKImageDTO(str, storedImageDetails.outWidth, storedImageDetails.outHeight, true);
        this.headlessFragment.addCoverAdditionalImages(behanceSDKImageDTO);
        ((BehanceSDKProjectEditorCoverStripRecyclerAdapter) this.projectEditorCoverThumbnailRecycler.getAdapter()).addCoverItem(behanceSDKImageDTO);
        onCoverClick(str, true);
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        List list;
        switch (i) {
            case 2001:
                if (i2 == -1) {
                    addFileAndSelect(this.imageCaptureFilePath);
                    this.imageCaptureFilePath = null;
                }
                break;
            case 2002:
                if (i2 == -1 && (list = (List) intent.getExtras().getSerializable(BehanceSDKCCLauncherActivity.ACTIVITY_RESULT_CC_SUCCESSFULLY_DOWNLOADED_FILES)) != null && !list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        addFileAndSelect(((File) it.next()).getAbsolutePath());
                    }
                    break;
                }
                break;
            default:
                super.onActivityResult(i, i2, intent);
                break;
        }
    }

    public boolean cropAndSave() {
        if (this.headlessFragment.isCoverChosen() && ((BehanceSDKProjectEditorCoverStripRecyclerAdapter) this.projectEditorCoverThumbnailRecycler.getAdapter()).getCurrentlySelectedPos() == -1) {
            return true;
        }
        Bitmap bitmapCrop = this.projectEditorCoverCropView.crop();
        if (bitmapCrop == null) {
            return false;
        }
        this.headlessFragment.saveCoverBitmap(bitmapCrop);
        return true;
    }
}
