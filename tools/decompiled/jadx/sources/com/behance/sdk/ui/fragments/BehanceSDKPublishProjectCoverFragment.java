package com.behance.sdk.ui.fragments;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.behance.sdk.BehanceSDKImageSelectorOptions;
import com.behance.sdk.R;
import com.behance.sdk.edmodo.cropper.CropImageView;
import com.behance.sdk.exception.NullReferenceException;
import com.behance.sdk.managers.BehanceSDKProjectPublishWFManager;
import com.behance.sdk.project.modules.CoverImage;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.project.modules.ProjectModule;
import com.behance.sdk.ui.activities.BehanceSDKPublishProjectActivity;
import com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment;
import com.behance.sdk.util.BehanceSDKFragmentTags;
import com.behance.sdk.util.BehanceSDKLaunchUtil;
import com.behance.sdk.util.BehanceSDKPermissionHelper;
import com.i.a.b.a.b;
import com.i.a.b.f.a;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKPublishProjectCoverFragment extends BehanceSDKPublishProjectBaseFragment implements View.OnClickListener, BehanceSDKProjectPublishWFManager.ProjectModuleChangeListener, BehanceSDKImageSelectorDialogFragment.Callbacks {
    private static final String ADD_PROJECT_COVER_IMAGE_KEY = "ADD_PROJECT_COVER_IMAGE_KEY";
    private static final String ADD_PROJECT_COVER_IMAGE_SELECTION_STATE = "ADD_PROJECT_COVER_IMAGE_SELECTION_STATE";
    private static final int FIRST_IMAGE = 0;
    private BehanceSDKProjectPublishWFManager addProjectManager = BehanceSDKProjectPublishWFManager.getInstance();
    private CoverImage cover;
    private ImageModule coverImage;
    private View coverImageBackground;
    private List<ImageModule> coverImageSelection;
    private CropImageView cropImageView;
    private ImageView croppedImage;
    private LinearLayout filmStripLayout;
    private View.OnClickListener listener;
    private int position;
    private View progressBar;
    private CropMode state;

    /* JADX INFO: loaded from: classes2.dex */
    public enum CropMode {
        INPROGRESS,
        DONE
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getLayout() {
        return R.layout.bsdk_dialog_fragment_publish_project_select_cover;
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected int getTitle() {
        return R.string.bsdk_add_content_project_cover_selection_title;
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected void backButtonPressed() {
        if (this.cover == null) {
            this.cover = new CoverImage(this.coverImage, null);
        }
        this.addProjectManager.setSelectedCoverImage(this.cover);
        super.backButtonPressed();
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment
    protected void nextButtonPressed() {
        if (this.state == CropMode.DONE) {
            this.addProjectManager.setSelectedCoverImage(this.cover);
            super.nextButtonPressed();
            return;
        }
        if (this.state == CropMode.INPROGRESS) {
            this.state = CropMode.DONE;
            this.actionBarForwardButton.setText(getResources().getString(R.string.bsdk_addproject_custom_actionbar_forward_nav_default_txt));
            try {
                this.cover = new CoverImage(this.coverImage, this.cropImageView.getCroppedImage());
                this.coverImage = null;
                updateSelectedCoverImage();
            } catch (NullReferenceException | IllegalArgumentException e2) {
                e2.printStackTrace();
                Toast.makeText(getActivity(), getResources().getString(R.string.bsdk_image_cropper_crop_failed_msg), 0).show();
            }
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment, android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.addProjectManager.addProjectModuleChangeListener(this);
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.addProjectManager.removeProjectModuleChangeListener(this);
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKPublishProjectBaseFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        hideSoftKeyBoardIfActive(this.rootView);
        this.coverImageBackground = this.rootView.findViewById(R.id.add_project_cover_selection_fragment_cover_image_layout);
        this.cropImageView = (CropImageView) this.rootView.findViewById(R.id.add_project_cover_selection_fragment_cover_image);
        this.croppedImage = (ImageView) this.rootView.findViewById(R.id.add_project_cover_selection_fragment_cropped_cover_Image);
        this.progressBar = this.rootView.findViewById(R.id.bsdkPublishProjectCoverPrgressBar);
        this.filmStripLayout = (LinearLayout) this.rootView.findViewById(R.id.add_project_cover_selection_fragment_selected_images);
        this.coverImageSelection = this.addProjectManager.getImagesSelectedForCover();
        if (bundle != null) {
            this.coverImage = (ImageModule) bundle.get(ADD_PROJECT_COVER_IMAGE_KEY);
            this.state = CropMode.valueOf(bundle.getString(ADD_PROJECT_COVER_IMAGE_SELECTION_STATE, CropMode.INPROGRESS.name()));
        }
        this.cover = this.addProjectManager.getSelectedCoverImage();
        if (this.cover != null) {
            this.coverImage = this.cover.getOriginalImage();
            if (!this.coverImageSelection.contains(this.coverImage)) {
                this.coverImage = this.coverImageSelection.get(0);
                this.position = 0;
                this.cover = null;
                this.state = CropMode.INPROGRESS;
            } else if (this.cover.getBitMap() != null) {
                this.state = CropMode.DONE;
            } else {
                this.state = CropMode.INPROGRESS;
            }
        } else {
            this.state = CropMode.INPROGRESS;
            if (this.coverImage == null && !this.coverImageSelection.isEmpty()) {
                this.coverImage = this.coverImageSelection.get(0);
                this.position = 0;
            }
        }
        if (this.state == CropMode.INPROGRESS) {
            this.actionBarForwardButton.setText(getResources().getString(R.string.bsdk_addproject_project_cover_selection_right_nav_crop_txt));
        }
        addImagesToLayout(this.filmStripLayout);
        updateSelectedCoverImage();
        this.rootView.findViewById(R.id.add_project_cover_selection_fragment_add_btn).setOnClickListener(this);
        if (bundle != null) {
            Fragment fragmentFindFragmentByTag = getActivity().getSupportFragmentManager().findFragmentByTag(BehanceSDKFragmentTags.FRAGMENT_TAG_ADD_PROJECT_COVER_NEW_IMAGE_SELECTION_FRAGMENT);
            if (fragmentFindFragmentByTag instanceof BehanceSDKImageSelectorDialogFragment) {
                ((BehanceSDKImageSelectorDialogFragment) fragmentFindFragmentByTag).setCallbacks(this);
            }
        }
        return this.rootView;
    }

    public void launchAlbumsViewToPickPictures() {
        if (getActivity() != null) {
            Intent intent = getActivity().getIntent();
            BehanceSDKImageSelectorOptions unlimitedImageSelectionOptions = BehanceSDKImageSelectorOptions.getUnlimitedImageSelectionOptions();
            if (intent.getBooleanExtra(BehanceSDKPublishProjectActivity.INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED, false)) {
                unlimitedImageSelectionOptions.setCCAssetBrowserDisabled(true);
            }
            BehanceSDKLaunchUtil.launchAlbumsViewToPickPicture(this, unlimitedImageSelectionOptions, getActivity().getSupportFragmentManager(), BehanceSDKFragmentTags.FRAGMENT_TAG_ADD_PROJECT_COVER_NEW_IMAGE_SELECTION_FRAGMENT);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.add_project_cover_selection_fragment_add_btn) {
            if (BehanceSDKPermissionHelper.checkPermission(getActivity(), 3)) {
                launchAlbumsViewToPickPictures();
            } else {
                ((BehanceSDKPublishProjectActivity) getActivity()).requestPermission(3);
            }
        }
    }

    private void addImagesToLayout(LinearLayout linearLayout) {
        for (int i = 0; i < this.coverImageSelection.size(); i++) {
            addImagetoLayout(i);
        }
    }

    private void addImagetoLayout(int i) {
        ImageModule imageModule = this.coverImageSelection.get(i);
        if (getActivity() != null) {
            View viewInflate = getLayoutInflater(getArguments()).inflate(R.layout.bsdk_adapter_publish_project_cover_image_filmstrip_list_item, (ViewGroup) this.rootView, false);
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.bsdkPublishProjectCoverImageFilmStripImage);
            if (imageModule.equals(this.coverImage)) {
                this.position = i;
                showSelector(viewInflate);
            }
            imageView.setImageBitmap(imageModule.getThumbNail(getActivity()));
            viewInflate.setOnClickListener(getClickListenerForImages());
            this.filmStripLayout.addView(viewInflate);
            viewInflate.setId(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSelector(View view) {
        view.findViewById(R.id.bsdkPublishProjectCoverImageFilmStripImageSelector).setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideSelector(View view) {
        View viewFindViewById = view.findViewById(R.id.bsdkPublishProjectCoverImageFilmStripImageSelector);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
    }

    private void hideSelector(int i) {
        View childAt = this.filmStripLayout.getChildAt(i);
        if (childAt != null) {
            hideSelector(childAt);
        }
    }

    private View.OnClickListener getClickListenerForImages() {
        if (this.listener == null) {
            this.listener = new View.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectCoverFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    int id = view.getId();
                    BehanceSDKPublishProjectCoverFragment.this.cover = null;
                    BehanceSDKPublishProjectCoverFragment.this.state = CropMode.INPROGRESS;
                    BehanceSDKPublishProjectCoverFragment.this.actionBarForwardButton.setText(BehanceSDKPublishProjectCoverFragment.this.getResources().getString(R.string.bsdk_addproject_project_cover_selection_right_nav_crop_txt));
                    BehanceSDKPublishProjectCoverFragment.this.showCoverImage(id);
                    View childAt = BehanceSDKPublishProjectCoverFragment.this.filmStripLayout.getChildAt(BehanceSDKPublishProjectCoverFragment.this.position);
                    if (childAt != null) {
                        BehanceSDKPublishProjectCoverFragment.this.hideSelector(childAt);
                    }
                    BehanceSDKPublishProjectCoverFragment.this.showSelector(view);
                    BehanceSDKPublishProjectCoverFragment.this.position = id;
                }
            };
        }
        return this.listener;
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.state != null) {
            bundle.putString(ADD_PROJECT_COVER_IMAGE_SELECTION_STATE, this.state.name());
        }
        if (this.coverImage != null) {
            bundle.putSerializable(ADD_PROJECT_COVER_IMAGE_KEY, this.coverImage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCoverImage(int i) {
        this.coverImage = this.coverImageSelection.get(i);
        updateSelectedCoverImage();
    }

    private void updateSelectedCoverImage() {
        if (this.state == CropMode.DONE) {
            this.croppedImage.setImageBitmap(this.cover.getBitMap());
            this.croppedImage.setVisibility(0);
            this.cropImageView.setVisibility(8);
            this.coverImageBackground.setBackgroundResource(R.color.bsdk_add_project_cover_image_fragment_done_state_background);
            return;
        }
        if (this.coverImage != null) {
            this.coverImage.displayImage(this.cropImageView.getImageView(), new a() { // from class: com.behance.sdk.ui.fragments.BehanceSDKPublishProjectCoverFragment.2
                @Override // com.i.a.b.f.a
                public void onLoadingStarted(String str, View view) {
                    BehanceSDKPublishProjectCoverFragment.this.cropImageView.setVisibility(8);
                    BehanceSDKPublishProjectCoverFragment.this.progressBar.setVisibility(0);
                }

                @Override // com.i.a.b.f.a
                public void onLoadingFailed(String str, View view, b bVar) {
                }

                @Override // com.i.a.b.f.a
                public void onLoadingComplete(String str, View view, Bitmap bitmap) {
                    BehanceSDKPublishProjectCoverFragment.this.cropImageView.setImageBitmap(bitmap);
                    BehanceSDKPublishProjectCoverFragment.this.croppedImage.setVisibility(8);
                    BehanceSDKPublishProjectCoverFragment.this.progressBar.setVisibility(8);
                    BehanceSDKPublishProjectCoverFragment.this.cropImageView.setVisibility(0);
                    BehanceSDKPublishProjectCoverFragment.this.coverImageBackground.setBackgroundResource(R.color.bsdk_add_project_cover_image_fragment_inprogress_state_background);
                    BehanceSDKPublishProjectCoverFragment.this.enableActionBarRightNav();
                }

                @Override // com.i.a.b.f.a
                public void onLoadingCancelled(String str, View view) {
                }
            });
        } else {
            disableActionBarRightNav();
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorSelectionFinished(List<ImageModule> list) {
        BehanceSDKProjectPublishWFManager.getInstance().addImagesSelectedForCover(list);
        int size = this.coverImageSelection.size();
        boolean z = size == 0;
        this.coverImageSelection.addAll(list);
        if (z) {
            showCoverImage(0);
        } else {
            hideSelector(this.position);
            showCoverImage(size);
        }
        for (int i = size; i < this.coverImageSelection.size(); i++) {
            addImagetoLayout(i);
        }
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorSelectionCanceled() {
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorSelectionBackPressed() {
    }

    @Override // com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.Callbacks
    public void onImageSelectorOnError(Exception exc) {
    }

    @Override // com.behance.sdk.managers.BehanceSDKProjectPublishWFManager.ProjectModuleChangeListener
    public void projectModulesChanged(List<ProjectModule> list) {
        this.coverImageSelection = this.addProjectManager.getImagesSelectedForCover();
        if (this.coverImageSelection != null && !this.coverImageSelection.isEmpty()) {
            if (!this.coverImageSelection.contains(this.coverImage)) {
                this.coverImage = this.coverImageSelection.get(0);
                this.position = 0;
                this.cover = null;
                this.state = CropMode.INPROGRESS;
                this.actionBarForwardButton.setText(getResources().getString(R.string.bsdk_addproject_project_cover_selection_right_nav_crop_txt));
                updateSelectedCoverImage();
            }
            this.filmStripLayout.removeAllViews();
            for (int i = 0; i < this.coverImageSelection.size(); i++) {
                addImagetoLayout(i);
            }
        }
    }

    @Override // com.behance.sdk.managers.BehanceSDKProjectPublishWFManager.ProjectModuleChangeListener
    public void rotateImage(ImageModule imageModule) {
        this.filmStripLayout.removeAllViews();
        for (int i = 0; i < this.coverImageSelection.size(); i++) {
            addImagetoLayout(i);
        }
        if (imageModule.equals(this.coverImage)) {
            updateSelectedCoverImage();
        }
    }
}
