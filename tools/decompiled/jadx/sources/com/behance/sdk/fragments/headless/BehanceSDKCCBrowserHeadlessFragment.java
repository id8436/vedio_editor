package com.behance.sdk.fragments.headless;

import android.app.Activity;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.support.v4.app.Fragment;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.storage.AdobePhotoAssetsDataSource;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetCompPage;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetDrawPage;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetPSMixPage;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetSketchbookPage;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetCompFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDesignLibraryItemFilter;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDesignLibraryItemFilterType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDesignLibraryItemType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDrawFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibraryItemImage;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMIMETypeFilter;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMIMETypeFilterType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPSMixFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetPackagePages;
import com.adobe.creativesdk.foundation.storage.AdobeAssetSketchbook;
import com.adobe.creativesdk.foundation.storage.AdobePhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import com.adobe.creativesdk.foundation.storage.AdobeSelection;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionCompFile;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionDrawAsset;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionLibraryAsset;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionPSMixFile;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionPhotoAsset;
import com.adobe.creativesdk.foundation.storage.AdobeSelectionSketchAsset;
import com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowser;
import com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowserConfiguration;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback;
import com.behance.sdk.R;
import com.behance.sdk.factory.BehanceSDKImageProperties;
import com.behance.sdk.factory.BehanceSDKImageValidatorFactory;
import com.behance.sdk.factory.IBehanceSDKImageValidator;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.ui.activities.BehanceSDKCCLauncherActivity;
import com.behance.sdk.util.BehanceSDKUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCCBrowserHeadlessFragment extends Fragment {
    private static final int BEHANCE_SDK_ASSET_BROWSER_LAUNCH_REQUEST_CODE = 9786;
    public static final String HEIGHT = "height";
    public static final String IMAGE_GIF = "image/gif";
    public static final String IMAGE_JPEG = "image/jpeg";
    public static final String IMAGE_PNG = "image/png";
    private static final int MAX_WIDTH_HEIGHT = 2560;
    public static final String WIDTH = "width";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKCCBrowserHeadlessFragment.class);
    private List<File> downloadErrors;
    private List<File> files;
    private String imageValidatorType;
    private List<File> invalidFile;
    private volatile boolean isDownloadInProgress = false;
    private ICreativeCloudAssetDownloadListener listener;
    private ArrayList<AdobeSelection> mSelectedAssetsList;
    private File tempStorageFolder;

    public interface ICreativeCloudAssetDownloadListener {
        void onDownloadComplete(List<File> list, List<File> list2, List<File> list3);

        void onDownloadError(AdobeAssetException adobeAssetException);
    }

    public boolean isDownloadInProgress() {
        return this.isDownloadInProgress;
    }

    public void setDownloadListener(ICreativeCloudAssetDownloadListener iCreativeCloudAssetDownloadListener) {
        this.listener = iCreativeCloudAssetDownloadListener;
    }

    public void removeDownloadListener() {
        this.listener = null;
    }

    public BehanceSDKCCBrowserHeadlessFragment() {
        setRetainInstance(true);
    }

    public void launchCCAssetBrowser(Activity activity, Intent intent) throws AdobeCSDKException {
        this.imageValidatorType = intent.getStringExtra(BehanceSDKCCLauncherActivity.ARGS_IMAGE_VALIDATOR_TYPE);
        AdobeUXAssetBrowserConfiguration adobeUXAssetBrowserConfiguration = new AdobeUXAssetBrowserConfiguration();
        Serializable serializableExtra = intent.getSerializableExtra(BehanceSDKCCLauncherActivity.ARGS_ASSET_BROWSER_OPTIONS);
        if (serializableExtra != null) {
            adobeUXAssetBrowserConfiguration.options = (EnumSet) serializableExtra;
        }
        adobeUXAssetBrowserConfiguration.designLibraryItemFilter = AdobeAssetDesignLibraryItemFilter.createFromDesignLibraryItems(EnumSet.of(AdobeAssetDesignLibraryItemType.AdobeAssetDesignLibraryItemImages), AdobeAssetDesignLibraryItemFilterType.ADOBE_ASSET_DESIGNLIBRARYITEM_FILTER_INCLUSION);
        Serializable serializableExtra2 = intent.getSerializableExtra(BehanceSDKCCLauncherActivity.ARGS_ALLOWED_MIME_TYPES);
        if (serializableExtra2 != null) {
            adobeUXAssetBrowserConfiguration.mimeTypeFilter = AdobeAssetMIMETypeFilter.createFromMimeTypes((EnumSet) serializableExtra2, AdobeAssetMIMETypeFilterType.ADOBE_ASSET_MIMETYPE_FILTERTYPE_INCLUSION);
        }
        AdobeUXAssetBrowser.getSharedInstance().popupFileBrowser(activity, BEHANCE_SDK_ASSET_BROWSER_LAUNCH_REQUEST_CODE, adobeUXAssetBrowserConfiguration);
    }

    public synchronized void cancelDownload() {
        if (this.mSelectedAssetsList != null && !this.mSelectedAssetsList.isEmpty()) {
            for (AdobeSelection adobeSelection : this.mSelectedAssetsList) {
                if (adobeSelection instanceof AdobeSelectionAssetFile) {
                    AdobeAssetFile selectedItem = ((AdobeSelectionAssetFile) adobeSelection).getSelectedItem();
                    selectedItem.cancelDataRequest();
                    BehanceSDKImageProperties imageProperties = getImageProperties(selectedItem);
                    if (imageProperties.getHeight() > MAX_WIDTH_HEIGHT || imageProperties.getWidth() > MAX_WIDTH_HEIGHT) {
                        selectedItem.cancelRenditionRequest();
                    } else {
                        selectedItem.cancelDataRequest();
                    }
                }
            }
            if (this.files != null && !this.files.isEmpty()) {
                for (File file : this.files) {
                    if (file.exists()) {
                        file.delete();
                    }
                }
            }
            BehanceSDKUtils.deleteRecursive(this.tempStorageFolder);
            this.mSelectedAssetsList = null;
            this.files = null;
            this.downloadErrors = null;
            this.invalidFile = null;
        }
        this.isDownloadInProgress = false;
    }

    private String getUpdatedName(String str) {
        if (BehanceSDKUtils.getFileExtension(str).equals("")) {
            return str + ".png";
        }
        return str;
    }

    public synchronized void downloadSelectedFiles(Intent intent) {
        this.isDownloadInProgress = true;
        this.mSelectedAssetsList = new AdobeUXAssetBrowser.ResultProvider(intent).getSelectionAssetArray();
        if (this.mSelectedAssetsList != null && !this.mSelectedAssetsList.isEmpty()) {
            int size = this.mSelectedAssetsList.size();
            this.files = new ArrayList();
            this.downloadErrors = new ArrayList();
            this.invalidFile = new ArrayList();
            this.tempStorageFolder = getStorageDirectoryForDownload();
            for (AdobeSelection adobeSelection : this.mSelectedAssetsList) {
                if (adobeSelection instanceof AdobeSelectionAssetFile) {
                    processImage(size, (AdobeSelectionAssetFile) adobeSelection);
                } else if (adobeSelection instanceof AdobeSelectionPhotoAsset) {
                    processPhoto(size, (AdobeSelectionPhotoAsset) adobeSelection);
                } else if (adobeSelection instanceof AdobeSelectionLibraryAsset) {
                    processLibraryItem(size, (AdobeSelectionLibraryAsset) adobeSelection);
                } else if (adobeSelection instanceof AdobeSelectionDrawAsset) {
                    processDraw(size, (AdobeSelectionDrawAsset) adobeSelection);
                } else if (adobeSelection instanceof AdobeSelectionSketchAsset) {
                    processSketch(size, (AdobeSelectionSketchAsset) adobeSelection);
                } else if (adobeSelection instanceof AdobeSelectionCompFile) {
                    processComp(size, (AdobeSelectionCompFile) adobeSelection);
                } else if (adobeSelection instanceof AdobeSelectionPSMixFile) {
                    processMix(size, (AdobeSelectionPSMixFile) adobeSelection);
                }
            }
        } else {
            this.isDownloadInProgress = false;
        }
    }

    private void processLibraryItem(int i, AdobeSelectionLibraryAsset adobeSelectionLibraryAsset) {
        AdobeAssetFile image;
        if (adobeSelectionLibraryAsset.getSelectedImageIDs() != null) {
            AdobeAssetLibraryItemImage adobeAssetLibraryItemImage = adobeSelectionLibraryAsset.getSelectedItem().getImages().get(adobeSelectionLibraryAsset.getSelectedImageIDs().get(0));
            File file = new File(this.tempStorageFolder, getUpdatedName(adobeAssetLibraryItemImage.getName()));
            if (adobeAssetLibraryItemImage.getPrimaryComponentType().equals(AdobeAssetFileExtensions.kAdobeMimeTypeShape)) {
                image = adobeAssetLibraryItemImage.getRendition();
            } else {
                image = adobeAssetLibraryItemImage.getImage();
            }
            if (image != null) {
                downloadRendition(i, image, file);
            }
        }
    }

    private void processDraw(final int i, AdobeSelectionDrawAsset adobeSelectionDrawAsset) {
        final int selectedPageIndex = adobeSelectionDrawAsset.getSelectedPageIndex();
        final AdobeAssetDrawFile selectedItem = adobeSelectionDrawAsset.getSelectedItem();
        final File file = new File(this.tempStorageFolder, getUpdatedName(selectedItem.getName()));
        selectedItem.loadMetadata(new IAdobeRequestCompletionCallback() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.1
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
            public void onCompletion() {
                AdobeAssetDrawPage adobeAssetDrawPage = (AdobeAssetDrawPage) selectedItem.getPages().get(selectedPageIndex);
                AdobeAssetPackagePages adobeAssetPackagePages = adobeAssetDrawPage._package;
                adobeAssetDrawPage.getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, new AdobeAssetImageDimensions(2560.0f, 2560.0f), new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.1.1
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        BehanceSDKCCBrowserHeadlessFragment.this.saveDatatoFile(bArr, file);
                        IBehanceSDKImageValidator imageValidator = BehanceSDKCCBrowserHeadlessFragment.this.getImageValidator();
                        if (imageValidator != null) {
                            if (imageValidator.validate(BehanceSDKCCBrowserHeadlessFragment.this.getActivity(), BehanceSDKCCBrowserHeadlessFragment.this.getImageProperties(file))) {
                                BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                            } else {
                                BehanceSDKCCBrowserHeadlessFragment.this.invalidFile.add(file);
                            }
                        } else {
                            BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                        }
                        BehanceSDKCCBrowserHeadlessFragment.this.checkForDownloadComplete(i);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        BehanceSDKCCBrowserHeadlessFragment.this.downloadErrors.add(file);
                        BehanceSDKCCBrowserHeadlessFragment.this.showMessage(BehanceSDKCCBrowserHeadlessFragment.this.getString(R.string.bsdk_cc_asset_browser_file_download_error, file.getName()));
                        if (BehanceSDKCCBrowserHeadlessFragment.this.listener != null) {
                            BehanceSDKCCBrowserHeadlessFragment.this.listener.onDownloadError(adobeAssetException);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }
                });
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.2
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
            }
        });
    }

    private void processComp(final int i, AdobeSelectionCompFile adobeSelectionCompFile) {
        final int selectedPageIndex = adobeSelectionCompFile.getSelectedPageIndex();
        final AdobeAssetCompFile selectedItem = adobeSelectionCompFile.getSelectedItem();
        final File file = new File(this.tempStorageFolder, getUpdatedName(selectedItem.getName()));
        selectedItem.loadMetadata(new IAdobeRequestCompletionCallback() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.3
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
            public void onCompletion() {
                ((AdobeAssetCompPage) selectedItem.getPages().get(selectedPageIndex)).getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, new AdobeAssetImageDimensions(2560.0f, 2560.0f), new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.3.1
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        BehanceSDKCCBrowserHeadlessFragment.this.saveDatatoFile(bArr, file);
                        IBehanceSDKImageValidator imageValidator = BehanceSDKCCBrowserHeadlessFragment.this.getImageValidator();
                        if (imageValidator != null) {
                            if (imageValidator.validate(BehanceSDKCCBrowserHeadlessFragment.this.getActivity(), BehanceSDKCCBrowserHeadlessFragment.this.getImageProperties(file))) {
                                BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                            } else {
                                BehanceSDKCCBrowserHeadlessFragment.this.invalidFile.add(file);
                            }
                        } else {
                            BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                        }
                        BehanceSDKCCBrowserHeadlessFragment.this.checkForDownloadComplete(i);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        BehanceSDKCCBrowserHeadlessFragment.this.downloadErrors.add(file);
                        BehanceSDKCCBrowserHeadlessFragment.this.showMessage(BehanceSDKCCBrowserHeadlessFragment.this.getString(R.string.bsdk_cc_asset_browser_file_download_error, file.getName()));
                        if (BehanceSDKCCBrowserHeadlessFragment.this.listener != null) {
                            BehanceSDKCCBrowserHeadlessFragment.this.listener.onDownloadError(adobeAssetException);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }
                });
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.4
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
            }
        });
    }

    private void processMix(final int i, AdobeSelectionPSMixFile adobeSelectionPSMixFile) {
        final int selectedPageIndex = adobeSelectionPSMixFile.getSelectedPageIndex();
        final AdobeAssetPSMixFile selectedItem = adobeSelectionPSMixFile.getSelectedItem();
        final File file = new File(this.tempStorageFolder, getUpdatedName(selectedItem.getName()));
        selectedItem.loadMetadata(new IAdobeRequestCompletionCallback() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.5
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
            public void onCompletion() {
                ((AdobeAssetPSMixPage) selectedItem.getPages().get(selectedPageIndex)).getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, new AdobeAssetImageDimensions(2560.0f, 2560.0f), new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.5.1
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        BehanceSDKCCBrowserHeadlessFragment.this.saveDatatoFile(bArr, file);
                        IBehanceSDKImageValidator imageValidator = BehanceSDKCCBrowserHeadlessFragment.this.getImageValidator();
                        if (imageValidator != null) {
                            if (imageValidator.validate(BehanceSDKCCBrowserHeadlessFragment.this.getActivity(), BehanceSDKCCBrowserHeadlessFragment.this.getImageProperties(file))) {
                                BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                            } else {
                                BehanceSDKCCBrowserHeadlessFragment.this.invalidFile.add(file);
                            }
                        } else {
                            BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                        }
                        BehanceSDKCCBrowserHeadlessFragment.this.checkForDownloadComplete(i);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        BehanceSDKCCBrowserHeadlessFragment.this.downloadErrors.add(file);
                        BehanceSDKCCBrowserHeadlessFragment.this.showMessage(BehanceSDKCCBrowserHeadlessFragment.this.getString(R.string.bsdk_cc_asset_browser_file_download_error, file.getName()));
                        if (BehanceSDKCCBrowserHeadlessFragment.this.listener != null) {
                            BehanceSDKCCBrowserHeadlessFragment.this.listener.onDownloadError(adobeAssetException);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }
                });
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.6
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
            }
        });
    }

    private void processSketch(final int i, AdobeSelectionSketchAsset adobeSelectionSketchAsset) {
        final int selectedPageIndex = adobeSelectionSketchAsset.getSelectedPageIndex();
        final AdobeAssetSketchbook selectedItem = adobeSelectionSketchAsset.getSelectedItem();
        final File file = new File(this.tempStorageFolder, getUpdatedName(selectedItem.getName()));
        selectedItem.loadMetadata(new IAdobeRequestCompletionCallback() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.7
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
            public void onCompletion() {
                AdobeAssetSketchbookPage adobeAssetSketchbookPage = (AdobeAssetSketchbookPage) selectedItem.getPages().get(selectedPageIndex);
                AdobeAssetPackagePages adobeAssetPackagePages = adobeAssetSketchbookPage._package;
                adobeAssetSketchbookPage.getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, new AdobeAssetImageDimensions(2560.0f, 2560.0f), new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.7.1
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        BehanceSDKCCBrowserHeadlessFragment.this.saveDatatoFile(bArr, file);
                        IBehanceSDKImageValidator imageValidator = BehanceSDKCCBrowserHeadlessFragment.this.getImageValidator();
                        if (imageValidator != null) {
                            if (imageValidator.validate(BehanceSDKCCBrowserHeadlessFragment.this.getActivity(), BehanceSDKCCBrowserHeadlessFragment.this.getImageProperties(file))) {
                                BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                            } else {
                                BehanceSDKCCBrowserHeadlessFragment.this.invalidFile.add(file);
                            }
                        } else {
                            BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                        }
                        BehanceSDKCCBrowserHeadlessFragment.this.checkForDownloadComplete(i);
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        BehanceSDKCCBrowserHeadlessFragment.this.downloadErrors.add(file);
                        BehanceSDKCCBrowserHeadlessFragment.this.showMessage(BehanceSDKCCBrowserHeadlessFragment.this.getString(R.string.bsdk_cc_asset_browser_file_download_error, file.getName()));
                        if (BehanceSDKCCBrowserHeadlessFragment.this.listener != null) {
                            BehanceSDKCCBrowserHeadlessFragment.this.listener.onDownloadError(adobeAssetException);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }
                });
            }
        }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.8
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeCSDKException adobeCSDKException) {
            }
        });
    }

    private void processPhoto(int i, AdobeSelectionPhotoAsset adobeSelectionPhotoAsset) {
        IBehanceSDKImageValidator imageValidator = getImageValidator();
        AdobePhotoAsset selectedItem = adobeSelectionPhotoAsset.getSelectedItem();
        File file = new File(this.tempStorageFolder, getUpdatedName(selectedItem.getName()));
        BehanceSDKImageProperties imageProperties = getImageProperties(selectedItem);
        if (imageValidator == null || imageValidator.validate(getActivity(), imageProperties)) {
            downloadRendition(i, selectedItem, file);
        } else {
            this.invalidFile.add(file);
        }
    }

    private void downloadRendition(final int i, AdobePhotoAsset adobePhotoAsset, final File file) {
        AdobePhotoAssetsDataSource.getRenditionForAsset(adobePhotoAsset, new IAdobeGenericRequestCallback<byte[], AdobePhotoException>() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.9
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobePhotoException adobePhotoException) {
                BehanceSDKCCBrowserHeadlessFragment.this.downloadErrors.add(file);
                BehanceSDKCCBrowserHeadlessFragment.this.showMessage(BehanceSDKCCBrowserHeadlessFragment.this.getString(R.string.bsdk_cc_asset_browser_file_download_error, file.getName()));
                if (i == BehanceSDKCCBrowserHeadlessFragment.this.downloadErrors.size() + BehanceSDKCCBrowserHeadlessFragment.this.invalidFile.size()) {
                    if (BehanceSDKCCBrowserHeadlessFragment.this.listener != null) {
                        BehanceSDKCCBrowserHeadlessFragment.this.listener.onDownloadError(null);
                        return;
                    }
                    return;
                }
                BehanceSDKCCBrowserHeadlessFragment.this.checkForDownloadComplete(i);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(byte[] bArr) {
                BehanceSDKCCBrowserHeadlessFragment.this.saveDatatoFile(bArr, file);
                IBehanceSDKImageValidator imageValidator = BehanceSDKCCBrowserHeadlessFragment.this.getImageValidator();
                if (imageValidator != null) {
                    if (imageValidator.validate(BehanceSDKCCBrowserHeadlessFragment.this.getActivity(), BehanceSDKCCBrowserHeadlessFragment.this.getImageProperties(file))) {
                        BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                    } else {
                        BehanceSDKCCBrowserHeadlessFragment.this.invalidFile.add(file);
                    }
                } else {
                    BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                }
                BehanceSDKCCBrowserHeadlessFragment.this.checkForDownloadComplete(i);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
            public void onCancellation() {
            }
        });
    }

    private void processImage(int i, AdobeSelectionAssetFile adobeSelectionAssetFile) {
        getImageValidator();
        AdobeAssetFile selectedItem = adobeSelectionAssetFile.getSelectedItem();
        getImageProperties(selectedItem);
        downloadOriginalFile(i, selectedItem, new File(this.tempStorageFolder, getUpdatedName(selectedItem.getName())));
    }

    private void downloadRendition(final int i, AdobeAssetFile adobeAssetFile, final File file) {
        adobeAssetFile.getRenditionWithType(getRenditionType(adobeAssetFile.getType()), new AdobeAssetImageDimensions(2560.0f, 2560.0f), new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.10
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                BehanceSDKCCBrowserHeadlessFragment.this.downloadErrors.add(file);
                BehanceSDKCCBrowserHeadlessFragment.this.showMessage(BehanceSDKCCBrowserHeadlessFragment.this.getString(R.string.bsdk_cc_asset_browser_file_download_error, file.getName()));
                if (i == BehanceSDKCCBrowserHeadlessFragment.this.downloadErrors.size() + BehanceSDKCCBrowserHeadlessFragment.this.invalidFile.size()) {
                    if (BehanceSDKCCBrowserHeadlessFragment.this.listener != null) {
                        BehanceSDKCCBrowserHeadlessFragment.this.listener.onDownloadError(adobeAssetException);
                        return;
                    }
                    return;
                }
                BehanceSDKCCBrowserHeadlessFragment.this.checkForDownloadComplete(i);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(byte[] bArr) {
                BehanceSDKCCBrowserHeadlessFragment.this.saveDatatoFile(bArr, file);
                IBehanceSDKImageValidator imageValidator = BehanceSDKCCBrowserHeadlessFragment.this.getImageValidator();
                if (imageValidator != null) {
                    if (imageValidator.validate(BehanceSDKCCBrowserHeadlessFragment.this.getActivity(), BehanceSDKCCBrowserHeadlessFragment.this.getImageProperties(file))) {
                        BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                    } else {
                        BehanceSDKCCBrowserHeadlessFragment.this.invalidFile.add(file);
                    }
                } else {
                    BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                }
                BehanceSDKCCBrowserHeadlessFragment.this.checkForDownloadComplete(i);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
            public void onCancellation() {
            }
        });
    }

    private void downloadOriginalFile(final int i, AdobeAssetFile adobeAssetFile, final File file) {
        adobeAssetFile.downloadAssetFile(file.toURI(), new IAdobeGenericRequestCallback<Boolean, AdobeAssetException>() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCCBrowserHeadlessFragment.11
            @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
            public void onCancellation() {
                if (file.exists()) {
                    file.delete();
                }
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
            public void onCompletion(Boolean bool) {
                BehanceSDKCCBrowserHeadlessFragment.this.files.add(file);
                BehanceSDKCCBrowserHeadlessFragment.this.checkForDownloadComplete(i);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                BehanceSDKCCBrowserHeadlessFragment.this.downloadErrors.add(file);
                BehanceSDKCCBrowserHeadlessFragment.this.showMessage(BehanceSDKCCBrowserHeadlessFragment.this.getString(R.string.bsdk_cc_asset_browser_file_download_error, file.getName()));
                if (i == BehanceSDKCCBrowserHeadlessFragment.this.downloadErrors.size() + BehanceSDKCCBrowserHeadlessFragment.this.invalidFile.size()) {
                    if (BehanceSDKCCBrowserHeadlessFragment.this.listener != null) {
                        BehanceSDKCCBrowserHeadlessFragment.this.listener.onDownloadError(adobeAssetException);
                        return;
                    }
                    return;
                }
                BehanceSDKCCBrowserHeadlessFragment.this.checkForDownloadComplete(i);
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkForDownloadComplete(int i) {
        if (this.files.size() + this.downloadErrors.size() + this.invalidFile.size() == i) {
            this.files = moveFileToPicturesDirectory();
            if (this.listener != null) {
                this.listener.onDownloadComplete(this.files, this.downloadErrors, this.invalidFile);
            }
            this.isDownloadInProgress = false;
        }
    }

    private List<File> moveFileToPicturesDirectory() {
        ArrayList arrayList = new ArrayList();
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        for (File file : this.files) {
            File file2 = new File(externalStoragePublicDirectory, file.getName());
            if (!file2.exists()) {
                file.renameTo(file2);
            }
            arrayList.add(file2);
        }
        BehanceSDKUtils.deleteRecursive(this.tempStorageFolder);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IBehanceSDKImageValidator getImageValidator() {
        return BehanceSDKImageValidatorFactory.getInstance().getImageValidator(this.imageValidatorType);
    }

    private void computeImageDimensions(File file, BehanceSDKImageProperties behanceSDKImageProperties) {
        if (file != null && file.exists() && file.isFile()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            behanceSDKImageProperties.setWidth(options.outWidth);
            behanceSDKImageProperties.setHeight(options.outHeight);
            behanceSDKImageProperties.setSize(file.length());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BehanceSDKImageProperties getImageProperties(File file) {
        BehanceSDKImageProperties behanceSDKImageProperties = new BehanceSDKImageProperties();
        String fileExtension = BehanceSDKUtils.getFileExtension(file.getName());
        if ("".equals(fileExtension)) {
            behanceSDKImageProperties.setType("png");
        } else {
            behanceSDKImageProperties.setType(fileExtension);
        }
        computeImageDimensions(file, behanceSDKImageProperties);
        return behanceSDKImageProperties;
    }

    private BehanceSDKImageProperties getImageProperties(AdobePhotoAsset adobePhotoAsset) {
        BehanceSDKImageProperties behanceSDKImageProperties = new BehanceSDKImageProperties();
        behanceSDKImageProperties.setSize(adobePhotoAsset.getSize());
        String fileExtension = BehanceSDKUtils.getFileExtension(adobePhotoAsset.getName());
        if ("".equals(fileExtension)) {
            behanceSDKImageProperties.setType("png");
        } else {
            behanceSDKImageProperties.setType(fileExtension);
        }
        JSONObject metadata = adobePhotoAsset.getMetadata();
        if (metadata != null && metadata.has("height") && metadata.has("width")) {
            try {
                int i = metadata.getInt("height");
                int i2 = metadata.getInt("width");
                behanceSDKImageProperties.setHeight(i);
                behanceSDKImageProperties.setWidth(i2);
            } catch (JSONException e2) {
                logger.error("Exception parsing image metadata of CC photo asset " + adobePhotoAsset.getName(), e2);
            }
        }
        return behanceSDKImageProperties;
    }

    private BehanceSDKImageProperties getImageProperties(AdobeAssetFile adobeAssetFile) {
        BehanceSDKImageProperties behanceSDKImageProperties = new BehanceSDKImageProperties();
        behanceSDKImageProperties.setSize(adobeAssetFile.getFileSize());
        String fileExtension = BehanceSDKUtils.getFileExtension(adobeAssetFile.getName());
        if (fileExtension.equals("")) {
            behanceSDKImageProperties.setType("png");
        } else {
            behanceSDKImageProperties.setType(fileExtension);
        }
        JSONObject optionalMetadata = adobeAssetFile.getOptionalMetadata();
        if (optionalMetadata != null && optionalMetadata.has("height") && optionalMetadata.has("width")) {
            try {
                int i = optionalMetadata.getInt("height");
                int i2 = optionalMetadata.getInt("width");
                behanceSDKImageProperties.setHeight(i);
                behanceSDKImageProperties.setWidth(i2);
            } catch (JSONException e2) {
                logger.error("Exception parsing image metadata of CC asset file " + adobeAssetFile.getName(), e2);
            }
        }
        return behanceSDKImageProperties;
    }

    private AdobeAssetFileRenditionType getRenditionType(String str) {
        if ("image/gif".equals(str)) {
            return AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_GIF;
        }
        if ("image/png".equals(str)) {
            return AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG;
        }
        if ("image/jpeg".equals(str)) {
            return AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_JPEG;
        }
        return AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_JPEG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveDatatoFile(byte[] bArr, File file) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (Exception e2) {
            if (getActivity() != null) {
                String string = getString(R.string.bsdk_cc_asset_browser_file_download_error, file.getName());
                logger.error(string, e2);
                showMessage(string);
            }
            this.downloadErrors.add(file);
            if (this.listener != null) {
                this.listener.onDownloadError(null);
            }
        }
    }

    private File getStorageDirectoryForDownload() {
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES) + "/CC" + System.currentTimeMillis());
        if (file.exists()) {
            BehanceSDKUtils.deleteRecursive(file);
        }
        file.mkdir();
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMessage(String str) {
        Toast.makeText(getActivity(), str, 1).show();
    }
}
