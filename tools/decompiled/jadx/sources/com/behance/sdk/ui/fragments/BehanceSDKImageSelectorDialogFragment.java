package com.behance.sdk.ui.fragments;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowserOption;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.BehanceSDKImageDimensions;
import com.behance.sdk.BehanceSDKImageSelectorOptions;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKAlbumDTO;
import com.behance.sdk.enums.BehanceSDKAlbumType;
import com.behance.sdk.files.LocalImageLoader;
import com.behance.sdk.fragments.headless.BehanceSDKImageSelectorHeadlessFragment;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.project.modules.CreativeCloudAssetModule;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.ui.activities.BehanceSDKCCLauncherActivity;
import com.behance.sdk.ui.adapters.BehanceSDKAlbumGridArrayAdapter;
import com.behance.sdk.ui.adapters.BehanceSDKAlbumImageGridArrayAdapter;
import com.behance.sdk.util.BehanceSDKPermissionHelper;
import com.behance.sdk.util.BehanceSDKUtils;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKImageSelectorDialogFragment extends DialogFragment implements DialogInterface.OnKeyListener, View.OnClickListener, BehanceSDKImageSelectorHeadlessFragment.Callbacks {
    private static final int ACTIVITY_RESULT_REQUEST_CODE_CC_ASSET_BROWSER = 6789;
    private static final int ACTIVITY_RESULT_REQUEST_CODE_PICK_PICTURE_FROM_CAMERA = 1;
    public static final String ARGS_ALBUMS_WITH_IMAGE_SELECTION_SOURCES = "ARGS_ALBUMS_WITH_IMAGE_SELECTION_SOURCES";
    public static final String ARGS_ALLOWED_FILE_EXTENSIONS_LIST = "ARGS_ALLOWED_FILE_EXTENSIONS_LIST";
    public static final String ARGS_HIDE_CC_ASSET_BROWSER = "ARGS_HIDE_CC_ASSET_BROWSER";
    public static final String ARGS_IMAGE_VALITATOR_TYPE = "ARGS_IMAGE_VALITATOR_TYPE";
    public static final String ARGS_MAX_IMAGE_HEIGHT = "ARGS_MAX_IMAGE_HEIGHT";
    public static final String ARGS_MAX_IMAGE_SIZE_BYTES = "ARGS_MAX_IMAGE_SIZE_BYTES";
    public static final String ARGS_MAX_IMAGE_WIDTH = "ARGS_MAX_IMAGE_WIDTH";
    public static final String ARGS_MAX_NUMBER_OF_IMAGES = "ARGS_MAX_NUMBER_OF_IMAGES";
    public static final String ARGS_MIN_IMAGE_HEIGHT = "ARGS_MIN_IMAGE_HEIGHT";
    public static final String ARGS_MIN_IMAGE_SIZE_BYTES = "ARGS_MIN_IMAGE_SIZE_BYTES";
    public static final String ARGS_MIN_IMAGE_WIDTH = "ARGS_MIN_IMAGE_WIDTH";
    public static final String ARGS_PROHIBITED_FILE_EXTENSIONS_LIST = "ARGS_PROHIBITED_FILE_EXTENSIONS_LIST";
    private static final String BUNDLE_KEY_CAMERA_IMAGE_URI = "BUNDLE_KEY_CAMERA_IMAGE_URI";
    private static final String BUNDLE_KEY_LAST_DISPLAYED_ALBUM_INDEX = "BUNDLE_KEY_LAST_DISPLAYED_ALBUM_INDEX";
    private static final String BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX = "BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX";
    private static final String BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH = "BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH";
    private static final String BUNDLE_KEY_SELECTED_IMAGE_MODULES_LIST = "BUNDLE_KEY_SELECTED_IMAGE_MODULES_LIST";
    private static final String HEADLESS_FRAGMENT_TAG = "IMAGE_SELECTOR_FRAGMENT_HEADLESS_FRAGMENT_TAG_SELECT_IMAGES";
    private static final int VIEW_FLIPPER_ALBUMS_VIEW_INDEX = 0;
    private static final int VIEW_FLIPPER_ALBUM_IMAGES_VIEW_INDEX = 1;
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKImageSelectorDialogFragment.class);
    private GridView albumImagesGridView;
    private GridView albumsGridView;
    private ArrayList<String> allowedFileExtensionsList;
    private Callbacks callbacks;
    private boolean ccAssetBrowserDisabled;
    private BehanceSDKImageSelectorHeadlessFragment headlessFragment;
    private String imageValidatorType;
    private int lastDisplayedAlbumIndex;
    String mCurrentPhotoPath;
    private int maxImageHeight;
    private long maxImageSizeBytes;
    private int maxImageWidth;
    private int maxNumberOfImages;
    private int minImageHeight;
    private long minImageSizeBytes;
    private int minImageWidth;
    private View progressSpinner;
    private ArrayList<String> prohibitedFileExtensionsList;
    private Uri selectedCameraImageUri;
    private ArrayList<ImageModule> selectedImageModulesList;
    private boolean showImageSelectionSources;
    private TextView titleBarActionBtnTxtView;
    private TextView titleBarTitleTxtView;
    private ViewFlipper viewFlipper;

    /* JADX INFO: loaded from: classes2.dex */
    public interface Callbacks {
        void onImageSelectorOnError(Exception exc);

        void onImageSelectorSelectionBackPressed();

        void onImageSelectorSelectionCanceled();

        void onImageSelectorSelectionFinished(List<ImageModule> list);
    }

    public static BehanceSDKImageSelectorDialogFragment getInstance(Callbacks callbacks, BehanceSDKImageSelectorOptions behanceSDKImageSelectorOptions) {
        BehanceSDKImageSelectorDialogFragment behanceSDKImageSelectorDialogFragment = new BehanceSDKImageSelectorDialogFragment();
        behanceSDKImageSelectorDialogFragment.setCallbacks(callbacks);
        Bundle bundle = new Bundle();
        if (behanceSDKImageSelectorOptions != null) {
            bundle.putInt(ARGS_MAX_NUMBER_OF_IMAGES, behanceSDKImageSelectorOptions.getMaxNumberOfImages());
            BehanceSDKImageDimensions minImageDimensions = behanceSDKImageSelectorOptions.getMinImageDimensions();
            if (minImageDimensions != null) {
                bundle.putInt(ARGS_MIN_IMAGE_WIDTH, minImageDimensions.getWidth());
                bundle.putInt(ARGS_MIN_IMAGE_HEIGHT, minImageDimensions.getHeight());
            }
            BehanceSDKImageDimensions maxImageDimensions = behanceSDKImageSelectorOptions.getMaxImageDimensions();
            if (maxImageDimensions != null) {
                bundle.putInt(ARGS_MAX_IMAGE_WIDTH, maxImageDimensions.getWidth());
                bundle.putInt(ARGS_MAX_IMAGE_HEIGHT, maxImageDimensions.getHeight());
            }
            bundle.putBoolean(ARGS_ALBUMS_WITH_IMAGE_SELECTION_SOURCES, behanceSDKImageSelectorOptions.isShowImageImageSelectionSources());
            bundle.putBoolean(ARGS_HIDE_CC_ASSET_BROWSER, behanceSDKImageSelectorOptions.isCCAssetBrowserDisabled());
            bundle.putLong(ARGS_MIN_IMAGE_SIZE_BYTES, behanceSDKImageSelectorOptions.getMinImageSizeInBytes());
            bundle.putLong(ARGS_MAX_IMAGE_SIZE_BYTES, behanceSDKImageSelectorOptions.getMaxImageSizeInBytes());
            bundle.putStringArrayList(ARGS_ALLOWED_FILE_EXTENSIONS_LIST, behanceSDKImageSelectorOptions.getAllowedFileExtensions());
            bundle.putStringArrayList(ARGS_PROHIBITED_FILE_EXTENSIONS_LIST, behanceSDKImageSelectorOptions.getProhibitedFileExtensions());
            bundle.putString(ARGS_IMAGE_VALITATOR_TYPE, behanceSDKImageSelectorOptions.getImageValidatorType());
        } else {
            bundle.putInt(ARGS_MAX_NUMBER_OF_IMAGES, BehanceSDKImageSelectorOptions.UNLIMITED_NUM_OF_IMAGES);
        }
        behanceSDKImageSelectorDialogFragment.setArguments(bundle);
        return behanceSDKImageSelectorDialogFragment;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.BsdkImageSelectorViewTheme);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View viewInflate = layoutInflater.inflate(R.layout.bsdk_dialog_fragment_image_selector, viewGroup, false);
        this.lastDisplayedAlbumIndex = 0;
        if (bundle != null) {
            i = bundle.getInt(BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX, 0);
            this.lastDisplayedAlbumIndex = bundle.getInt(BUNDLE_KEY_LAST_DISPLAYED_ALBUM_INDEX, 0);
            Serializable serializable = bundle.getSerializable(BUNDLE_KEY_SELECTED_IMAGE_MODULES_LIST);
            if (serializable instanceof ArrayList) {
                this.selectedImageModulesList = (ArrayList) serializable;
            }
            this.mCurrentPhotoPath = bundle.getString(BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH);
            this.selectedCameraImageUri = (Uri) bundle.getParcelable(BUNDLE_KEY_CAMERA_IMAGE_URI);
        } else {
            i = 0;
        }
        if (this.selectedImageModulesList == null) {
            this.selectedImageModulesList = new ArrayList<>();
        }
        Bundle arguments = getArguments();
        this.maxNumberOfImages = BehanceSDKImageSelectorOptions.UNLIMITED_NUM_OF_IMAGES;
        this.minImageHeight = -1;
        this.minImageWidth = -1;
        this.maxImageHeight = -1;
        this.maxImageWidth = -1;
        this.minImageSizeBytes = -1L;
        this.maxImageSizeBytes = -1L;
        this.imageValidatorType = null;
        if (arguments != null) {
            this.maxNumberOfImages = arguments.getInt(ARGS_MAX_NUMBER_OF_IMAGES, BehanceSDKImageSelectorOptions.UNLIMITED_NUM_OF_IMAGES);
            this.minImageWidth = arguments.getInt(ARGS_MIN_IMAGE_WIDTH, -1);
            this.minImageHeight = arguments.getInt(ARGS_MIN_IMAGE_HEIGHT, -1);
            this.maxImageWidth = arguments.getInt(ARGS_MAX_IMAGE_WIDTH, -1);
            this.maxImageHeight = arguments.getInt(ARGS_MAX_IMAGE_HEIGHT, -1);
            this.showImageSelectionSources = arguments.getBoolean(ARGS_ALBUMS_WITH_IMAGE_SELECTION_SOURCES, true);
            this.minImageSizeBytes = arguments.getLong(ARGS_MIN_IMAGE_SIZE_BYTES, -1L);
            this.maxImageSizeBytes = arguments.getLong(ARGS_MAX_IMAGE_SIZE_BYTES, -1L);
            this.allowedFileExtensionsList = arguments.getStringArrayList(ARGS_ALLOWED_FILE_EXTENSIONS_LIST);
            this.prohibitedFileExtensionsList = arguments.getStringArrayList(ARGS_PROHIBITED_FILE_EXTENSIONS_LIST);
            this.imageValidatorType = arguments.getString(ARGS_IMAGE_VALITATOR_TYPE);
            this.ccAssetBrowserDisabled = arguments.getBoolean(ARGS_HIDE_CC_ASSET_BROWSER, false);
        }
        this.headlessFragment = (BehanceSDKImageSelectorHeadlessFragment) getActivity().getSupportFragmentManager().findFragmentByTag(HEADLESS_FRAGMENT_TAG);
        if (this.headlessFragment == null) {
            this.headlessFragment = new BehanceSDKImageSelectorHeadlessFragment();
            getActivity().getSupportFragmentManager().beginTransaction().add(this.headlessFragment, HEADLESS_FRAGMENT_TAG).commit();
        }
        this.headlessFragment.setCallbacks(this);
        this.viewFlipper = (ViewFlipper) viewInflate.findViewById(R.id.bsdkImageSelectorViewFlipper);
        this.progressSpinner = viewInflate.findViewById(R.id.bsdkImageSelectorViewProgressSpinner);
        viewInflate.findViewById(R.id.bsdkImageSelectorViewBackBtnImageView).setOnClickListener(this);
        this.titleBarActionBtnTxtView = (TextView) viewInflate.findViewById(R.id.bsdkImageSelectorViewTitlebarActionBtnTxtView);
        this.titleBarActionBtnTxtView.setOnClickListener(this);
        this.titleBarTitleTxtView = (TextView) viewInflate.findViewById(R.id.bsdkImageSelectorViewTitlebarTitleTxtView);
        this.albumsGridView = (GridView) viewInflate.findViewById(R.id.bsdkImageSelectorViewAlbumsGridView);
        this.albumsGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                BehanceSDKImageSelectorDialogFragment.this.onAlbumGridItemClick(adapterView, view, i2, j);
            }
        });
        this.albumImagesGridView = (GridView) viewInflate.findViewById(R.id.bsdkImageSelectorViewAlbumImagesGridView);
        this.albumImagesGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                BehanceSDKImageSelectorDialogFragment.this.onAlbumImageGridItemClick(adapterView, view, i2, j);
            }
        });
        if (this.maxNumberOfImages == BehanceSDKImageSelectorOptions.UNLIMITED_NUM_OF_IMAGES) {
            this.titleBarActionBtnTxtView.setText(R.string.bsdk_image_selector_view_titlebar_action_btn_multiple_photos_cancel_label);
        } else {
            this.titleBarActionBtnTxtView.setText(R.string.bsdk_image_selector_view_titlebar_action_btn_cancel_label);
        }
        if (this.lastDisplayedAlbumIndex >= 0 && i == 1) {
            BehanceSDKAlbumDTO fromAlbumWithImageSelectionSources = LocalImageLoader.getFromAlbumWithImageSelectionSources(getActivity(), this.lastDisplayedAlbumIndex);
            if (fromAlbumWithImageSelectionSources != null && fromAlbumWithImageSelectionSources.getAlbumType() == BehanceSDKAlbumType.DEVICE_ALBUM) {
                displaySelectedAlbumImagesView(fromAlbumWithImageSelectionSources, false);
            } else {
                this.viewFlipper.setDisplayedChild(0);
            }
        } else {
            this.viewFlipper.setDisplayedChild(i);
        }
        getDialog().setOnKeyListener(this);
        if (this.headlessFragment.isAlbumsLoadingInProgress()) {
            showProgressSpinner();
        } else {
            loadAlbums();
        }
        return viewInflate;
    }

    private void loadAlbums() {
        if (this.headlessFragment.getAlbumsList() != null && !this.headlessFragment.getAlbumsList().isEmpty()) {
            setAlbumsGridAdapter();
            hideProgressSpinner();
        } else {
            loadAlbumsFromDevice();
        }
    }

    private void loadAlbumsFromDevice() {
        showProgressSpinner();
        this.headlessFragment.loadAlbums(getActivity().getApplicationContext(), this.showImageSelectionSources);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (this.headlessFragment != null) {
            this.headlessFragment.setCallbacks(null);
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX, this.viewFlipper.getDisplayedChild());
        bundle.putInt(BUNDLE_KEY_LAST_DISPLAYED_ALBUM_INDEX, this.lastDisplayedAlbumIndex);
        bundle.putSerializable(BUNDLE_KEY_SELECTED_IMAGE_MODULES_LIST, this.selectedImageModulesList);
        if (this.selectedCameraImageUri != null) {
            bundle.putParcelable(BUNDLE_KEY_CAMERA_IMAGE_URI, this.selectedCameraImageUri);
        }
        if (this.mCurrentPhotoPath != null) {
            bundle.putString(BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH, this.mCurrentPhotoPath);
        }
    }

    private void setAlbumsGridAdapter() {
        List<BehanceSDKAlbumDTO> albumsList = this.headlessFragment.getAlbumsList();
        if (albumsList != null) {
            if (this.ccAssetBrowserDisabled) {
                Iterator<BehanceSDKAlbumDTO> it = albumsList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    BehanceSDKAlbumDTO next = it.next();
                    if (next.getAlbumType().equals(BehanceSDKAlbumType.CREATIVE_CLOUD)) {
                        albumsList.remove(next);
                        break;
                    }
                }
            }
            this.albumsGridView.setAdapter((ListAdapter) new BehanceSDKAlbumGridArrayAdapter(getActivity(), albumsList));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.bsdkImageSelectorViewTitlebarActionBtnTxtView) {
            handleActionBtnClick();
        } else if (view.getId() == R.id.bsdkImageSelectorViewBackBtnImageView) {
            handleBackBtnClick();
        }
    }

    private void handleBackBtnClick() {
        if (this.viewFlipper.getDisplayedChild() == 1) {
            displayAlbumsView();
        } else {
            notifyCallbacksOnBackPressed();
            closeThisDialog();
        }
    }

    private void handleActionBtnClick() {
        if (this.viewFlipper.getDisplayedChild() == 1) {
            if (this.maxNumberOfImages > 1 || this.maxNumberOfImages == BehanceSDKImageSelectorOptions.UNLIMITED_NUM_OF_IMAGES) {
                if (this.selectedImageModulesList.isEmpty()) {
                    notifyCallbacksOnCancel();
                    closeThisDialog();
                    return;
                } else {
                    notifyCallbacksOnImageSelection(this.selectedImageModulesList);
                    closeThisDialog();
                    return;
                }
            }
            notifyCallbacksOnCancel();
            closeThisDialog();
            return;
        }
        notifyCallbacksOnCancel();
        closeThisDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAlbumImageGridItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (itemAtPosition instanceof ImageModule) {
            ImageModule imageModule = (ImageModule) itemAtPosition;
            if (imageMatchesRequirements(imageModule) && imageModule.getFile() != null) {
                if (this.selectedImageModulesList.contains(imageModule)) {
                    this.selectedImageModulesList.remove(imageModule);
                } else {
                    this.selectedImageModulesList.add(imageModule);
                }
                Adapter adapter = adapterView.getAdapter();
                if (adapter instanceof BehanceSDKAlbumImageGridArrayAdapter) {
                    BehanceSDKAlbumImageGridArrayAdapter behanceSDKAlbumImageGridArrayAdapter = (BehanceSDKAlbumImageGridArrayAdapter) adapter;
                    behanceSDKAlbumImageGridArrayAdapter.setSelectedImageModulesList(this.selectedImageModulesList);
                    behanceSDKAlbumImageGridArrayAdapter.notifyDataSetChanged();
                }
                if (this.maxNumberOfImages != BehanceSDKImageSelectorOptions.UNLIMITED_NUM_OF_IMAGES && this.selectedImageModulesList.size() >= this.maxNumberOfImages) {
                    notifyCallbacksOnImageSelection(this.selectedImageModulesList);
                    closeThisDialog();
                }
                if (!this.selectedImageModulesList.isEmpty()) {
                    this.titleBarActionBtnTxtView.setText(R.string.bsdk_image_selector_view_titlebar_action_btn_multiple_photos_done_label);
                } else {
                    this.titleBarActionBtnTxtView.setText(R.string.bsdk_image_selector_view_titlebar_action_btn_multiple_photos_cancel_label);
                }
            }
        }
    }

    private boolean imageMatchesRequirements(ImageModule imageModule) {
        String name = imageModule.getName();
        String fileExtension = BehanceSDKUtils.getFileExtension(name);
        if (fileExtension != null && fileExtension.length() > 0) {
            if (this.prohibitedFileExtensionsList != null && !this.prohibitedFileExtensionsList.isEmpty() && this.prohibitedFileExtensionsList.contains(fileExtension)) {
                displayToastMessage(getString(R.string.bsdk_image_selector_view_image_file_type_not_allowed_msg, name, this.prohibitedFileExtensionsList.toString()));
                return false;
            }
            if (this.allowedFileExtensionsList != null && !this.allowedFileExtensionsList.isEmpty() && !this.allowedFileExtensionsList.contains(fileExtension)) {
                displayToastMessage(getString(R.string.bsdk_image_selector_view_image_file_type_allowed_msg, name, this.allowedFileExtensionsList.toString()));
                return false;
            }
            int width = imageModule.getWidth();
            int height = imageModule.getHeight();
            long sizeInBytes = imageModule.getSizeInBytes();
            if (sizeInBytes <= 0) {
                displayToastMessage(getString(R.string.bsdk_image_selector_view_image_size_invalid_msg));
                return false;
            }
            if (this.minImageSizeBytes > 0 && sizeInBytes < this.minImageSizeBytes) {
                displayToastMessage(getString(R.string.bsdk_image_selector_view_image_size_less_than_min_required_msg, (this.minImageSizeBytes / 1048576) + " MB"));
                return false;
            }
            if (this.maxImageSizeBytes > 0 && sizeInBytes > this.maxImageSizeBytes) {
                displayToastMessage(getString(R.string.bsdk_image_selector_view_image_size_more_than_max_allowed_msg, (this.maxImageSizeBytes / 1048576) + " MB"));
                return false;
            }
            if (width > 0 && height > 0) {
                if (this.minImageWidth > 0 && this.minImageHeight > 0 && (width < this.minImageWidth || height < this.minImageHeight)) {
                    displayToastMessage(getString(R.string.bsdk_image_selector_view_image_dimensions_less_than_min_required_msg, Integer.valueOf(this.minImageWidth), Integer.valueOf(this.minImageHeight), Integer.valueOf(width), Integer.valueOf(height)));
                    return false;
                }
                if (this.maxImageWidth <= 0 || this.maxImageHeight <= 0 || (width <= this.maxImageWidth && height <= this.maxImageHeight)) {
                    return true;
                }
                displayToastMessage(getString(R.string.bsdk_image_selector_view_image_dimensions_more_than_max_allowed_msg, Integer.valueOf(this.maxImageWidth), Integer.valueOf(this.maxImageHeight), Integer.valueOf(width), Integer.valueOf(height)));
                return false;
            }
            displayToastMessage(getString(R.string.bsdk_image_selector_view_image_dimensions_invalid_msg));
            return false;
        }
        displayToastMessage(getString(R.string.bsdk_image_selector_view_image_file_type_invalid_msg, name));
        return false;
    }

    private void displayToastMessage(String str) {
        if (str != null) {
            Toast.makeText(getActivity(), str, 1).show();
        }
    }

    private void notifyCallbacksOnCameraImageCaptureSuccess(ImageModule imageModule) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(imageModule);
        notifyCallbacksOnImageSelection(arrayList);
    }

    private void notifyCallbacksOnImageSelection(final List<ImageModule> list) {
        clearAlbumsCache();
        if (this.callbacks != null) {
            this.viewFlipper.post(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.3
                @Override // java.lang.Runnable
                public void run() {
                    BehanceSDKImageSelectorDialogFragment.this.callbacks.onImageSelectorSelectionFinished(list);
                }
            });
        }
    }

    private void clearAlbumsCache() {
        LocalImageLoader.clearCachedAlbumAndImagesData();
        if (this.headlessFragment != null) {
            this.headlessFragment.clearAlbumsCache();
        }
    }

    private void notifyCallbacksOnCancel() {
        clearAlbumsCache();
        if (this.callbacks != null) {
            this.viewFlipper.post(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.4
                @Override // java.lang.Runnable
                public void run() {
                    BehanceSDKImageSelectorDialogFragment.this.callbacks.onImageSelectorSelectionCanceled();
                }
            });
        }
    }

    private void notifyCallbacksOnBackPressed() {
        clearAlbumsCache();
        if (this.callbacks != null) {
            this.viewFlipper.post(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    BehanceSDKImageSelectorDialogFragment.this.callbacks.onImageSelectorSelectionBackPressed();
                }
            });
        }
    }

    private void notifyCallbacksOnError(final Exception exc) {
        clearAlbumsCache();
        if (this.callbacks != null) {
            this.viewFlipper.post(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKImageSelectorDialogFragment.6
                @Override // java.lang.Runnable
                public void run() {
                    BehanceSDKImageSelectorDialogFragment.this.callbacks.onImageSelectorOnError(exc);
                }
            });
        }
    }

    private void launchCCAssetBrowser() {
        if (BehanceSDKPermissionHelper.checkPermission(getActivity(), 4)) {
            launchCreativeCloudAssetBrowser();
        } else if (Build.VERSION.SDK_INT >= 23) {
            requestPermissions(BehanceSDKPermissionHelper.getPermissionFromRequestCode(4, getActivity()), 4);
        }
    }

    private void launchCamera() {
        if (BehanceSDKPermissionHelper.checkPermission(getActivity(), 2)) {
            launchCameraToCapturePicture();
        } else if (Build.VERSION.SDK_INT >= 23) {
            requestPermissions(BehanceSDKPermissionHelper.getPermissionFromRequestCode(2, getActivity()), 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAlbumGridItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (adapterView.getItemAtPosition(i) instanceof BehanceSDKAlbumDTO) {
            this.lastDisplayedAlbumIndex = i;
            BehanceSDKAlbumDTO behanceSDKAlbumDTO = (BehanceSDKAlbumDTO) adapterView.getItemAtPosition(i);
            if (behanceSDKAlbumDTO.getAlbumType() == BehanceSDKAlbumType.DEVICE_ALBUM) {
                this.selectedImageModulesList.clear();
                displaySelectedAlbumImagesView(behanceSDKAlbumDTO, true);
            } else if (behanceSDKAlbumDTO.getAlbumType() == BehanceSDKAlbumType.CAMERA) {
                launchCamera();
            } else if (behanceSDKAlbumDTO.getAlbumType() == BehanceSDKAlbumType.CREATIVE_CLOUD) {
                launchCCAssetBrowser();
            }
        }
    }

    private void displayAlbumsView() {
        this.titleBarTitleTxtView.setText(R.string.bsdk_image_selector_view_titlebar_title_albums_txt);
        if (this.maxNumberOfImages == BehanceSDKImageSelectorOptions.UNLIMITED_NUM_OF_IMAGES) {
            this.titleBarActionBtnTxtView.setText(R.string.bsdk_image_selector_view_titlebar_action_btn_multiple_photos_cancel_label);
        } else {
            this.titleBarActionBtnTxtView.setText(R.string.bsdk_image_selector_view_titlebar_action_btn_cancel_label);
        }
        this.viewFlipper.setInAnimation(null);
        this.viewFlipper.setOutAnimation(getActivity(), R.anim.bsdk_dialog_exit);
        this.viewFlipper.setDisplayedChild(0);
    }

    private void displaySelectedAlbumImagesView(BehanceSDKAlbumDTO behanceSDKAlbumDTO, boolean z) {
        List<ImageModule> images = behanceSDKAlbumDTO.getImages();
        if (images != null && !images.isEmpty()) {
            BehanceSDKAlbumImageGridArrayAdapter behanceSDKAlbumImageGridArrayAdapter = new BehanceSDKAlbumImageGridArrayAdapter(getActivity(), images);
            behanceSDKAlbumImageGridArrayAdapter.setSelectedImageModulesList(this.selectedImageModulesList);
            this.albumImagesGridView.setAdapter((ListAdapter) behanceSDKAlbumImageGridArrayAdapter);
            if (this.maxNumberOfImages == BehanceSDKImageSelectorOptions.UNLIMITED_NUM_OF_IMAGES) {
                this.titleBarTitleTxtView.setText(R.string.bsdk_image_selector_view_titlebar_title_choose_photos_txt);
                if (!this.selectedImageModulesList.isEmpty()) {
                    this.titleBarActionBtnTxtView.setText(R.string.bsdk_image_selector_view_titlebar_action_btn_multiple_photos_done_label);
                } else {
                    this.titleBarActionBtnTxtView.setText(R.string.bsdk_image_selector_view_titlebar_action_btn_multiple_photos_cancel_label);
                }
            } else {
                this.titleBarTitleTxtView.setText(R.string.bsdk_image_selector_view_titlebar_title_choose_single_photo_txt);
                this.titleBarActionBtnTxtView.setText(R.string.bsdk_image_selector_view_titlebar_action_btn_cancel_label);
            }
            if (z) {
                this.viewFlipper.setInAnimation(getActivity(), R.anim.bsdk_dialog_enter);
                this.viewFlipper.setOutAnimation(null);
            } else {
                this.viewFlipper.setInAnimation(null);
                this.viewFlipper.setOutAnimation(null);
            }
            this.viewFlipper.setDisplayedChild(1);
            return;
        }
        Toast.makeText(getActivity(), getResources().getString(R.string.bsdk_image_selector_view_empty_album_msg, behanceSDKAlbumDTO.getName()), 0).show();
        displayAlbumsView();
    }

    private void launchCreativeCloudAssetBrowser() {
        Intent intent = new Intent(getActivity(), (Class<?>) BehanceSDKCCLauncherActivity.class);
        EnumSet<AdobeAssetMimeTypes> adobeAssetMimeTypes = BehanceSDKUtils.getAdobeAssetMimeTypes(this.allowedFileExtensionsList);
        if (adobeAssetMimeTypes != null) {
            intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_ALLOWED_MIME_TYPES, adobeAssetMimeTypes);
        }
        if (this.maxNumberOfImages != 1) {
            intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_ASSET_BROWSER_OPTIONS, EnumSet.of(AdobeUXAssetBrowserOption.ENABLE_MULTI_SELECT, AdobeUXAssetBrowserOption.SHOW_MULTI_SELECT_ON_POPUP));
        }
        if (this.imageValidatorType != null) {
            intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_IMAGE_VALIDATOR_TYPE, this.imageValidatorType);
        }
        startActivityForResult(intent, ACTIVITY_RESULT_REQUEST_CODE_CC_ASSET_BROWSER);
    }

    private void launchCameraToCapturePicture() {
        try {
            File fileCreateTempImageFile = BehanceSDKUtils.createTempImageFile();
            this.mCurrentPhotoPath = fileCreateTempImageFile.getAbsolutePath();
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
                String fileProviderAuthority = BehanceSDK.getInstance().getFileProviderAuthority();
                if (fileCreateTempImageFile != null && !TextUtils.isEmpty(fileProviderAuthority)) {
                    this.selectedCameraImageUri = FileProvider.getUriForFile(getContext(), fileProviderAuthority, fileCreateTempImageFile);
                    intent.putExtra("output", this.selectedCameraImageUri);
                    startActivityForResult(intent, 1);
                }
            } else {
                logger.error("Camera intent not found", new Object[0]);
                Toast.makeText(getActivity(), R.string.bsdk_add_wip_pick_source_view_camera_launch_error, 1).show();
            }
        } catch (IOException e2) {
            logger.error(e2, "Problem creating temp file to capture image", new Object[0]);
            Toast.makeText(getActivity(), R.string.bsdk_add_wip_pick_source_view_camera_launch_error, 1).show();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case 1:
                if (i2 == -1) {
                    logger.debug("Camera Activity returned with ok result. [Photo Uri - %s]", this.selectedCameraImageUri);
                    if (this.selectedCameraImageUri != null) {
                        File file = new File(this.mCurrentPhotoPath);
                        notifyCallbacksOnCameraImageCaptureSuccess(new ImageModule(file));
                        BehanceSDKUtils.addImageToGallery(getActivity(), file.getAbsolutePath());
                        clearAlbumsCache();
                        loadAlbums();
                        closeThisDialog();
                    }
                } else {
                    logger.debug("Camera Activity returned with not ok result. [Result - %s]", Integer.valueOf(i2));
                }
                break;
            case ACTIVITY_RESULT_REQUEST_CODE_CC_ASSET_BROWSER /* 6789 */:
                if (i2 == -1) {
                    List list = (List) intent.getExtras().getSerializable(BehanceSDKCCLauncherActivity.ACTIVITY_RESULT_CC_SUCCESSFULLY_DOWNLOADED_FILES);
                    if (list != null && !list.isEmpty()) {
                        ArrayList arrayList = new ArrayList(list.size());
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            CreativeCloudAssetModule creativeCloudAssetModule = new CreativeCloudAssetModule((File) it.next());
                            if (imageMatchesRequirements(creativeCloudAssetModule)) {
                                arrayList.add(creativeCloudAssetModule);
                            }
                        }
                        notifyCallbacksOnImageSelection(arrayList);
                    }
                    closeThisDialog();
                } else if (i2 == 0) {
                    notifyCallbacksOnCancel();
                    closeThisDialog();
                }
                break;
        }
    }

    public Callbacks getCallbacks() {
        return this.callbacks;
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    private void closeThisDialog() {
        dismissAllowingStateLoss();
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() == 0) {
            return false;
        }
        handleBackBtnClick();
        return true;
    }

    private void showProgressSpinner() {
        if (this.progressSpinner != null) {
            this.progressSpinner.setVisibility(0);
        }
    }

    private void hideProgressSpinner() {
        if (this.progressSpinner != null) {
            this.progressSpinner.setVisibility(8);
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKImageSelectorHeadlessFragment.Callbacks
    public void onGetAlbumsSuccess() {
        if (getActivity() != null) {
            setAlbumsGridAdapter();
            hideProgressSpinner();
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKImageSelectorHeadlessFragment.Callbacks
    public void onGetAlbumsFailure(Exception exc) {
        if (getActivity() != null) {
            hideProgressSpinner();
            logger.error(exc, "Problem loading albums", new Object[0]);
            Toast.makeText(getActivity(), R.string.bsdk_image_selector_view_error_loading_albums_msg, 1).show();
            notifyCallbacksOnError(exc);
            closeThisDialog();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 2:
                if ((iArr.length == 2 && iArr[0] == 0 && iArr[1] == 0) || (iArr.length == 1 && iArr[0] == 0)) {
                    launchCameraToCapturePicture();
                } else {
                    int i2 = R.string.behance_sdk_permissions_error_camera;
                    if (iArr.length == 2) {
                        if (iArr[0] != 0 && iArr[1] != 0) {
                            i2 = R.string.behance_sdk_permissions_error;
                        } else if (iArr[0] != 0) {
                            i2 = R.string.behance_sdk_permissions_error_camera;
                        } else {
                            i2 = R.string.behance_sdk_permissions_error_generic;
                        }
                    } else if (iArr.length == 1) {
                        i2 = R.string.behance_sdk_permissions_error_generic;
                    }
                    Toast.makeText(getActivity(), getActivity().getString(i2), 1).show();
                }
                break;
            case 4:
                if (iArr.length == 1 && iArr[0] == 0) {
                    launchCreativeCloudAssetBrowser();
                } else {
                    Toast.makeText(getActivity(), getActivity().getString(R.string.behance_sdk_permissions_error_generic), 1).show();
                }
                break;
        }
    }
}
