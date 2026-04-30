package com.behance.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.auth.AdobeAuthUserProfile;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.behance.sdk.asynctask.listeners.IBehanceSDKEditProfileAsyncTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetUserProfileAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKAddProjectModuleTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKCreateProjectDraftTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKEditProfileAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetUserProfileTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKPublishProjectTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams;
import com.behance.sdk.asynctasks.BehanceSDKAddProjectModuleAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKCreateProjectDraftAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKEditProfileAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKGetUserProfileAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKLoadCreativeFieldsAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKPublishProjectAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKSearchProjectsAsyncTask;
import com.behance.sdk.asynctasks.result.BehanceSDKEditProfileTaskResult;
import com.behance.sdk.asynctasks.result.BehanceSDKGetUserProfileTaskResult;
import com.behance.sdk.datamanager.listeners.interfaces.IGetCreativeFieldsAsyncTaskListener;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.dto.BehanceSDKSocialAccountDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.dto.project.BehanceSDKPublishProjectStatusDTO;
import com.behance.sdk.dto.search.BehanceSDKProjectFiltersSelected;
import com.behance.sdk.enums.BehanceSDKCuratedGalleryType;
import com.behance.sdk.enums.BehanceSDKPublishProjectProgressState;
import com.behance.sdk.enums.BehanceSDKSocialAccountType;
import com.behance.sdk.exception.BehanceSDKFileUtilsInitializationException;
import com.behance.sdk.exception.BehanceSDKInvalidArgumentException;
import com.behance.sdk.exception.BehanceSDKInvalidImagesException;
import com.behance.sdk.exception.BehanceSDKUserNotAuthenticatedException;
import com.behance.sdk.exception.BehanceSDKUserNotEntitledException;
import com.behance.sdk.managers.BehanceSDKEditProfileManager;
import com.behance.sdk.managers.BehanceSDKProjectPublishWFManager;
import com.behance.sdk.managers.BehanceSDKUserManager;
import com.behance.sdk.network.BehanceNameValuePair;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.services.BehanceSDKPublishProjectService;
import com.behance.sdk.services.serviceconnections.BSDKCancelPublishProjectServiceConnection;
import com.behance.sdk.ui.activities.BehanceSDKCreateProjectWFActivity;
import com.behance.sdk.ui.activities.BehanceSDKEditProfileActivity;
import com.behance.sdk.ui.activities.BehanceSDKProjectDetailActivity;
import com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity;
import com.behance.sdk.ui.activities.BehanceSDKPublishProjectActivity;
import com.behance.sdk.ui.activities.BehanceSDKPublishResultsActivity;
import com.behance.sdk.ui.fragments.BehanceSDKProjectDetailFragment;
import com.behance.sdk.ui.fragments.BehanceSDKProjectsFeedFragment;
import com.behance.sdk.util.BehanceSDKFileUtils;
import com.behance.sdk.util.BehanceSDKImageLoaderUtils;
import com.behance.sdk.util.BehanceSDKProjectEditorParams;
import com.behance.sdk.util.BehanceSDKPublishImageValidationResult;
import com.behance.sdk.util.BehanceSDKUtils;
import com.facebook.drawee.a.a.c;
import com.facebook.w;
import com.i.a.b.g;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDK {
    private static final String INVALID_PROJECT_DESCRIPTION_MESSAGE = "Behance project description cannot be more than 65535characters in length";
    private static final String INVALID_PROJECT_TITLE_MESSAGE = "Behance project title cannot be more than 55 characters in length";
    private static BehanceSDKCustomResourcesOptions behanceSDKCustomResourcesOptions;
    private static String fileProvideAuthority;
    private IBehanceSDKUserCredentials credentials;
    private AdobeAuthIMSEnvironment environment;
    private BehanceNameValuePair universalHeader;
    private static final BehanceSDK INSTANCE = new BehanceSDK();
    private static boolean behanceTheme = true;

    private BehanceSDK() {
    }

    public static BehanceSDK getInstance() {
        return INSTANCE;
    }

    public boolean useBehanceTheme() {
        return behanceTheme;
    }

    private void setBehanceTheme(boolean z) {
        behanceTheme = z;
    }

    public void setFileProvideAuthority(String str) {
        fileProvideAuthority = str;
    }

    public String getFileProviderAuthority() {
        return fileProvideAuthority;
    }

    private void setBehanceSDKCustomResourcesOptions(BehanceSDKCustomResourcesOptions behanceSDKCustomResourcesOptions2) {
        behanceSDKCustomResourcesOptions = behanceSDKCustomResourcesOptions2;
    }

    public BehanceSDKCustomResourcesOptions getBehanceSDKCustomResourcesOptions() {
        return behanceSDKCustomResourcesOptions == null ? new BehanceSDKCustomResourcesOptions() : behanceSDKCustomResourcesOptions;
    }

    public void initialize(IBehanceSDKUserCredentials iBehanceSDKUserCredentials, Context context) {
        this.credentials = iBehanceSDKUserCredentials;
        w.a(context);
    }

    public void initialize(IBehanceSDKUserCredentials iBehanceSDKUserCredentials, Context context, AdobeAuthIMSEnvironment adobeAuthIMSEnvironment) {
        this.credentials = iBehanceSDKUserCredentials;
        setEnvironment(adobeAuthIMSEnvironment);
        w.a(context);
    }

    public void initialize(IBehanceSDKUserCredentials iBehanceSDKUserCredentials, Context context, BehanceNameValuePair behanceNameValuePair) {
        this.universalHeader = behanceNameValuePair;
        initialize(iBehanceSDKUserCredentials, context);
    }

    public void setBehanceSDKThemeResources(BehanceSDKCustomResourcesOptions behanceSDKCustomResourcesOptions2) {
        setBehanceSDKCustomResourcesOptions(behanceSDKCustomResourcesOptions2);
        setBehanceTheme(false);
    }

    public void initializeProjectViewWF(Context context) {
        initializeFileUtils(context);
        c.a(context);
        if (!g.a().b()) {
            g.a().a(BehanceSDKImageLoaderUtils.getImageLoaderConfig(context));
        }
    }

    private void initializeFileUtils(Context context) {
        try {
            BehanceSDKFileUtils.initialize(context);
        } catch (BehanceSDKFileUtilsInitializationException e2) {
        }
    }

    private void validateIfUserIsEntitledForBehanceWorkflow() throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        BehanceSDKUserManager behanceSDKUserManager = BehanceSDKUserManager.getInstance();
        if (!behanceSDKUserManager.isUserAuthenticatedWithAdobe()) {
            throw new BehanceSDKUserNotAuthenticatedException("No logged in user found.");
        }
        if (!behanceSDKUserManager.isUserEntitledToUseBehance()) {
            throw new BehanceSDKUserNotEntitledException("User is not entitled to use Behance services");
        }
    }

    public void launchProjectDetailsActivity(Context context, String str) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        if (str != null) {
            initializeProjectViewWF(context);
            validateIfUserIsEntitledForBehanceWorkflow();
            Intent intent = new Intent(context, (Class<?>) BehanceSDKProjectDetailActivity.class);
            intent.putExtra(BehanceSDKProjectDetailFragment.ARG_PROJECT_ID, str);
            intent.setFlags(268435456);
            context.startActivity(intent);
        }
    }

    public void launchProjectDetailsActivity(Context context, BehanceSDKProjectDTO behanceSDKProjectDTO) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        if (behanceSDKProjectDTO != null) {
            initializeProjectViewWF(context);
            validateIfUserIsEntitledForBehanceWorkflow();
            Intent intent = new Intent(context, (Class<?>) BehanceSDKProjectDetailActivity.class);
            intent.putExtra(BehanceSDKProjectDetailFragment.ARG_PROJECT_ID, behanceSDKProjectDTO.getId());
            intent.setFlags(268435456);
            context.startActivity(intent);
        }
    }

    public void launchProjectEditor(@NonNull Context context, @Nullable BehanceSDKProjectEditorParams behanceSDKProjectEditorParams) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        Intent intent = new Intent(context, (Class<?>) BehanceSDKProjectEditorActivity.class);
        if (behanceSDKProjectEditorParams != null) {
            intent.putExtra("INTENT_EXTRA_PARAMS", behanceSDKProjectEditorParams);
        }
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    @Deprecated
    public void launchAddProjectWorkFlow(Context context, Class<? extends Activity> cls) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        BehanceSDKAddProjectWorkflowOptions behanceSDKAddProjectWorkflowOptions = new BehanceSDKAddProjectWorkflowOptions();
        behanceSDKAddProjectWorkflowOptions.setNotificationHandlerActivityClass(cls);
        behanceSDKAddProjectWorkflowOptions.setFacebookShareEnabled(false);
        behanceSDKAddProjectWorkflowOptions.setTwitterShareEnabled(false);
        launchAddProjectWorkFlow(context, behanceSDKAddProjectWorkflowOptions);
    }

    @Deprecated
    public void launchAddProjectWorkFlow(Context context, BehanceSDKAddProjectWorkflowOptions behanceSDKAddProjectWorkflowOptions) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        initializeForPublishProjectWorkflow(context, behanceSDKAddProjectWorkflowOptions);
        Intent intent = new Intent(context, (Class<?>) BehanceSDKCreateProjectWFActivity.class);
        intent.setFlags(268435456);
        AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypePublishUXStart, AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetBehanceProject);
        context.startActivity(intent);
    }

    public BehanceSDKProjectsFeedFragment getProjectFeedFragment(Context context, BehanceSDKProjectFiltersSelected behanceSDKProjectFiltersSelected) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        initializeProjectViewWF(context);
        Bundle bundle = new Bundle();
        bundle.putSerializable(BehanceSDKProjectsFeedFragment.DISCOVER_PROJECTS_KEY_SELECTED_FILTERS, behanceSDKProjectFiltersSelected);
        bundle.putBoolean(BehanceSDKProjectsFeedFragment.PROJECT_FEED_TYPE, false);
        BehanceSDKProjectsFeedFragment behanceSDKProjectsFeedFragment = new BehanceSDKProjectsFeedFragment();
        behanceSDKProjectsFeedFragment.setArguments(bundle);
        return behanceSDKProjectsFeedFragment;
    }

    public BehanceSDKProjectsFeedFragment getProjectFeedFragment(Context context, BehanceSDKCuratedGalleryType behanceSDKCuratedGalleryType, int i) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        initializeProjectViewWF(context);
        Bundle bundle = new Bundle();
        bundle.putSerializable(BehanceSDKProjectsFeedFragment.PROJECT_FEED_GALLERY_TYPE, behanceSDKCuratedGalleryType);
        bundle.putInt(BehanceSDKProjectsFeedFragment.PROJECT_FEED_GALLERY_ID, i);
        bundle.putBoolean(BehanceSDKProjectsFeedFragment.PROJECT_FEED_TYPE, true);
        BehanceSDKProjectsFeedFragment behanceSDKProjectsFeedFragment = new BehanceSDKProjectsFeedFragment();
        behanceSDKProjectsFeedFragment.setArguments(bundle);
        return behanceSDKProjectsFeedFragment;
    }

    @Deprecated
    public void launchPublishProjectView(Context context, BehanceSDKPublishProjectOptions behanceSDKPublishProjectOptions) throws BehanceSDKUserNotEntitledException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException, BehanceSDKInvalidImagesException {
        validateIfUserIsEntitledForBehanceWorkflow();
        initializeForPublishProjectWorkflow(context, behanceSDKPublishProjectOptions);
        List<ImageModule> projectImageModules = behanceSDKPublishProjectOptions.getProjectImageModules();
        if (projectImageModules != null && !projectImageModules.isEmpty()) {
            ArrayList arrayList = new ArrayList(projectImageModules.size());
            for (ImageModule imageModule : projectImageModules) {
                if (BehanceSDKPublishImageValidationResult.VALID != validateImageForProject(imageModule)) {
                    arrayList.add(imageModule.getFile());
                }
            }
            if (!arrayList.isEmpty()) {
                throw new BehanceSDKInvalidImagesException(arrayList);
            }
            String projectTitle = behanceSDKPublishProjectOptions.getProjectTitle();
            if (!TextUtils.isEmpty(projectTitle) && projectTitle.length() > 55) {
                throw new BehanceSDKInvalidArgumentException(INVALID_PROJECT_TITLE_MESSAGE);
            }
            String projectDescription = behanceSDKPublishProjectOptions.getProjectDescription();
            if (!TextUtils.isEmpty(projectDescription) && projectDescription.length() > 65535) {
                throw new BehanceSDKInvalidArgumentException(INVALID_PROJECT_DESCRIPTION_MESSAGE);
            }
            Intent intent = new Intent(context, (Class<?>) BehanceSDKPublishProjectActivity.class);
            intent.setFlags(268435456);
            intent.putExtra(BehanceSDKPublishProjectActivity.INTENT_SERIALIZABLE_EXTRA_PROJECT_IMAGE_MODULES, (Serializable) behanceSDKPublishProjectOptions.getProjectImageModules());
            intent.putExtra(BehanceSDKPublishProjectActivity.INTENT_SERIALIZABLE_EXTRA_PROJECT_TITLE, behanceSDKPublishProjectOptions.getProjectTitle());
            intent.putExtra(BehanceSDKPublishProjectActivity.INTENT_SERIALIZABLE_EXTRA_PROJECT_DESC, behanceSDKPublishProjectOptions.getProjectDescription());
            intent.putExtra(BehanceSDKPublishProjectActivity.INTENT_SERIALIZABLE_EXTRA_PROJECT_TAGS, behanceSDKPublishProjectOptions.getProjectTags());
            intent.putExtra(BehanceSDKPublishProjectActivity.INTENT_SERIALIZABLE_EXTRA_PROJECT_CREATIVE_FIELDS, (Serializable) behanceSDKPublishProjectOptions.getCreativeFieldDTOs());
            intent.putExtra(BehanceSDKPublishProjectActivity.INTENT_SERIALIZABLE_EXTRA_PROJECT_CONTAINS_ADULT_CONTENT, behanceSDKPublishProjectOptions.isProjectContainsAdultContent());
            intent.putExtra(BehanceSDKPublishProjectActivity.INTENT_SERIALIZABLE_EXTRA_PROJECT_COPYRIGHT_SETTINGS, behanceSDKPublishProjectOptions.getProjectCopyrightSettings());
            intent.putExtra(BehanceSDKPublishProjectActivity.INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED, behanceSDKPublishProjectOptions.isCCAssetBrowserDisabled());
            AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypePublishUXStart, AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTargetBehanceProject);
            context.startActivity(intent);
            return;
        }
        throw new IllegalArgumentException("List of images cannot be null or empty.");
    }

    @Deprecated
    public void createProjectDraft(BehanceSDKProjectDraftOptions behanceSDKProjectDraftOptions, IBehanceSDKCreateProjectDraftListener iBehanceSDKCreateProjectDraftListener) throws BehanceSDKUserNotEntitledException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        if (behanceSDKProjectDraftOptions != null) {
            String projectTitle = behanceSDKProjectDraftOptions.getProjectTitle();
            if (!TextUtils.isEmpty(projectTitle) && projectTitle.length() > 55) {
                throw new BehanceSDKInvalidArgumentException(INVALID_PROJECT_TITLE_MESSAGE);
            }
            String projectDescription = behanceSDKProjectDraftOptions.getProjectDescription();
            if (!TextUtils.isEmpty(projectDescription) && projectDescription.length() > 65535) {
                throw new BehanceSDKInvalidArgumentException(INVALID_PROJECT_DESCRIPTION_MESSAGE);
            }
        }
        if (iBehanceSDKCreateProjectDraftListener == null) {
            throw new BehanceSDKInvalidArgumentException("Instance of IBehanceSDKCreateProjectDraftListener cannot be null.");
        }
        BehanceSDKCreateProjectDraftAsyncTask behanceSDKCreateProjectDraftAsyncTask = new BehanceSDKCreateProjectDraftAsyncTask(iBehanceSDKCreateProjectDraftListener);
        BehanceSDKCreateProjectDraftTaskParams behanceSDKCreateProjectDraftTaskParams = new BehanceSDKCreateProjectDraftTaskParams();
        behanceSDKCreateProjectDraftTaskParams.setClientId(this.credentials.getClientId());
        behanceSDKCreateProjectDraftTaskParams.setBehanceSDKProjectDraftOptions(behanceSDKProjectDraftOptions);
        behanceSDKCreateProjectDraftAsyncTask.execute(behanceSDKCreateProjectDraftTaskParams);
    }

    @Deprecated
    public void publishProject(String str, IBehanceSDKProjectPublishListener iBehanceSDKProjectPublishListener) throws BehanceSDKUserNotEntitledException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        if (TextUtils.isEmpty(str)) {
            throw new BehanceSDKInvalidArgumentException("Project ID cannot be null or empty.");
        }
        BehanceSDKPublishProjectAsyncTask behanceSDKPublishProjectAsyncTask = new BehanceSDKPublishProjectAsyncTask(iBehanceSDKProjectPublishListener);
        BehanceSDKPublishProjectTaskParams behanceSDKPublishProjectTaskParams = new BehanceSDKPublishProjectTaskParams();
        behanceSDKPublishProjectTaskParams.setClientId(this.credentials.getClientId());
        behanceSDKPublishProjectTaskParams.setProjectId(str);
        behanceSDKPublishProjectAsyncTask.execute(behanceSDKPublishProjectTaskParams);
    }

    @Deprecated
    public void addImageToProject(String str, File file, IBehanceSDKADDProjectModuleListener iBehanceSDKADDProjectModuleListener) throws BehanceSDKUserNotEntitledException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        if (TextUtils.isEmpty(str)) {
            throw new BehanceSDKInvalidArgumentException("Project ID cannot be null or empty.");
        }
        if (file == null || !file.exists()) {
            throw new BehanceSDKInvalidArgumentException("Image file cannot be null or not existing file.");
        }
        BehanceSDKAddProjectModuleTaskParams behanceSDKAddProjectModuleTaskParams = new BehanceSDKAddProjectModuleTaskParams();
        behanceSDKAddProjectModuleTaskParams.setClientId(this.credentials.getClientId());
        behanceSDKAddProjectModuleTaskParams.setProjectId(str);
        behanceSDKAddProjectModuleTaskParams.setImage(file);
        new BehanceSDKAddProjectModuleAsyncTask(iBehanceSDKADDProjectModuleListener).execute(behanceSDKAddProjectModuleTaskParams);
    }

    @Deprecated
    public void cancelActivePublishProject(Context context, String str) {
        context.bindService(new Intent(context, (Class<?>) BehanceSDKPublishProjectService.class), new BSDKCancelPublishProjectServiceConnection(str), 0);
    }

    @Deprecated
    public void displayPublishProjectSuccessView(Context context, BehanceSDKPublishProjectStatusDTO behanceSDKPublishProjectStatusDTO) {
        if (behanceSDKPublishProjectStatusDTO != null && behanceSDKPublishProjectStatusDTO.getProgressState() == BehanceSDKPublishProjectProgressState.PUBLISH_SUCCESSFUL) {
            Intent intent = new Intent(context, (Class<?>) BehanceSDKPublishResultsActivity.class);
            intent.setFlags(268435456);
            intent.putExtra(BehanceSDKPublishResultsActivity.INTENT_STRING_EXTRA_WORK_URL, behanceSDKPublishProjectStatusDTO.getProjectUrl());
            intent.putExtra(BehanceSDKPublishResultsActivity.INTENT_STRING_EXTRA_IMAGE_URL, behanceSDKPublishProjectStatusDTO.getProjectCoverImageUrl());
            context.startActivity(intent);
        }
    }

    @Deprecated
    private void initializeForPublishProjectWorkflow(Context context, BehanceSDKAbstractPublishOptions behanceSDKAbstractPublishOptions) {
        BehanceSDKProjectPublishWFManager behanceSDKProjectPublishWFManager = BehanceSDKProjectPublishWFManager.getInstance();
        BehanceSDKSocialAccountManager behanceSDKSocialAccountManager = BehanceSDKSocialAccountManager.getInstance();
        if (behanceSDKAbstractPublishOptions.isFacebookShareEnabled() && behanceSDKAbstractPublishOptions.getFacebookClientId() != null && behanceSDKAbstractPublishOptions.getFacebookClientId().length() > 0) {
            BehanceSDKSocialAccountDTO account = behanceSDKSocialAccountManager.getAccount(BehanceSDKSocialAccountType.FACEBOOK, context);
            if (account != null) {
                if (!behanceSDKAbstractPublishOptions.getFacebookClientId().equals(account.getAccountClientId())) {
                    behanceSDKSocialAccountManager.removeAccount(BehanceSDKSocialAccountType.FACEBOOK, context);
                    account = null;
                }
            }
            if (account == null) {
                BehanceSDKSocialAccountDTO behanceSDKSocialAccountDTO = new BehanceSDKSocialAccountDTO();
                behanceSDKSocialAccountDTO.setAccountType(BehanceSDKSocialAccountType.FACEBOOK);
                behanceSDKSocialAccountDTO.setAccountClientId(behanceSDKAbstractPublishOptions.getFacebookClientId());
                behanceSDKSocialAccountManager.addAccount(behanceSDKSocialAccountDTO, context);
            }
        } else {
            behanceSDKProjectPublishWFManager.setHideFacebookSharing(true);
        }
        if (behanceSDKAbstractPublishOptions.isTwitterShareEnabled() && behanceSDKAbstractPublishOptions.getTwitterConsumerKey() != null && behanceSDKAbstractPublishOptions.getTwitterConsumerKey().length() > 0 && behanceSDKAbstractPublishOptions.getTwitterConsumerSecretKey() != null && behanceSDKAbstractPublishOptions.getTwitterConsumerSecretKey().length() > 0) {
            BehanceSDKSocialAccountDTO account2 = behanceSDKSocialAccountManager.getAccount(BehanceSDKSocialAccountType.TWITTER, context);
            if (account2 != null) {
                String accountClientId = account2.getAccountClientId();
                String accountClientSecret = account2.getAccountClientSecret();
                if (!behanceSDKAbstractPublishOptions.getTwitterConsumerKey().equals(accountClientId) || !behanceSDKAbstractPublishOptions.getTwitterConsumerSecretKey().equals(accountClientSecret)) {
                    behanceSDKSocialAccountManager.removeAccount(BehanceSDKSocialAccountType.TWITTER, context);
                    account2 = null;
                }
            }
            if (account2 == null) {
                BehanceSDKSocialAccountDTO behanceSDKSocialAccountDTO2 = new BehanceSDKSocialAccountDTO();
                behanceSDKSocialAccountDTO2.setAccountType(BehanceSDKSocialAccountType.TWITTER);
                behanceSDKSocialAccountDTO2.setAccountClientId(behanceSDKAbstractPublishOptions.getTwitterConsumerKey());
                behanceSDKSocialAccountDTO2.setAccountClientSecret(behanceSDKAbstractPublishOptions.getTwitterConsumerSecretKey());
                behanceSDKSocialAccountManager.addAccount(behanceSDKSocialAccountDTO2, context);
            }
        } else {
            behanceSDKProjectPublishWFManager.setHideTwitterSharing(true);
        }
        behanceSDKProjectPublishWFManager.setUserCredentials(this.credentials);
        if (behanceSDKAbstractPublishOptions.getPublishListener() != null) {
            behanceSDKProjectPublishWFManager.setPublishListener(behanceSDKAbstractPublishOptions.getPublishListener());
        }
        behanceSDKProjectPublishWFManager.setNotificationHandlerActivityClass(behanceSDKAbstractPublishOptions.getNotificationHandlerActivityClass());
    }

    private void initSocialAccountManager(Context context, BehanceSDKAbstractPublishOptions behanceSDKAbstractPublishOptions) {
        BehanceSDKSocialAccountManager behanceSDKSocialAccountManager = BehanceSDKSocialAccountManager.getInstance();
        if (behanceSDKAbstractPublishOptions.isFacebookShareEnabled() && behanceSDKAbstractPublishOptions.getFacebookClientId() != null && behanceSDKAbstractPublishOptions.getFacebookClientId().length() > 0) {
            BehanceSDKSocialAccountDTO account = behanceSDKSocialAccountManager.getAccount(BehanceSDKSocialAccountType.FACEBOOK, context);
            if (account != null) {
                if (!behanceSDKAbstractPublishOptions.getFacebookClientId().equals(account.getAccountClientId())) {
                    behanceSDKSocialAccountManager.removeAccount(BehanceSDKSocialAccountType.FACEBOOK, context);
                    account = null;
                }
            }
            if (account == null) {
                BehanceSDKSocialAccountDTO behanceSDKSocialAccountDTO = new BehanceSDKSocialAccountDTO();
                behanceSDKSocialAccountDTO.setAccountType(BehanceSDKSocialAccountType.FACEBOOK);
                behanceSDKSocialAccountDTO.setAccountClientId(behanceSDKAbstractPublishOptions.getFacebookClientId());
                behanceSDKSocialAccountManager.addAccount(behanceSDKSocialAccountDTO, context);
            }
        }
        if (behanceSDKAbstractPublishOptions.isTwitterShareEnabled() && behanceSDKAbstractPublishOptions.getTwitterConsumerKey() != null && behanceSDKAbstractPublishOptions.getTwitterConsumerKey().length() > 0 && behanceSDKAbstractPublishOptions.getTwitterConsumerSecretKey() != null && behanceSDKAbstractPublishOptions.getTwitterConsumerSecretKey().length() > 0) {
            BehanceSDKSocialAccountDTO account2 = behanceSDKSocialAccountManager.getAccount(BehanceSDKSocialAccountType.TWITTER, context);
            if (account2 != null) {
                String accountClientId = account2.getAccountClientId();
                String accountClientSecret = account2.getAccountClientSecret();
                if (!behanceSDKAbstractPublishOptions.getTwitterConsumerKey().equals(accountClientId) || !behanceSDKAbstractPublishOptions.getTwitterConsumerSecretKey().equals(accountClientSecret)) {
                    behanceSDKSocialAccountManager.removeAccount(BehanceSDKSocialAccountType.TWITTER, context);
                    account2 = null;
                }
            }
            if (account2 == null) {
                BehanceSDKSocialAccountDTO behanceSDKSocialAccountDTO2 = new BehanceSDKSocialAccountDTO();
                behanceSDKSocialAccountDTO2.setAccountType(BehanceSDKSocialAccountType.TWITTER);
                behanceSDKSocialAccountDTO2.setAccountClientId(behanceSDKAbstractPublishOptions.getTwitterConsumerKey());
                behanceSDKSocialAccountDTO2.setAccountClientSecret(behanceSDKAbstractPublishOptions.getTwitterConsumerSecretKey());
                behanceSDKSocialAccountManager.addAccount(behanceSDKSocialAccountDTO2, context);
            }
        }
    }

    public void loadCreativeFields(final IBehanceSDKGetCreativeFieldsListener iBehanceSDKGetCreativeFieldsListener) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        BehanceSDKLoadCreativeFieldsAsyncTask behanceSDKLoadCreativeFieldsAsyncTask = new BehanceSDKLoadCreativeFieldsAsyncTask(new IGetCreativeFieldsAsyncTaskListener() { // from class: com.behance.sdk.BehanceSDK.1
            @Override // com.behance.sdk.datamanager.listeners.interfaces.IGetCreativeFieldsAsyncTaskListener
            public void onLoadCreativeFieldsSuccess(List<BehanceSDKCreativeFieldDTO> list) {
                iBehanceSDKGetCreativeFieldsListener.onLoadCreativeFieldsSuccess(list);
            }

            @Override // com.behance.sdk.datamanager.listeners.interfaces.IGetCreativeFieldsAsyncTaskListener
            public void onLoadCreativeFieldsFailure(Exception exc) {
                iBehanceSDKGetCreativeFieldsListener.onLoadCreativeFieldsFailure(exc);
            }
        });
        behanceSDKLoadCreativeFieldsAsyncTask.setUserCredentials(this.credentials);
        behanceSDKLoadCreativeFieldsAsyncTask.execute(new Void[0]);
    }

    public void updateBehanceProfile(BehanceSDKUpdateProfileOptions behanceSDKUpdateProfileOptions, final IBehanceSDKUpdateProfileListener iBehanceSDKUpdateProfileListener) throws BehanceSDKUserNotEntitledException, BehanceSDKInvalidArgumentException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        if (behanceSDKUpdateProfileOptions == null) {
            throw new BehanceSDKInvalidArgumentException("Profile options object cannot be null.");
        }
        BehanceSDKEditProfileAsyncTaskParams behanceSDKEditProfileAsyncTaskParams = new BehanceSDKEditProfileAsyncTaskParams();
        behanceSDKEditProfileAsyncTaskParams.setFirstName(behanceSDKUpdateProfileOptions.getFirstName());
        behanceSDKEditProfileAsyncTaskParams.setLastName(behanceSDKUpdateProfileOptions.getLastName());
        behanceSDKEditProfileAsyncTaskParams.setCountry(behanceSDKUpdateProfileOptions.getCountry());
        behanceSDKEditProfileAsyncTaskParams.setState(behanceSDKUpdateProfileOptions.getState());
        behanceSDKEditProfileAsyncTaskParams.setCity(behanceSDKUpdateProfileOptions.getCity());
        behanceSDKEditProfileAsyncTaskParams.setCompany(behanceSDKUpdateProfileOptions.getCompany());
        behanceSDKEditProfileAsyncTaskParams.setOccupation(behanceSDKUpdateProfileOptions.getOccupation());
        behanceSDKEditProfileAsyncTaskParams.setWebsite(behanceSDKUpdateProfileOptions.getWebsite());
        behanceSDKEditProfileAsyncTaskParams.setImage(new ImageModule(behanceSDKUpdateProfileOptions.getImage()));
        behanceSDKEditProfileAsyncTaskParams.setClientId(this.credentials.getClientId());
        new BehanceSDKEditProfileAsyncTask(new IBehanceSDKEditProfileAsyncTaskListener() { // from class: com.behance.sdk.BehanceSDK.2
            @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKEditProfileAsyncTaskListener
            public void onEditProfileTaskSuccess(BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult) {
                if (iBehanceSDKUpdateProfileListener != null) {
                    iBehanceSDKUpdateProfileListener.onProfileUpdateSuccess();
                }
            }

            @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKEditProfileAsyncTaskListener
            public void onEditProfileTaskFailure(BehanceSDKEditProfileTaskResult behanceSDKEditProfileTaskResult) {
                if (iBehanceSDKUpdateProfileListener != null) {
                    iBehanceSDKUpdateProfileListener.onProfileUpdateFailure(behanceSDKEditProfileTaskResult.getExceptions());
                }
            }
        }).execute(behanceSDKEditProfileAsyncTaskParams);
    }

    public void launchEditProfileWorkFlow(Context context, IBehanceSDKEditProfileListener iBehanceSDKEditProfileListener) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        launchEditProfileWorkFlow(context, null, iBehanceSDKEditProfileListener);
    }

    public void launchEditProfileWorkFlow(Context context, BehanceSDKEditProfileOptions behanceSDKEditProfileOptions, IBehanceSDKEditProfileListener iBehanceSDKEditProfileListener) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        if (this.credentials.getUserAdobeAccountId() == null) {
            iBehanceSDKEditProfileListener.onEditProfileFailure();
            return;
        }
        BehanceSDKEditProfileManager behanceSDKEditProfileManager = BehanceSDKEditProfileManager.getInstance();
        behanceSDKEditProfileManager.setUserCredentials(this.credentials);
        behanceSDKEditProfileManager.setEditProfileListener(iBehanceSDKEditProfileListener);
        Intent intent = new Intent(context, (Class<?>) BehanceSDKEditProfileActivity.class);
        if (behanceSDKEditProfileOptions != null) {
            intent.putExtra(BehanceSDKEditProfileActivity.INTENT_EXTRA_BOOLEAN_ENABLE_ALTERNATE_IMAGE_SELECTION_SOURCES, behanceSDKEditProfileOptions.isEnableAlternateImageSelectionSources());
        }
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public BehanceSDKPublishImageValidationResult validateImageForProject(File file) {
        return BehanceSDKUtils.validateImageForProject(file);
    }

    public BehanceSDKPublishImageValidationResult validateImageForProject(ImageModule imageModule) {
        return BehanceSDKUtils.validateImageForProject(imageModule);
    }

    public void getBehanceUserProfile(final IBehanceSDKGetUserProfileListener iBehanceSDKGetUserProfileListener) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        BehanceSDKGetUserProfileTaskParams behanceSDKGetUserProfileTaskParams = new BehanceSDKGetUserProfileTaskParams();
        if (this.credentials.getUserAdobeAccountId() == null) {
            iBehanceSDKGetUserProfileListener.onEditProfileFailure(new Exception("Adobe account id not provided"));
            return;
        }
        behanceSDKGetUserProfileTaskParams.setUserId(this.credentials.getUserAdobeAccountId());
        behanceSDKGetUserProfileTaskParams.setClientId(this.credentials.getClientId());
        new BehanceSDKGetUserProfileAsyncTask(new IBehanceSDKGetUserProfileAsyncTaskListener() { // from class: com.behance.sdk.BehanceSDK.3
            @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetUserProfileAsyncTaskListener
            public void onGetUserProfileSuccess(BehanceSDKGetUserProfileTaskResult behanceSDKGetUserProfileTaskResult, BehanceSDKGetUserProfileTaskParams behanceSDKGetUserProfileTaskParams2) {
                BehanceSDKUserProfile behanceUserProfile = behanceSDKGetUserProfileTaskResult.getBehanceUserProfile();
                AdobeAuthUserProfile userProfile = AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().getUserProfile();
                if (userProfile != null) {
                    if (behanceUserProfile.getFirstName() == null || behanceUserProfile.getFirstName().isEmpty()) {
                        behanceUserProfile.setFirstName(userProfile.getFirstName());
                    }
                    if (behanceUserProfile.getLastName() == null || behanceUserProfile.getLastName().isEmpty()) {
                        behanceUserProfile.setLastName(userProfile.getLastName());
                    }
                }
                iBehanceSDKGetUserProfileListener.onGetUserProfileSuccess(behanceUserProfile);
            }

            @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetUserProfileAsyncTaskListener
            public void onGetUserProfileFailure(Exception exc, BehanceSDKGetUserProfileTaskParams behanceSDKGetUserProfileTaskParams2) {
                iBehanceSDKGetUserProfileListener.onEditProfileFailure(exc);
            }
        }).execute(behanceSDKGetUserProfileTaskParams);
    }

    public void searchProjects(BehanceSDKSearchProjectOptions behanceSDKSearchProjectOptions, IBehanceSDKSearchProjectListener iBehanceSDKSearchProjectListener) throws BehanceSDKUserNotEntitledException, BehanceSDKUserNotAuthenticatedException {
        validateIfUserIsEntitledForBehanceWorkflow();
        BehanceSDKSearchProjectsTaskParams behanceSDKSearchProjectsTaskParams = new BehanceSDKSearchProjectsTaskParams();
        behanceSDKSearchProjectsTaskParams.setClientId(this.credentials.getClientId());
        if (behanceSDKSearchProjectOptions != null) {
            behanceSDKSearchProjectsTaskParams.setSearchString(behanceSDKSearchProjectOptions.getSearchString());
            behanceSDKSearchProjectsTaskParams.setPageNumber(behanceSDKSearchProjectOptions.getPageNumber());
            behanceSDKSearchProjectsTaskParams.setFieldId(behanceSDKSearchProjectOptions.getFieldId());
            behanceSDKSearchProjectsTaskParams.setCountry(behanceSDKSearchProjectOptions.getCountry());
            behanceSDKSearchProjectsTaskParams.setState(behanceSDKSearchProjectOptions.getState());
            behanceSDKSearchProjectsTaskParams.setCity(behanceSDKSearchProjectOptions.getCity());
            behanceSDKSearchProjectsTaskParams.setTags(behanceSDKSearchProjectOptions.getTags());
            behanceSDKSearchProjectsTaskParams.setTimeSpan(behanceSDKSearchProjectOptions.getTimeSpan());
            behanceSDKSearchProjectsTaskParams.setSortOption(behanceSDKSearchProjectOptions.getSortOption());
        }
        new BehanceSDKSearchProjectsAsyncTask(iBehanceSDKSearchProjectListener).execute(behanceSDKSearchProjectsTaskParams);
    }

    public String getClientId() {
        if (this.credentials != null) {
            return this.credentials.getClientId();
        }
        return null;
    }

    public AdobeAuthIMSEnvironment getEnvironment() {
        return this.environment == null ? AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentProductionUS : this.environment;
    }

    private void setEnvironment(AdobeAuthIMSEnvironment adobeAuthIMSEnvironment) {
        this.environment = adobeAuthIMSEnvironment;
    }

    public BehanceNameValuePair getUniversalHeader() {
        return this.universalHeader;
    }
}
