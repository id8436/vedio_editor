package com.behance.sdk.ui.activities;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.FileProvider;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import com.b.a.h;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.params.BehanceSDKGetUserProfileTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKEditProfileTaskResult;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import com.behance.sdk.factory.BehanceSDKImageValidatorFactory;
import com.behance.sdk.fragments.headless.BehanceSDKEditProfileHeadlessFragment;
import com.behance.sdk.listeners.IBehanceSDKGalleryPickerCallbacks;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.managers.BehanceSDKEditProfileManager;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.ui.dialogs.BehanceSDKGenericAlertDialog;
import com.behance.sdk.ui.dialogs.BehanceSDKImagePickerDialogFragment;
import com.behance.sdk.ui.dialogs.BehanceSDKLocationSelectionDialog;
import com.behance.sdk.util.BehanceSDKPermissionHelper;
import com.behance.sdk.util.BehanceSDKProjectEditorFileUtils;
import java.io.File;
import java.io.IOException;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKEditProfileActivity extends FragmentActivity implements TextWatcher, View.OnClickListener, BehanceSDKEditProfileHeadlessFragment.Callbacks, IBehanceSDKGalleryPickerCallbacks, BehanceSDKLocationSelectionDialog.Callbacks {
    private static final int ACTION_REQUEST_CAMERA = 1007;
    private static final int ACTION_REQUEST_CC = 1006;
    private static final int ACTION_REQUEST_CROPPER = 1008;
    private static final String FRAGMENT_TAG_EDIT_PROFILE_LOCATION = "FRAGMENT_TAG_EDIT_PROFILE_LOCATION";
    private static final String FRAGMENT_TAG_SELECT_IMAGE = "FRAGMENT_TAG_EDIT_PROFILE_SELECT_IMAGE";
    private static final String HEADLESS_FRAGMENT_TAG_EDIT_PROFILE = "EDIT_PROFILE_HEADLESS_FRAGMENT_TAG";
    public static final String INTENT_EXTRA_BOOLEAN_ENABLE_ALTERNATE_IMAGE_SELECTION_SOURCES = "INTENT_EXTRA_BOOLEAN_ENABLE_ALTERNATE_IMAGE_SELECTION_SOURCES";
    private static final String SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH = "SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKEditProfileActivity.class);
    private ImageView avatar;
    private EditText companyET;
    private BehanceSDKEditProfileHeadlessFragment editProfileHeadlessFragment;
    private EditText firstNameET;
    private String imageCaptureFilePath;
    private EditText lastNameET;
    private TextView location;
    private EditText occupationET;
    private View progressBar;
    private TextView saveNavBtn;
    private BehanceSDKGenericAlertDialog unsavedChangesAlertDialog;
    private EditText websiteET;
    private boolean profileChanged = false;
    private BehanceSDK behanceSDK = BehanceSDK.getInstance();
    private Boolean isimageDialogLaunched = false;

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            displayNoInternetConnectivity();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.bsdk_activity_edit_profile);
        if (!this.behanceSDK.useBehanceTheme() && !getResources().getBoolean(R.bool.isTablet)) {
            setRequestedOrientation(this.behanceSDK.getBehanceSDKCustomResourcesOptions().getPhoneOrientation());
        }
        if (bundle != null) {
            this.imageCaptureFilePath = bundle.getString(SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH, null);
        }
        findViewById(R.id.bsdkEditProfileActionbarBackBtnImageView).setOnClickListener(this);
        this.saveNavBtn = (TextView) findViewById(R.id.bsdkEditProfileActionbarActionBtnTxtView);
        this.saveNavBtn.setOnClickListener(this);
        this.progressBar = findViewById(R.id.bsdkEditProfileLoader);
        this.firstNameET = (EditText) findViewById(R.id.bsdkEditProfileFirstName);
        this.lastNameET = (EditText) findViewById(R.id.bsdkEditProfileLastName);
        this.occupationET = (EditText) findViewById(R.id.bsdkEditProfileOccupation);
        this.companyET = (EditText) findViewById(R.id.bsdkEditProfileCompany);
        this.websiteET = (EditText) findViewById(R.id.bsdkEditProfileWebsite);
        this.avatar = (ImageView) findViewById(R.id.bsdkEditProfileAvatar);
        this.location = (TextView) findViewById(R.id.bsdkEditProfileLocation);
        this.editProfileHeadlessFragment = (BehanceSDKEditProfileHeadlessFragment) getSupportFragmentManager().findFragmentByTag(HEADLESS_FRAGMENT_TAG_EDIT_PROFILE);
        if (this.editProfileHeadlessFragment == null) {
            this.editProfileHeadlessFragment = new BehanceSDKEditProfileHeadlessFragment();
            getSupportFragmentManager().beginTransaction().add(this.editProfileHeadlessFragment, HEADLESS_FRAGMENT_TAG_EDIT_PROFILE).commit();
            this.editProfileHeadlessFragment.loadUserDetailsFromServer();
        } else {
            initializeFields();
            hideProgressBar();
        }
        this.editProfileHeadlessFragment.setCallbacks(this);
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag(FRAGMENT_TAG_EDIT_PROFILE_LOCATION);
        if (fragmentFindFragmentByTag instanceof BehanceSDKLocationSelectionDialog) {
            ((BehanceSDKLocationSelectionDialog) fragmentFindFragmentByTag).setCallbacks(this);
        }
        if (this.editProfileHeadlessFragment.isGetUserProfileTaskInProgress() || this.editProfileHeadlessFragment.isEditProfileTaskInProgress()) {
            showProgressBar();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.profileChanged) {
            this.unsavedChangesAlertDialog = BehanceSDKGenericAlertDialog.getInstance(this, R.string.bsdk_edit_profile_unsaved_changes_title, R.string.bsdk_edit_profile_unsaved_changes_body, R.string.bsdk_generic_alert_dialog_ok_btn_label, R.string.bsdk_generic_alert_dialog_cancel_btn_label);
            this.unsavedChangesAlertDialog.setOnOKBtnClickListener(this);
            this.unsavedChangesAlertDialog.setOnNotOKBtnClickListener(this);
            this.unsavedChangesAlertDialog.show();
            return;
        }
        super.onBackPressed();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.isimageDialogLaunched.booleanValue()) {
            launchAlbumsViewToPickPicture();
            this.isimageDialogLaunched = false;
        }
    }

    private void displayNoInternetConnectivity() {
        Toast.makeText(this, getString(R.string.bsdk_add_wip_view_connection_error_msg), 1).show();
        closeThisActivity();
    }

    private void closeThisActivity() {
        finish();
    }

    private void showProgressBar() {
        if (this.progressBar != null) {
            this.progressBar.setVisibility(0);
        }
    }

    private void hideProgressBar() {
        if (this.progressBar != null) {
            this.progressBar.setVisibility(8);
        }
    }

    private void launchAlbumsViewToPickPicture() {
        BehanceSDKImagePickerDialogFragment behanceSDKImagePickerDialogFragment = new BehanceSDKImagePickerDialogFragment();
        behanceSDKImagePickerDialogFragment.setCallbacks(this);
        behanceSDKImagePickerDialogFragment.show(getSupportFragmentManager(), FRAGMENT_TAG_SELECT_IMAGE);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.bsdkEditProfileActionbarBackBtnImageView) {
            onBackPressed();
            return;
        }
        if (id == R.id.bsdkEditProfileActionbarActionBtnTxtView) {
            saveChanges();
            return;
        }
        if (id == R.id.bsdkEditProfileAvatar) {
            if (BehanceSDKPermissionHelper.checkPermission(this, 1)) {
                launchAlbumsViewToPickPicture();
                return;
            } else {
                if (Build.VERSION.SDK_INT >= 23) {
                    requestPermissions(BehanceSDKPermissionHelper.getPermissionFromRequestCode(1, this), 1);
                    return;
                }
                return;
            }
        }
        if (id == R.id.bsdkGenericAlertDialogOKBtn) {
            closeThisActivity();
        } else if (id == R.id.bsdkGenericAlertDialogNotOKBtn) {
            closeUnsavedChangesAlertDialog();
        } else if (id == R.id.bsdkEditProfileLocation) {
            handleLocationClick();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        switch (i) {
            case 1:
                if (iArr.length == 1 && iArr[0] == 0) {
                    this.isimageDialogLaunched = true;
                } else {
                    Toast.makeText(this, getString(R.string.behance_sdk_permissions_error_generic), 1).show();
                }
                break;
        }
    }

    private void closeUnsavedChangesAlertDialog() {
        if (this.unsavedChangesAlertDialog != null) {
            this.unsavedChangesAlertDialog.dismiss();
        }
    }

    private void handleLocationClick() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        BehanceSDKLocationSelectionDialog behanceSDKLocationSelectionDialog = BehanceSDKLocationSelectionDialog.getInstance();
        Bundle bundle = new Bundle();
        setSelectedLocation(bundle);
        behanceSDKLocationSelectionDialog.setArguments(bundle);
        behanceSDKLocationSelectionDialog.setCallbacks(this);
        behanceSDKLocationSelectionDialog.show(supportFragmentManager, FRAGMENT_TAG_EDIT_PROFILE_LOCATION);
    }

    private void setSelectedLocation(Bundle bundle) {
        if (this.editProfileHeadlessFragment.getCountry() != null) {
            bundle.putSerializable(BehanceSDKLocationSelectionDialog.INSTANCE_STATE_KEY_SELECTED_COUNTRY, this.editProfileHeadlessFragment.getCountry());
            if (this.editProfileHeadlessFragment.getState() != null) {
                bundle.putSerializable(BehanceSDKLocationSelectionDialog.INSTANCE_STATE_KEY_SELECTED_STATE, this.editProfileHeadlessFragment.getState());
            }
            if (this.editProfileHeadlessFragment.getCity() != null) {
                bundle.putSerializable(BehanceSDKLocationSelectionDialog.INSTANCE_STATE_KEY_SELECTED_CITY, this.editProfileHeadlessFragment.getCity());
            }
        }
    }

    private void saveChanges() {
        String strReplaceFirst;
        boolean z;
        int i;
        boolean z2 = false;
        if (this.profileChanged) {
            String string = this.firstNameET.getText().toString();
            String string2 = this.lastNameET.getText().toString();
            String string3 = this.occupationET.getText().toString();
            String string4 = this.companyET.getText().toString();
            String string5 = this.websiteET.getText().toString();
            try {
                strReplaceFirst = string5.toLowerCase().replaceFirst("^(http://)?(www\\.)?", "").toLowerCase().replaceFirst("^(https://)?(www\\.)?", "").toLowerCase().replaceFirst("^(www\\.)?", "");
                z = true;
            } catch (Exception e2) {
                strReplaceFirst = string5;
                z = false;
            }
            this.editProfileHeadlessFragment.setFirstName(string);
            this.editProfileHeadlessFragment.setLastName(string2);
            this.editProfileHeadlessFragment.setOccupation(string3);
            this.editProfileHeadlessFragment.setCompany(string4);
            this.editProfileHeadlessFragment.setWebsite(strReplaceFirst);
            int i2 = R.string.bsdk_edit_profile_avatar_required_fields_missing_msg;
            if (isStringEmpty(string) && isStringEmpty(string2)) {
                i = R.string.bsdk_edit_profile_avatar_required_fields_missing_msg;
            } else if (isStringEmpty(string)) {
                i = R.string.bsdk_edit_profile_avatar_first_name_field_missing_msg;
            } else if (isStringEmpty(string2)) {
                i = R.string.bsdk_edit_profile_avatar_last_name_field_missing_msg;
            } else if (!this.editProfileHeadlessFragment.isValidLocation()) {
                i = R.string.bsdk_location_filter_dialog_city_empty_error;
            } else if (z) {
                i = i2;
                z2 = true;
            } else {
                i = R.string.bsdk_edit_profile_website_url_invalid_msg;
            }
            if (z2) {
                showProgressBar();
                this.saveNavBtn.setTextColor(getResources().getColor(R.color.bsdk_adobe_blue_disabled));
                this.editProfileHeadlessFragment.saveUserPortfolioChanges();
                return;
            }
            Toast.makeText(this, i, 1).show();
        }
    }

    private boolean isStringEmpty(String str) {
        return str == null || str.trim().length() <= 0;
    }

    private void initializeFields() {
        this.firstNameET.setText(this.editProfileHeadlessFragment.getFirstName());
        this.lastNameET.setText(this.editProfileHeadlessFragment.getLastName());
        this.occupationET.setText(this.editProfileHeadlessFragment.getOccupation());
        this.companyET.setText(this.editProfileHeadlessFragment.getCompany());
        this.websiteET.setText(this.editProfileHeadlessFragment.getWebsite());
        String str = this.editProfileHeadlessFragment.getCountry() != null ? "" + this.editProfileHeadlessFragment.getCountry().getDisplayName() : "";
        if (this.editProfileHeadlessFragment.getState() != null) {
            str = str + URIUtil.SLASH + this.editProfileHeadlessFragment.getState().getId();
        }
        if (this.editProfileHeadlessFragment.getCity() != null) {
            str = str + URIUtil.SLASH + this.editProfileHeadlessFragment.getCity().getDisplayName();
        }
        this.location.setText(str);
        if (this.editProfileHeadlessFragment.getImageBitmap() == null) {
            h.a((FragmentActivity) this).a(this.editProfileHeadlessFragment.getOriginalImageUrl()).a(this.avatar);
        } else {
            this.avatar.setImageBitmap(this.editProfileHeadlessFragment.getImageBitmap());
        }
        this.firstNameET.addTextChangedListener(this);
        this.lastNameET.addTextChangedListener(this);
        this.occupationET.addTextChangedListener(this);
        this.companyET.addTextChangedListener(this);
        this.websiteET.addTextChangedListener(this);
        this.avatar.setOnClickListener(this);
        this.location.setOnClickListener(this);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (!this.profileChanged) {
            this.profileChanged = true;
            this.saveNavBtn.setTextColor(getResources().getColor(R.color.bsdk_adobe_blue));
        }
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKEditProfileHeadlessFragment.Callbacks
    public void onGetUserProfileSuccess() {
        initializeFields();
        hideProgressBar();
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKEditProfileHeadlessFragment.Callbacks
    public void onGetUserProfileFailure(Exception exc, BehanceSDKGetUserProfileTaskParams behanceSDKGetUserProfileTaskParams) {
        logger.error(exc, "Problem retrieving user Profile details", new Object[0]);
        Toast.makeText(this, getResources().getString(R.string.bsdk_edit_profile_loading_error), 1).show();
        closeThisActivity();
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKEditProfileHeadlessFragment.Callbacks
    public void onEditProfileSuccess(BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult) {
        BehanceSDKEditProfileManager.getInstance().onEditProfileSuccess();
        closeThisActivity();
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKEditProfileHeadlessFragment.Callbacks
    public void onEditProfileFailure(BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult) {
        List<Exception> exceptions = behanceSDKEditProfileTaskResult.getExceptions();
        if (exceptions != null) {
            Iterator<Exception> it = exceptions.iterator();
            while (it.hasNext()) {
                logger.error(it.next(), "Problem updating user profile", new Object[0]);
            }
        }
        if (!behanceSDKEditProfileTaskResult.isProfileUpdateFailed() && behanceSDKEditProfileTaskResult.isProfileAvatarUpdateFailed()) {
            Toast.makeText(this, getResources().getString(R.string.bsdk_edit_profile_avatar_saving_error), 1).show();
            BehanceSDKEditProfileManager.getInstance().onEditProfileSuccess();
        } else {
            Toast.makeText(this, getResources().getString(R.string.bsdk_edit_profile_editing_error), 1).show();
        }
        hideProgressBar();
        closeThisActivity();
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKEditProfileHeadlessFragment.Callbacks
    public void setProfileEdited(boolean z) {
        this.profileChanged = z;
        this.saveNavBtn.setTextColor(getResources().getColor(z ? R.color.bsdk_adobe_blue : R.color.bsdk_adobe_blue_disabled));
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        List list;
        switch (i) {
            case 1006:
                if (i2 == -1 && (list = (List) intent.getExtras().getSerializable(BehanceSDKCCLauncherActivity.ACTIVITY_RESULT_CC_SUCCESSFULLY_DOWNLOADED_FILES)) != null && !list.isEmpty()) {
                    onFileSelected((File) list.get(0));
                    break;
                }
                break;
            case 1007:
                if (i2 == -1 && this.imageCaptureFilePath != null) {
                    onFileSelected(new File(this.imageCaptureFilePath));
                    break;
                }
                break;
            case 1008:
                if (i2 == -1 && intent != null && intent.getExtras() != null && intent.getStringExtra(BehanceSDKCropperActivity.INTENT_EXTRA_IMAGE_SAVED_TO_PATH) != null) {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(intent.getStringExtra(BehanceSDKCropperActivity.INTENT_EXTRA_IMAGE_SAVED_TO_PATH), options);
                    this.editProfileHeadlessFragment.setImageBitmap(bitmapDecodeFile);
                    this.avatar.setImageBitmap(bitmapDecodeFile);
                    if (!this.profileChanged) {
                        this.profileChanged = true;
                        this.saveNavBtn.setTextColor(ContextCompat.getColor(this, R.color.bsdk_adobe_blue));
                    }
                    break;
                }
                break;
            default:
                super.onActivityResult(i, i2, intent);
                break;
        }
    }

    @Override // com.behance.sdk.ui.dialogs.BehanceSDKLocationSelectionDialog.Callbacks
    public void onLocationFilterDone(BehanceSDKCountryDTO behanceSDKCountryDTO, BehanceSDKStateDTO behanceSDKStateDTO, BehanceSDKCityDTO behanceSDKCityDTO) {
        String str = "";
        if (behanceSDKCountryDTO != null) {
            this.editProfileHeadlessFragment.setCountry(behanceSDKCountryDTO);
            str = "" + behanceSDKCountryDTO.getDisplayName();
            if (!this.profileChanged) {
                this.profileChanged = true;
                this.saveNavBtn.setTextColor(getResources().getColor(R.color.bsdk_adobe_blue));
            }
        }
        if (behanceSDKStateDTO != null) {
            this.editProfileHeadlessFragment.setState(behanceSDKStateDTO);
            str = str + URIUtil.SLASH + behanceSDKStateDTO.getId();
        } else {
            this.editProfileHeadlessFragment.setState(null);
        }
        if (behanceSDKCityDTO != null) {
            this.editProfileHeadlessFragment.setCity(behanceSDKCityDTO);
            str = str + URIUtil.SLASH + behanceSDKCityDTO.getDisplayName();
        }
        this.location.setText(str);
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKGalleryPickerCallbacks
    public void onFileSelected(File file) {
        this.editProfileHeadlessFragment.setImage(new ImageModule(file));
        Intent intent = new Intent(this, (Class<?>) BehanceSDKCropperActivity.class);
        intent.putExtra(BehanceSDKCropperActivity.INTENT_EXTRA_IMAGE_PATH, file.getPath());
        startActivityForResult(intent, 1008);
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKGalleryPickerCallbacks
    public void onCameraSelected() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(getPackageManager()) != null) {
            File fileCreateImageFile = null;
            try {
                fileCreateImageFile = BehanceSDKProjectEditorFileUtils.createImageFile(this);
            } catch (IOException e2) {
            }
            if (fileCreateImageFile != null) {
                this.imageCaptureFilePath = fileCreateImageFile.getAbsolutePath();
                intent.putExtra("output", FileProvider.getUriForFile(this, BehanceSDK.getInstance().getFileProviderAuthority(), fileCreateImageFile));
                startActivityForResult(intent, 1007);
            }
        }
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKGalleryPickerCallbacks
    public void onCCSelected() {
        Intent intent = new Intent(this, (Class<?>) BehanceSDKCCLauncherActivity.class);
        intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_ALLOWED_MIME_TYPES, EnumSet.of(AdobeAssetMimeTypes.MIMETYPE_GIF, AdobeAssetMimeTypes.MIMETYPE_JPEG, AdobeAssetMimeTypes.MIMETYPE_JPG, AdobeAssetMimeTypes.MIMETYPE_PNG, AdobeAssetMimeTypes.MIMETYPE_BMP));
        intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_IMAGE_VALIDATOR_TYPE, BehanceSDKImageValidatorFactory.PUBLISH_PROJECT_IMAGE_VALIDATOR);
        startActivityForResult(intent, 1006);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.imageCaptureFilePath != null) {
            bundle.putString(SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH, this.imageCaptureFilePath);
        }
    }
}
