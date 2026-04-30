package com.behance.sdk.fragments.headless;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.behance.sdk.asynctask.listeners.IBehanceSDKAppreciateProjectAsyncTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKDeleteProjectCommentAsyncTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKFollowUserAsyncTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectCommentsAsyncTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectDetailsAsyncTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKPostProjectCommentAsyncTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKPostUserSettingsOnServerAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKAppreciateProjectAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKDeleteProjectCommentAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKFollowUnFollowUserAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetProjectCommentsAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetProjectDetailsAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKPostProjectCommentAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKPostUserSettingsOnServerAsyncTaskParams;
import com.behance.sdk.asynctasks.BehanceSDKAppreciateProjectAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKDeleteProjectCommentAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKFollowUnFollowUserAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKGetProjectCommentsAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKGetProjectDetailsAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKGetUserProjectsListAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKPostProjectCommentAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKPostUserSettingsOnServerAsyncTask;
import com.behance.sdk.dto.project.BehanceSDKAbstractProjectModuleDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectCommentDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleImageDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetProjectDetailsHeadlessFragment extends Fragment implements IBehanceSDKAppreciateProjectAsyncTaskListener, IBehanceSDKDeleteProjectCommentAsyncTaskListener, IBehanceSDKFollowUserAsyncTaskListener, IBehanceSDKGetProjectCommentsAsyncTaskListener, IBehanceSDKGetProjectDetailsAsyncTaskListener, IBehanceSDKPostProjectCommentAsyncTaskListener, IBehanceSDKPostUserSettingsOnServerAsyncTaskListener {
    private static final String MATURE_CONTENT_ACCESS_ALLOWED = "allowed";
    private BehanceSDKAppreciateProjectAsyncTask appreciateProjectTask;
    private Callbacks callbacks;
    private BehanceSDKDeleteProjectCommentAsyncTask deleteCommentTask;
    private BehanceSDKFollowUnFollowUserAsyncTask followUnFollowUserAsyncTask;
    private BehanceSDKGetProjectCommentsAsyncTask getProjectCommentsTask;
    private BehanceSDKGetProjectDetailsAsyncTask getProjectDetailsTask;
    private BehanceSDKGetUserProjectsListAsyncTask getUserProjectListTask;
    private List<String> imageURLs;
    private int lastLoadedProjectCommentsPageNumber;
    private BehanceSDKProjectDTO mActiveProject;
    private List<BehanceSDKProjectDTO> mUserProjectList;
    private BehanceSDKPostProjectCommentAsyncTask postProjectCommentTask;
    private BehanceSDKPostUserSettingsOnServerAsyncTask postSettingsTask;
    private boolean getProjectsDetailsAsyncTaskInProgress = false;
    private boolean getProjectCommentsAsyncTaskInProgress = false;
    private boolean getUserProjectListAsyncTaskInProgress = false;
    private boolean postProjectCommentTaskInProgress = false;
    private boolean followUnFollowTaskInProgress = false;
    private boolean postSettingTaskInProgress = false;
    private boolean appreciateProjectTaskInProgress = false;
    private boolean deleteCommentTaskInProgress = false;
    private List<BehanceSDKProjectCommentDTO> activeProjectCommentsList = new ArrayList();
    private boolean moreCommentsAvailable = false;

    public interface Callbacks {
        void onAppreciateProjectAsyncTaskFailure(Exception exc);

        void onAppreciateProjectAsyncTaskSuccess(boolean z);

        void onDeleteCommentFailure(Exception exc, BehanceSDKDeleteProjectCommentAsyncTaskParams behanceSDKDeleteProjectCommentAsyncTaskParams);

        void onDeleteCommentSuccess(boolean z, BehanceSDKDeleteProjectCommentAsyncTaskParams behanceSDKDeleteProjectCommentAsyncTaskParams);

        void onFollowUnFollowUserFailure(Exception exc, BehanceSDKFollowUnFollowUserAsyncTaskParams behanceSDKFollowUnFollowUserAsyncTaskParams);

        void onFollowUnFollowUserSuccess(boolean z, BehanceSDKFollowUnFollowUserAsyncTaskParams behanceSDKFollowUnFollowUserAsyncTaskParams);

        void onGetProjectCommentsFailure(Exception exc, BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams);

        void onGetProjectCommentsSuccess(List<BehanceSDKProjectCommentDTO> list, boolean z, BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams);

        void onGetProjectDetailsFailure(Exception exc);

        void onGetProjectDetailsSuccess(BehanceSDKProjectDTO behanceSDKProjectDTO);

        void onPostCommentFailure(Exception exc);

        void onPostCommentSuccess(int i, BehanceSDKPostProjectCommentAsyncTaskParams behanceSDKPostProjectCommentAsyncTaskParams);

        void onPostSettingsTaskFailure(Exception exc);

        void onPostSettingsTaskSuccess(boolean z, BehanceSDKPostUserSettingsOnServerAsyncTaskParams behanceSDKPostUserSettingsOnServerAsyncTaskParams);
    }

    public String[] getImageURLsArray() {
        String[] strArr = new String[getImageURLs().size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < strArr.length) {
                strArr[i2] = this.imageURLs.get(i2);
                i = i2 + 1;
            } else {
                return strArr;
            }
        }
    }

    public List<String> getImageURLs() {
        if (this.imageURLs == null) {
            this.imageURLs = new ArrayList();
            for (BehanceSDKAbstractProjectModuleDTO behanceSDKAbstractProjectModuleDTO : this.mActiveProject.getModules()) {
                if (behanceSDKAbstractProjectModuleDTO instanceof BehanceSDKProjectModuleImageDTO) {
                    this.imageURLs.add(((BehanceSDKProjectModuleImageDTO) behanceSDKAbstractProjectModuleDTO).getHDSrcUrl());
                }
            }
        }
        return this.imageURLs;
    }

    public BehanceSDKGetProjectDetailsHeadlessFragment() {
        setRetainInstance(true);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public BehanceSDKProjectDTO getActiveProject() {
        return this.mActiveProject;
    }

    public void setActiveProject(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        this.mActiveProject = behanceSDKProjectDTO;
    }

    public boolean isGetProjectDetailsAsyncTaskInProgress() {
        return this.getProjectsDetailsAsyncTaskInProgress;
    }

    private void setGetProjectDetailsAsyncTaskInProgress(boolean z) {
        this.getProjectsDetailsAsyncTaskInProgress = z;
    }

    public boolean isGetProjectCommentsAsyncTaskInProgress() {
        return this.getProjectCommentsAsyncTaskInProgress;
    }

    private void setGetProjectCommentsAsyncTaskInProgress(boolean z) {
        this.getProjectCommentsAsyncTaskInProgress = z;
    }

    public boolean isGetUserProjectListAsyncTaskInProgress() {
        return this.getUserProjectListAsyncTaskInProgress;
    }

    private void setGetUserProjectListAsyncTaskInProgress(boolean z) {
        this.getUserProjectListAsyncTaskInProgress = z;
    }

    public boolean isPostProjectCommentTaskInProgress() {
        return this.postProjectCommentTaskInProgress;
    }

    private void setPostProjectCommentTaskInProgress(boolean z) {
        this.postProjectCommentTaskInProgress = z;
    }

    public boolean isFollowUnFollowTaskInProgress() {
        return this.followUnFollowTaskInProgress;
    }

    private void setFollowUnFollowTaskInProgress(boolean z) {
        this.followUnFollowTaskInProgress = z;
    }

    public boolean isPostSettingTaskInProgress() {
        return this.postSettingTaskInProgress;
    }

    public void setPostSettingTaskInProgress(boolean z) {
        this.postSettingTaskInProgress = z;
    }

    public List<BehanceSDKProjectDTO> getUserProjectList() {
        return this.mUserProjectList;
    }

    private void setUserProjectList(List<BehanceSDKProjectDTO> list) {
        this.mUserProjectList = list;
    }

    public void setActiveProjectComments(List<BehanceSDKProjectCommentDTO> list) {
        setActiveProjectCommentsList(new ArrayList());
        getActiveProjectCommentsList().addAll(list);
    }

    public List<BehanceSDKProjectCommentDTO> getActiveProjectCommentsList() {
        return this.activeProjectCommentsList;
    }

    private void setActiveProjectCommentsList(List<BehanceSDKProjectCommentDTO> list) {
        this.activeProjectCommentsList = list;
    }

    public void loadProjectDetailsFromServer(BehanceSDKGetProjectDetailsAsyncTaskParams behanceSDKGetProjectDetailsAsyncTaskParams) {
        if (!isGetProjectDetailsAsyncTaskInProgress() && this.getProjectDetailsTask == null) {
            this.getProjectDetailsTask = new BehanceSDKGetProjectDetailsAsyncTask(this);
            this.getProjectDetailsTask.execute(behanceSDKGetProjectDetailsAsyncTaskParams);
            setGetProjectDetailsAsyncTaskInProgress(true);
        }
    }

    public void loadProjectCommentsFromServer(BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams) {
        if (!isGetProjectCommentsAsyncTaskInProgress() && this.getProjectCommentsTask == null) {
            setMoreCommentsAvailable(false);
            setGetProjectCommentsAsyncTaskInProgress(true);
            this.getProjectCommentsTask = new BehanceSDKGetProjectCommentsAsyncTask(this);
            this.lastLoadedProjectCommentsPageNumber = 1;
            behanceSDKGetProjectCommentsAsyncTaskParams.setPageNumber(this.lastLoadedProjectCommentsPageNumber);
            behanceSDKGetProjectCommentsAsyncTaskParams.setPageSize(50);
            this.getProjectCommentsTask.execute(behanceSDKGetProjectCommentsAsyncTaskParams);
        }
    }

    public void loadProjectCommentsNextPageFromServer(BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams) {
        if (!isGetProjectCommentsAsyncTaskInProgress() && this.getProjectCommentsTask == null && isMoreCommentsAvailable()) {
            setMoreCommentsAvailable(false);
            setGetProjectCommentsAsyncTaskInProgress(true);
            this.getProjectCommentsTask = new BehanceSDKGetProjectCommentsAsyncTask(this);
            this.lastLoadedProjectCommentsPageNumber++;
            behanceSDKGetProjectCommentsAsyncTaskParams.setPageNumber(this.lastLoadedProjectCommentsPageNumber);
            behanceSDKGetProjectCommentsAsyncTaskParams.setPageSize(50);
            this.getProjectCommentsTask.execute(behanceSDKGetProjectCommentsAsyncTaskParams);
        }
    }

    public void postComment(String str, String str2) {
        if (!isPostProjectCommentTaskInProgress() && this.postProjectCommentTask == null) {
            setPostProjectCommentTaskInProgress(true);
            this.postProjectCommentTask = new BehanceSDKPostProjectCommentAsyncTask(this);
            BehanceSDKPostProjectCommentAsyncTaskParams behanceSDKPostProjectCommentAsyncTaskParams = new BehanceSDKPostProjectCommentAsyncTaskParams();
            behanceSDKPostProjectCommentAsyncTaskParams.setCommentContent(str);
            behanceSDKPostProjectCommentAsyncTaskParams.setProjectId(str2);
            this.postProjectCommentTask.execute(behanceSDKPostProjectCommentAsyncTaskParams);
        }
    }

    public void followUser(BehanceSDKUserDTO behanceSDKUserDTO) {
        this.followUnFollowUserAsyncTask = null;
        setFollowUnFollowTaskInProgress(true);
        this.followUnFollowUserAsyncTask = new BehanceSDKFollowUnFollowUserAsyncTask(this);
        BehanceSDKFollowUnFollowUserAsyncTaskParams behanceSDKFollowUnFollowUserAsyncTaskParams = new BehanceSDKFollowUnFollowUserAsyncTaskParams();
        behanceSDKFollowUnFollowUserAsyncTaskParams.setUserDTO(behanceSDKUserDTO);
        behanceSDKFollowUnFollowUserAsyncTaskParams.setFollowUser(true);
        this.followUnFollowUserAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, behanceSDKFollowUnFollowUserAsyncTaskParams);
    }

    public void unFollowUser(BehanceSDKUserDTO behanceSDKUserDTO) {
        this.followUnFollowUserAsyncTask = null;
        setFollowUnFollowTaskInProgress(true);
        this.followUnFollowUserAsyncTask = new BehanceSDKFollowUnFollowUserAsyncTask(this);
        BehanceSDKFollowUnFollowUserAsyncTaskParams behanceSDKFollowUnFollowUserAsyncTaskParams = new BehanceSDKFollowUnFollowUserAsyncTaskParams();
        behanceSDKFollowUnFollowUserAsyncTaskParams.setUserDTO(behanceSDKUserDTO);
        behanceSDKFollowUnFollowUserAsyncTaskParams.setFollowUser(false);
        this.followUnFollowUserAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, behanceSDKFollowUnFollowUserAsyncTaskParams);
    }

    public void setMatureContentAccessForUser(BehanceSDKPostUserSettingsOnServerAsyncTaskParams behanceSDKPostUserSettingsOnServerAsyncTaskParams) {
        if (!isPostProjectCommentTaskInProgress() && this.postSettingsTask == null) {
            setPostProjectCommentTaskInProgress(true);
            this.postSettingsTask = new BehanceSDKPostUserSettingsOnServerAsyncTask(this);
            this.postSettingsTask.execute(behanceSDKPostUserSettingsOnServerAsyncTaskParams);
        }
    }

    public void appreciateProject(String str) {
        if (!isAppreciateProjectTaskInProgress() && this.appreciateProjectTask == null) {
            setAppreciateProjectTaskInProgress(true);
            this.appreciateProjectTask = new BehanceSDKAppreciateProjectAsyncTask(this);
            BehanceSDKAppreciateProjectAsyncTaskParams behanceSDKAppreciateProjectAsyncTaskParams = new BehanceSDKAppreciateProjectAsyncTaskParams();
            behanceSDKAppreciateProjectAsyncTaskParams.setProjectId(str);
            this.appreciateProjectTask.execute(behanceSDKAppreciateProjectAsyncTaskParams);
        }
    }

    public void deleteComment(String str, String str2) {
        if (!isDeleteCommentTaskInProgress() && this.deleteCommentTask == null) {
            setDeleteCommentTaskInProgress(true);
            BehanceSDKDeleteProjectCommentAsyncTaskParams behanceSDKDeleteProjectCommentAsyncTaskParams = new BehanceSDKDeleteProjectCommentAsyncTaskParams();
            behanceSDKDeleteProjectCommentAsyncTaskParams.setCommentId(str2);
            behanceSDKDeleteProjectCommentAsyncTaskParams.setProjectId(str);
            this.deleteCommentTask = new BehanceSDKDeleteProjectCommentAsyncTask(this);
            this.deleteCommentTask.execute(behanceSDKDeleteProjectCommentAsyncTaskParams);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectDetailsAsyncTaskListener
    public void onGetProjectDetailsAsyncTaskSuccess(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        setActiveProject(behanceSDKProjectDTO);
        setGetProjectDetailsAsyncTaskInProgress(false);
        this.getProjectDetailsTask = null;
        if (this.callbacks != null) {
            this.callbacks.onGetProjectDetailsSuccess(behanceSDKProjectDTO);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectDetailsAsyncTaskListener
    public void onGetProjectDetailsAsyncTaskFailure(Exception exc) {
        this.getProjectDetailsTask = null;
        setGetProjectDetailsAsyncTaskInProgress(false);
        if (this.callbacks != null) {
            this.callbacks.onGetProjectDetailsFailure(exc);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectCommentsAsyncTaskListener
    public void onGetProjectCommentsSuccess(List<BehanceSDKProjectCommentDTO> list, BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams) {
        if (behanceSDKGetProjectCommentsAsyncTaskParams.getPageNumber() > 1 && getActiveProjectCommentsList() != null) {
            getActiveProjectCommentsList().addAll(list);
        } else {
            setActiveProjectComments(list);
        }
        this.getProjectCommentsTask = null;
        setGetProjectCommentsAsyncTaskInProgress(false);
        if (list.size() >= 50) {
            setMoreCommentsAvailable(true);
        } else {
            setMoreCommentsAvailable(false);
        }
        if (this.callbacks != null) {
            this.callbacks.onGetProjectCommentsSuccess(list, isMoreCommentsAvailable(), behanceSDKGetProjectCommentsAsyncTaskParams);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectCommentsAsyncTaskListener
    public void onGetProjectCommentsFailure(Exception exc, BehanceSDKGetProjectCommentsAsyncTaskParams behanceSDKGetProjectCommentsAsyncTaskParams) {
        this.getProjectCommentsTask = null;
        setMoreCommentsAvailable(false);
        setGetProjectCommentsAsyncTaskInProgress(false);
        if (this.callbacks != null) {
            this.callbacks.onGetProjectCommentsFailure(exc, behanceSDKGetProjectCommentsAsyncTaskParams);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKPostProjectCommentAsyncTaskListener
    public void onPostProjectCommentAsyncTaskSuccess(int i, BehanceSDKPostProjectCommentAsyncTaskParams behanceSDKPostProjectCommentAsyncTaskParams) {
        if (this.callbacks != null) {
            this.callbacks.onPostCommentSuccess(i, behanceSDKPostProjectCommentAsyncTaskParams);
        }
        setPostProjectCommentTaskInProgress(false);
        this.postProjectCommentTask = null;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKPostProjectCommentAsyncTaskListener
    public void onPostProjectCommentAsyncTaskFailure(Exception exc, BehanceSDKPostProjectCommentAsyncTaskParams behanceSDKPostProjectCommentAsyncTaskParams) {
        if (this.callbacks != null) {
            this.callbacks.onPostCommentFailure(exc);
        }
        setPostProjectCommentTaskInProgress(false);
        this.postProjectCommentTask = null;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKFollowUserAsyncTaskListener
    public void onFollowUserAsyncTaskSuccess(boolean z, BehanceSDKFollowUnFollowUserAsyncTaskParams behanceSDKFollowUnFollowUserAsyncTaskParams) {
        if (this.callbacks != null) {
            this.callbacks.onFollowUnFollowUserSuccess(z, behanceSDKFollowUnFollowUserAsyncTaskParams);
        }
        setFollowUnFollowTaskInProgress(false);
        this.followUnFollowUserAsyncTask = null;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKFollowUserAsyncTaskListener
    public void onFollowUserAsyncTaskFailure(Exception exc, BehanceSDKFollowUnFollowUserAsyncTaskParams behanceSDKFollowUnFollowUserAsyncTaskParams) {
        if (this.callbacks != null) {
            this.callbacks.onFollowUnFollowUserFailure(exc, behanceSDKFollowUnFollowUserAsyncTaskParams);
        }
        setFollowUnFollowTaskInProgress(false);
        this.followUnFollowUserAsyncTask = null;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKPostUserSettingsOnServerAsyncTaskListener
    public void onPostUserSettingsOnServerAsyncTaskSuccess(Boolean bool, BehanceSDKPostUserSettingsOnServerAsyncTaskParams behanceSDKPostUserSettingsOnServerAsyncTaskParams) {
        setPostProjectCommentTaskInProgress(false);
        this.mActiveProject.setMatureAccess("allowed");
        this.postSettingsTask = null;
        if (this.callbacks != null) {
            this.callbacks.onPostSettingsTaskSuccess(bool.booleanValue(), behanceSDKPostUserSettingsOnServerAsyncTaskParams);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKPostUserSettingsOnServerAsyncTaskListener
    public void onPostUserSettingsOnServerAsyncTaskFailure(Exception exc, BehanceSDKPostUserSettingsOnServerAsyncTaskParams behanceSDKPostUserSettingsOnServerAsyncTaskParams) {
        setPostProjectCommentTaskInProgress(false);
        this.postSettingsTask = null;
        if (this.callbacks != null) {
            this.callbacks.onPostSettingsTaskFailure(exc);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        setActiveProject(null);
    }

    public boolean isAppreciateProjectTaskInProgress() {
        return this.appreciateProjectTaskInProgress;
    }

    public void setAppreciateProjectTaskInProgress(boolean z) {
        this.appreciateProjectTaskInProgress = z;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKAppreciateProjectAsyncTaskListener
    public void onAppreciateProjectAsyncTaskSuccess(boolean z, BehanceSDKAppreciateProjectAsyncTaskParams behanceSDKAppreciateProjectAsyncTaskParams) {
        setAppreciateProjectTaskInProgress(false);
        this.appreciateProjectTask = null;
        if (this.callbacks != null) {
            this.callbacks.onAppreciateProjectAsyncTaskSuccess(z);
        }
        if (this.mActiveProject != null) {
            this.mActiveProject.setAppreciatedByUser(z);
            this.mActiveProject.getStats().setAppreciationsCount(this.mActiveProject.getStats().getAppreciationsCount() + 1);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKAppreciateProjectAsyncTaskListener
    public void onAppreciateProjectAsyncTaskFailure(Exception exc, BehanceSDKAppreciateProjectAsyncTaskParams behanceSDKAppreciateProjectAsyncTaskParams) {
        setAppreciateProjectTaskInProgress(false);
        this.appreciateProjectTask = null;
        if (this.callbacks != null) {
            this.callbacks.onAppreciateProjectAsyncTaskFailure(exc);
        }
    }

    public boolean isDeleteCommentTaskInProgress() {
        return this.deleteCommentTaskInProgress;
    }

    private void setDeleteCommentTaskInProgress(boolean z) {
        this.deleteCommentTaskInProgress = z;
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKDeleteProjectCommentAsyncTaskListener
    public void onDeleteProjectCommentAsyncTaskSuccess(boolean z, BehanceSDKDeleteProjectCommentAsyncTaskParams behanceSDKDeleteProjectCommentAsyncTaskParams) {
        setDeleteCommentTaskInProgress(false);
        this.deleteCommentTask = null;
        if (this.callbacks != null) {
            this.callbacks.onDeleteCommentSuccess(z, behanceSDKDeleteProjectCommentAsyncTaskParams);
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKDeleteProjectCommentAsyncTaskListener
    public void onDeleteProjectCommentAsyncTaskFailure(Exception exc, BehanceSDKDeleteProjectCommentAsyncTaskParams behanceSDKDeleteProjectCommentAsyncTaskParams) {
        setDeleteCommentTaskInProgress(false);
        this.deleteCommentTask = null;
        if (this.callbacks != null) {
            this.callbacks.onDeleteCommentFailure(exc, behanceSDKDeleteProjectCommentAsyncTaskParams);
        }
    }

    public boolean isMoreCommentsAvailable() {
        return this.moreCommentsAvailable;
    }

    private void setMoreCommentsAvailable(boolean z) {
        this.moreCommentsAvailable = z;
    }
}
