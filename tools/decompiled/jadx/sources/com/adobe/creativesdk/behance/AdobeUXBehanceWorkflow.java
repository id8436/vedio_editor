package com.adobe.creativesdk.behance;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.BehanceSDKProjectDraftOptions;
import com.behance.sdk.BehanceSDKSearchProjectOptions;
import com.behance.sdk.BehanceSDKUpdateProfileOptions;
import com.behance.sdk.IBehanceSDKUserCredentials;
import com.behance.sdk.dto.project.BehanceSDKPublishProjectStatusDTO;
import com.behance.sdk.exception.BehanceSDKInvalidArgumentException;
import com.behance.sdk.exception.BehanceSDKInvalidImagesException;
import com.behance.sdk.exception.BehanceSDKUserNotAuthenticatedException;
import com.behance.sdk.exception.BehanceSDKUserNotEntitledException;
import com.behance.sdk.util.BehanceSDKProjectEditorParams;
import com.behance.sdk.util.BehanceSDKPublishImageValidationResult;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class AdobeUXBehanceWorkflow {
    private static final String CONTEXT_CANNOT_BE_NULL = "Context cannot be null.";
    private static final int REQUEST_CODE_STORAGE_ADD_PROJECT = 1;
    private static final String REQUIRES_READ_PERMISSION = "Requires Manifest.permission.READ_EXTERNAL_STORAGE permission";
    private static AdobeUXBehanceWorkflow sharedInstance = null;
    protected IBehanceSDKUserCredentials mAdobeCSDKUserDetails = new AdobeBehanceUserDetails();
    protected BehanceSDK mBehanceSDK;

    private static boolean hasPermissionInManifest(Context context, String str) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr == null || strArr.length <= 0) {
                return false;
            }
            for (String str2 : strArr) {
                if (str2.equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    private static boolean checkPermission(Context context, int i) {
        String[] permissionFromRequestCode = getPermissionFromRequestCode(i, context);
        if (permissionFromRequestCode == null || permissionFromRequestCode.length <= 0) {
            return true;
        }
        boolean z = true;
        for (String str : permissionFromRequestCode) {
            z = z && ContextCompat.checkSelfPermission(context, str) == 0;
        }
        return z;
    }

    private static String[] getPermissionFromRequestCode(int i, Context context) {
        switch (i) {
            case 1:
                return new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
            default:
                return null;
        }
    }

    private AdobeUXBehanceWorkflow() {
        this.mBehanceSDK = null;
        this.mBehanceSDK = BehanceSDK.getInstance();
    }

    private void initializeBehanceSDK(Context context) {
        this.mBehanceSDK.initialize(this.mAdobeCSDKUserDetails, context, AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment());
    }

    static AdobeUXBehanceWorkflow getInstance(Context context) {
        if (sharedInstance == null) {
            sharedInstance = new AdobeUXBehanceWorkflow();
            sharedInstance.initializeBehanceSDK(context);
        }
        return sharedInstance;
    }

    public static void setFileProviderAuthority(String str, Context context) {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        if (str == null) {
            throw new IllegalArgumentException("fileProvider authority cannot be null");
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.setFileProvideAuthority(str);
    }

    public static void customizePublishNotifications(AdobeBehanceCustomizationOptions adobeBehanceCustomizationOptions, Context context) {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        if (adobeBehanceCustomizationOptions == null) {
            throw new IllegalArgumentException("AdobeBehanceCustomizationOptions cannot be null");
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.setBehanceSDKThemeResources(adobeBehanceCustomizationOptions.getBehanceSDKCustomResourcesOptions());
    }

    @Deprecated
    public static void launchAddProject(Class<? extends Activity> cls, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKSecurityException, BehanceSDKUserNotAuthenticatedException {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        if (!checkPermission(context, 1)) {
            throw new BehanceSDKSecurityException(REQUIRES_READ_PERMISSION);
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.launchAddProjectWorkFlow(context, cls);
    }

    public static void launchAddProject(AdobeBehanceAddProjectWorkflowOptions adobeBehanceAddProjectWorkflowOptions, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKSecurityException, BehanceSDKUserNotAuthenticatedException {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        if (adobeBehanceAddProjectWorkflowOptions == null) {
            throw new IllegalArgumentException("AdobeBehanceAddProjectWorkflowOptions cannot be null.");
        }
        if (!checkPermission(context, 1)) {
            throw new BehanceSDKSecurityException(REQUIRES_READ_PERMISSION);
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.launchAddProjectWorkFlow(context, adobeBehanceAddProjectWorkflowOptions.getAddProjectWorkflowOptions());
    }

    @Deprecated
    public static void launchPublishProject(AdobeBehanceSDKPublishProjectOptions adobeBehanceSDKPublishProjectOptions, Context context) throws BehanceSDKUserNotEntitledException, AdobeBehancePublishInvalidImageException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        if (adobeBehanceSDKPublishProjectOptions == null) {
            throw new IllegalArgumentException("AdobeBehanceSDKPublishProjectOptions cannot be null.");
        }
        try {
            getInstance(context.getApplicationContext()).mBehanceSDK.launchPublishProjectView(context, adobeBehanceSDKPublishProjectOptions.getPublishProjectWorkflowOptions());
        } catch (BehanceSDKInvalidImagesException e2) {
            throw new AdobeBehancePublishInvalidImageException(e2);
        }
    }

    @Deprecated
    public static void cancelActivePublishProject(String str, Context context) {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("ID of the publish request cannot be empty or null.");
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.cancelActivePublishProject(context, str);
    }

    public static void launchProjectViewerActivity(String str, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        if (str == null) {
            throw new IllegalArgumentException("BehanceSDKPublishProjectStatusDTO cannot be null.");
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.launchProjectDetailsActivity(context, str);
    }

    @Deprecated
    public static void displayPublishProjectSuccessView(BehanceSDKPublishProjectStatusDTO behanceSDKPublishProjectStatusDTO, Context context) {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        if (behanceSDKPublishProjectStatusDTO == null) {
            throw new IllegalArgumentException("BehanceSDKPublishProjectStatusDTO cannot be null.");
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.displayPublishProjectSuccessView(context, behanceSDKPublishProjectStatusDTO);
    }

    public static BehanceSDKPublishImageValidationResult validateImageForProject(File file, Context context) {
        if (file == null) {
            throw new IllegalArgumentException("File cannot be null.");
        }
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        return getInstance(context.getApplicationContext()).mBehanceSDK.validateImageForProject(file);
    }

    public static void launchEditProfile(IAdobeBehanceSDKEditProfileListener iAdobeBehanceSDKEditProfileListener, AdobeBehanceEditProfileOptions adobeBehanceEditProfileOptions, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        if (adobeBehanceEditProfileOptions == null) {
            throw new IllegalArgumentException("AdobeBehanceEditProfileOptions cannot be null.");
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.launchEditProfileWorkFlow(context, adobeBehanceEditProfileOptions.getBehanceSDKEditProfileOptions(), iAdobeBehanceSDKEditProfileListener);
    }

    public static void getBehanceUserProfile(IAdobeBehanceSDKGetUserProfileListener iAdobeBehanceSDKGetUserProfileListener, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        if (iAdobeBehanceSDKGetUserProfileListener == null) {
            throw new IllegalArgumentException("IAdobeBehanceSDKGetUserProfileListener cannot be null.");
        }
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.getBehanceUserProfile(iAdobeBehanceSDKGetUserProfileListener);
    }

    @Deprecated
    public static void createProjectDraft(AdobeBehanceProjectDraftOptions adobeBehanceProjectDraftOptions, IAdobeBehanceCreateProjectDraftListener iAdobeBehanceCreateProjectDraftListener, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        if (iAdobeBehanceCreateProjectDraftListener == null) {
            throw new IllegalArgumentException("IAdobeBehanceCreateProjectDraftListener cannot be null.");
        }
        BehanceSDKProjectDraftOptions behanceSDKProjectDraftOptions = null;
        if (adobeBehanceProjectDraftOptions != null) {
            behanceSDKProjectDraftOptions = new BehanceSDKProjectDraftOptions();
            behanceSDKProjectDraftOptions.setProjectTitle(adobeBehanceProjectDraftOptions.getProjectTitle());
            behanceSDKProjectDraftOptions.setProjectDescription(adobeBehanceProjectDraftOptions.getProjectDescription());
            behanceSDKProjectDraftOptions.setProjectTags(adobeBehanceProjectDraftOptions.getProjectTags());
            behanceSDKProjectDraftOptions.setProjectTitle(adobeBehanceProjectDraftOptions.getProjectTitle());
            behanceSDKProjectDraftOptions.setProjectCopyrightSettings(adobeBehanceProjectDraftOptions.getProjectCopyrightSettings());
            behanceSDKProjectDraftOptions.setProjectContainsAdultContent(adobeBehanceProjectDraftOptions.isProjectContainsAdultContent());
            behanceSDKProjectDraftOptions.setCreativeFields(adobeBehanceProjectDraftOptions.getProjectCreativeFields());
            behanceSDKProjectDraftOptions.setCoverImage(adobeBehanceProjectDraftOptions.getProjectCoverImage());
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.createProjectDraft(behanceSDKProjectDraftOptions, iAdobeBehanceCreateProjectDraftListener);
    }

    @Deprecated
    public static void publishProject(String str, IAdobeBehanceProjectPublishListener iAdobeBehanceProjectPublishListener, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.publishProject(str, iAdobeBehanceProjectPublishListener);
    }

    @Deprecated
    public static void addImageToProject(String str, File file, IAdobeBehanceADDProjectModuleListener iAdobeBehanceADDProjectModuleListener, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.addImageToProject(str, file, iAdobeBehanceADDProjectModuleListener);
    }

    public static void searchProjects(AdobeBehanceSearchProjectOptions adobeBehanceSearchProjectOptions, IAdobeBehanceSearchProjectListener iAdobeBehanceSearchProjectListener, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        if (iAdobeBehanceSearchProjectListener == null) {
            throw new IllegalArgumentException("IAdobeBehanceSearchProjectListener instance cannot be null.");
        }
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        BehanceSDKSearchProjectOptions behanceSDKSearchProjectOptions = new BehanceSDKSearchProjectOptions();
        if (adobeBehanceSearchProjectOptions != null) {
            behanceSDKSearchProjectOptions.setSearchString(adobeBehanceSearchProjectOptions.getSearchString());
            behanceSDKSearchProjectOptions.setPageNumber(adobeBehanceSearchProjectOptions.getPageNumber());
            behanceSDKSearchProjectOptions.setField(adobeBehanceSearchProjectOptions.getField());
            behanceSDKSearchProjectOptions.setCountry(adobeBehanceSearchProjectOptions.getCountry());
            behanceSDKSearchProjectOptions.setState(adobeBehanceSearchProjectOptions.getState());
            behanceSDKSearchProjectOptions.setCity(adobeBehanceSearchProjectOptions.getCity());
            behanceSDKSearchProjectOptions.setTags(adobeBehanceSearchProjectOptions.getTags());
            behanceSDKSearchProjectOptions.setTimeSpan(adobeBehanceSearchProjectOptions.getTimeSpan());
            behanceSDKSearchProjectOptions.setSortOption(adobeBehanceSearchProjectOptions.getSortOption());
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.searchProjects(behanceSDKSearchProjectOptions, iAdobeBehanceSearchProjectListener);
    }

    public static void updateBehanceProfile(AdobeBehanceUpdateProfileOptions adobeBehanceUpdateProfileOptions, IAdobeBehanceUpdateProfileListener iAdobeBehanceUpdateProfileListener, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException {
        if (adobeBehanceUpdateProfileOptions == null) {
            throw new IllegalArgumentException("AdobeBehanceUpdateProfileOptions cannot be null.");
        }
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        BehanceSDKUpdateProfileOptions behanceSDKUpdateProfileOptions = new BehanceSDKUpdateProfileOptions();
        behanceSDKUpdateProfileOptions.setFirstName(adobeBehanceUpdateProfileOptions.getFirstName());
        behanceSDKUpdateProfileOptions.setLastName(adobeBehanceUpdateProfileOptions.getLastName());
        behanceSDKUpdateProfileOptions.setCountry(adobeBehanceUpdateProfileOptions.getCountry());
        behanceSDKUpdateProfileOptions.setState(adobeBehanceUpdateProfileOptions.getState());
        behanceSDKUpdateProfileOptions.setCity(adobeBehanceUpdateProfileOptions.getCity());
        behanceSDKUpdateProfileOptions.setCompany(adobeBehanceUpdateProfileOptions.getCompany());
        behanceSDKUpdateProfileOptions.setOccupation(adobeBehanceUpdateProfileOptions.getOccupation());
        behanceSDKUpdateProfileOptions.setWebsite(adobeBehanceUpdateProfileOptions.getWebsite());
        behanceSDKUpdateProfileOptions.setImage(adobeBehanceUpdateProfileOptions.getImage());
        getInstance(context.getApplicationContext()).mBehanceSDK.updateBehanceProfile(behanceSDKUpdateProfileOptions, iAdobeBehanceUpdateProfileListener);
    }

    public static void getCreativeFields(IAdobeBehanceGetCreativeFieldsListener iAdobeBehanceGetCreativeFieldsListener, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        getInstance(context.getApplicationContext()).mBehanceSDK.loadCreativeFields(iAdobeBehanceGetCreativeFieldsListener);
    }

    public static void launchBehanceProjectEditor(@Nullable BehanceSDKProjectEditorParams behanceSDKProjectEditorParams, Context context) throws BehanceSDKUserNotEntitledException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException {
        if (context == null) {
            throw new IllegalArgumentException(CONTEXT_CANNOT_BE_NULL);
        }
        if (behanceSDKProjectEditorParams == null) {
            getInstance(context.getApplicationContext()).mBehanceSDK.launchProjectEditor(context, null);
        } else {
            getInstance(context.getApplicationContext()).mBehanceSDK.launchProjectEditor(context, behanceSDKProjectEditorParams);
        }
    }
}
