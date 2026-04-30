package com.behance.sdk.fragments.headless;

import android.graphics.Bitmap;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;
import com.behance.sdk.BehanceSDKUserProfile;
import com.behance.sdk.IBehanceSDKUserCredentials;
import com.behance.sdk.asynctask.listeners.IBehanceSDKEditProfileAsyncTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetUserProfileAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKEditProfileAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetUserProfileTaskParams;
import com.behance.sdk.asynctasks.BehanceSDKEditProfileAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKGetUserProfileAsyncTask;
import com.behance.sdk.asynctasks.result.BehanceSDKEditProfileTaskResult;
import com.behance.sdk.asynctasks.result.BehanceSDKGetUserProfileTaskResult;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import com.behance.sdk.managers.BehanceSDKEditProfileManager;
import com.behance.sdk.project.modules.ImageModule;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKEditProfileHeadlessFragment extends Fragment implements IBehanceSDKEditProfileAsyncTaskListener, IBehanceSDKGetUserProfileAsyncTaskListener {
    private Callbacks callbacks;
    private BehanceSDKCityDTO city;
    private String company;
    private BehanceSDKCountryDTO country;
    private BehanceSDKEditProfileAsyncTask editProfileAsyncTask;
    private String firstName;
    private BehanceSDKGetUserProfileAsyncTask getUserProfileAsyncTask;
    private Bitmap imageBitmap;
    private ImageModule imageModule;
    private String lastName;
    private String occupation;
    private String originalImageUrl;
    private BehanceSDKStateDTO state;
    private String website;
    private boolean getUserProfileTaskInProgress = false;
    private boolean editProfileTaskInProgress = false;

    public interface Callbacks {
        void onEditProfileFailure(BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult);

        void onEditProfileSuccess(BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult);

        void onGetUserProfileFailure(Exception exc, BehanceSDKGetUserProfileTaskParams behanceSDKGetUserProfileTaskParams);

        void onGetUserProfileSuccess();

        void setProfileEdited(boolean z);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetUserProfileAsyncTaskListener
    public void onGetUserProfileSuccess(BehanceSDKGetUserProfileTaskResult behanceSDKGetUserProfileTaskResult, BehanceSDKGetUserProfileTaskParams behanceSDKGetUserProfileTaskParams) {
        BehanceSDKUserProfile behanceUserProfile = behanceSDKGetUserProfileTaskResult.getBehanceUserProfile();
        if (behanceUserProfile.getFirstName() == null || behanceUserProfile.getFirstName().isEmpty() || behanceUserProfile.getLastName() == null || behanceUserProfile.getLastName().isEmpty()) {
            AdobeAuthUserProfile userProfile = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getUserProfile();
            setFirstName(userProfile.getFirstName());
            setLastName(userProfile.getLastName());
            if (this.callbacks != null) {
                this.callbacks.setProfileEdited(true);
            }
        } else {
            setFirstName(behanceUserProfile.getFirstName());
            setLastName(behanceUserProfile.getLastName());
        }
        setOccupation(behanceUserProfile.getOccupation());
        setCompany(behanceUserProfile.getCompany());
        setWebsite(behanceUserProfile.getWebsite());
        setCountry(behanceUserProfile.getCountry());
        setState(behanceUserProfile.getState());
        setCity(behanceUserProfile.getCity());
        setGetUserProfileTaskInProgress(false);
        setOriginalImageUrl(behanceUserProfile.getProfileImageUrl());
        this.callbacks.onGetUserProfileSuccess();
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetUserProfileAsyncTaskListener
    public void onGetUserProfileFailure(Exception exc, BehanceSDKGetUserProfileTaskParams behanceSDKGetUserProfileTaskParams) {
        setGetUserProfileTaskInProgress(false);
        this.callbacks.onGetUserProfileFailure(exc, behanceSDKGetUserProfileTaskParams);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKEditProfileAsyncTaskListener
    public void onEditProfileTaskSuccess(BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult) {
        setEditProfileTaskInProgress(false);
        this.callbacks.onEditProfileSuccess(behanceSDKEditProfileTaskResult);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKEditProfileAsyncTaskListener
    public void onEditProfileTaskFailure(BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult) {
        setEditProfileTaskInProgress(false);
        this.callbacks.onEditProfileFailure(behanceSDKEditProfileTaskResult);
    }

    public String getOriginalImageUrl() {
        return this.originalImageUrl;
    }

    public void setOriginalImageUrl(String str) {
        this.originalImageUrl = str;
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.imageBitmap = bitmap;
    }

    public Bitmap getImageBitmap() {
        return this.imageBitmap;
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public BehanceSDKEditProfileHeadlessFragment() {
        setRetainInstance(true);
    }

    public boolean isGetUserProfileTaskInProgress() {
        return this.getUserProfileTaskInProgress;
    }

    public void setGetUserProfileTaskInProgress(boolean z) {
        this.getUserProfileTaskInProgress = z;
    }

    public boolean isEditProfileTaskInProgress() {
        return this.editProfileTaskInProgress;
    }

    public void setEditProfileTaskInProgress(boolean z) {
        this.editProfileTaskInProgress = z;
    }

    public void saveUserPortfolioChanges() {
        if (!this.editProfileTaskInProgress && this.editProfileAsyncTask == null) {
            setEditProfileTaskInProgress(true);
            this.editProfileAsyncTask = new BehanceSDKEditProfileAsyncTask(this);
            BehanceSDKEditProfileAsyncTaskParams behanceSDKEditProfileAsyncTaskParamsApplyParamChanges = applyParamChanges();
            behanceSDKEditProfileAsyncTaskParamsApplyParamChanges.setClientId(BehanceSDKEditProfileManager.getInstance().getUserCredentials().getClientId());
            this.editProfileAsyncTask.execute(behanceSDKEditProfileAsyncTaskParamsApplyParamChanges);
        }
    }

    private BehanceSDKEditProfileAsyncTaskParams applyParamChanges() {
        BehanceSDKEditProfileAsyncTaskParams behanceSDKEditProfileAsyncTaskParams = new BehanceSDKEditProfileAsyncTaskParams();
        if (this.firstName != null) {
            behanceSDKEditProfileAsyncTaskParams.setFirstName(this.firstName);
        }
        if (this.lastName != null) {
            behanceSDKEditProfileAsyncTaskParams.setLastName(this.lastName);
        }
        if (this.occupation != null) {
            behanceSDKEditProfileAsyncTaskParams.setOccupation(this.occupation);
        }
        if (this.company != null) {
            behanceSDKEditProfileAsyncTaskParams.setCompany(this.company);
        }
        if (this.website != null) {
            behanceSDKEditProfileAsyncTaskParams.setWebsite(this.website);
        }
        if (this.country != null) {
            behanceSDKEditProfileAsyncTaskParams.setCountry(this.country.getDisplayName());
        }
        if (this.state != null) {
            behanceSDKEditProfileAsyncTaskParams.setState(this.state.getDisplayName());
        }
        if (this.city != null) {
            behanceSDKEditProfileAsyncTaskParams.setCity(this.city.getDisplayName());
        }
        if (this.imageModule != null) {
            behanceSDKEditProfileAsyncTaskParams.setImage(this.imageModule);
        }
        if (this.imageBitmap != null) {
            behanceSDKEditProfileAsyncTaskParams.setProfileImageBitmap(this.imageBitmap);
        }
        return behanceSDKEditProfileAsyncTaskParams;
    }

    public void loadUserDetailsFromServer() {
        if (!isGetUserProfileTaskInProgress() && this.getUserProfileAsyncTask == null) {
            setGetUserProfileTaskInProgress(true);
            BehanceSDKGetUserProfileTaskParams behanceSDKGetUserProfileTaskParams = new BehanceSDKGetUserProfileTaskParams();
            IBehanceSDKUserCredentials userCredentials = BehanceSDKEditProfileManager.getInstance().getUserCredentials();
            if (userCredentials != null) {
                behanceSDKGetUserProfileTaskParams.setUserId(userCredentials.getUserAdobeAccountId());
                behanceSDKGetUserProfileTaskParams.setClientId(userCredentials.getClientId());
            } else {
                behanceSDKGetUserProfileTaskParams.setUserId("");
                behanceSDKGetUserProfileTaskParams.setClientId("");
            }
            this.getUserProfileAsyncTask = new BehanceSDKGetUserProfileAsyncTask(this);
            this.getUserProfileAsyncTask.execute(behanceSDKGetUserProfileTaskParams);
        }
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setOccupation(String str) {
        this.occupation = str;
    }

    public String getOccupation() {
        return this.occupation;
    }

    public void setCompany(String str) {
        this.company = str;
    }

    public String getCompany() {
        return this.company;
    }

    public void setWebsite(String str) {
        this.website = str;
    }

    public String getWebsite() {
        return this.website;
    }

    public void setCountry(BehanceSDKCountryDTO behanceSDKCountryDTO) {
        this.country = behanceSDKCountryDTO;
    }

    public BehanceSDKCountryDTO getCountry() {
        return this.country;
    }

    public void setState(BehanceSDKStateDTO behanceSDKStateDTO) {
        this.state = behanceSDKStateDTO;
    }

    public BehanceSDKStateDTO getState() {
        return this.state;
    }

    public void setCity(BehanceSDKCityDTO behanceSDKCityDTO) {
        this.city = behanceSDKCityDTO;
    }

    public BehanceSDKCityDTO getCity() {
        return this.city;
    }

    public void setImage(ImageModule imageModule) {
        this.imageModule = imageModule;
    }

    public ImageModule getImage() {
        return this.imageModule;
    }

    public boolean isValidLocation() {
        if (this.country == null || BehanceSDKCountryDTO.WORLD_WIDE_COUNTRY_ID.equals(this.country.getId())) {
            return false;
        }
        if (BehanceSDKCountryDTO.COUNTRY_CODES_FOR_LOAD_STATES.contains(this.country.getId()) && this.state == null) {
            return false;
        }
        return ((this.state != null && BehanceSDKStateDTO.ALL_STATES_ID.equals(this.state.getId())) || this.city == null || BehanceSDKCityDTO.ALL_CITIES_ID.equals(this.city.getId()) || TextUtils.isEmpty(this.city.getDisplayName())) ? false : true;
    }
}
