package com.behance.sdk.managers;

import android.app.Activity;
import com.behance.sdk.IBehanceSDKProjectPublishListener;
import com.behance.sdk.IBehanceSDKUserCredentials;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.project.NewBehanceProject;
import com.behance.sdk.project.modules.CoverImage;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.project.modules.ProjectModule;
import com.behance.sdk.project.modules.ProjectModuleTypes;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKProjectPublishWFManager {
    private static final BehanceSDKProjectPublishWFManager INSTANCE = new BehanceSDKProjectPublishWFManager();
    private NewBehanceProject currentBehanceProject;
    private boolean hideFacebookSharing;
    private boolean hideTwitterSharing;
    private Class<? extends Activity> notificationHandlerActivityClass;
    private IBehanceSDKProjectPublishListener publishListener;
    private List<ImageModule> selectedImagesForCover;
    private IBehanceSDKUserCredentials userCredentials;
    private List<ProjectModuleChangeListener> projectModuleChangeListeners = new ArrayList(2);
    private List<CoverImageChangeListener> coverImageChangeListeners = new ArrayList(2);

    /* JADX INFO: loaded from: classes2.dex */
    public interface CoverImageChangeListener {
        void coverImageChanges(CoverImage coverImage);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface ProjectModuleChangeListener {
        void projectModulesChanged(List<ProjectModule> list);

        void rotateImage(ImageModule imageModule);
    }

    public IBehanceSDKProjectPublishListener getPublishListener() {
        return this.publishListener;
    }

    public void setPublishListener(IBehanceSDKProjectPublishListener iBehanceSDKProjectPublishListener) {
        this.publishListener = iBehanceSDKProjectPublishListener;
    }

    public static BehanceSDKProjectPublishWFManager getInstance() {
        return INSTANCE;
    }

    private BehanceSDKProjectPublishWFManager() {
    }

    public void addProjectModuleChangeListener(ProjectModuleChangeListener projectModuleChangeListener) {
        if (!this.projectModuleChangeListeners.contains(projectModuleChangeListener)) {
            this.projectModuleChangeListeners.add(projectModuleChangeListener);
        }
    }

    public void removeProjectModuleChangeListener(ProjectModuleChangeListener projectModuleChangeListener) {
        this.projectModuleChangeListeners.remove(projectModuleChangeListener);
    }

    public void addCoverImageChangeListener(CoverImageChangeListener coverImageChangeListener) {
        if (!this.coverImageChangeListeners.contains(coverImageChangeListener)) {
            this.coverImageChangeListeners.add(coverImageChangeListener);
        }
    }

    public void removeCoverImageChangeListener(CoverImageChangeListener coverImageChangeListener) {
        this.coverImageChangeListeners.remove(coverImageChangeListener);
    }

    public void addImagesSelectedForCover(List<ImageModule> list) {
        if (list != null && !list.isEmpty()) {
            if (this.selectedImagesForCover == null) {
                this.selectedImagesForCover = new ArrayList(list.size());
            }
            this.selectedImagesForCover.addAll(list);
        }
    }

    public List<ImageModule> getImagesSelectedForCover() {
        List<ImageModule> imageModules;
        ArrayList arrayList = new ArrayList();
        if (this.currentBehanceProject != null && (imageModules = this.currentBehanceProject.getImageModules()) != null && !imageModules.isEmpty()) {
            arrayList.addAll(imageModules);
        }
        if (this.selectedImagesForCover != null && !this.selectedImagesForCover.isEmpty()) {
            arrayList.addAll(this.selectedImagesForCover);
        }
        return arrayList;
    }

    public List<ImageModule> getImagesSelectedOnlyForCover() {
        return this.selectedImagesForCover;
    }

    public void addImagesSelectedForProject(List<ImageModule> list) {
        if (list != null && !list.isEmpty()) {
            if (this.currentBehanceProject == null) {
                initializeProject();
            }
            this.currentBehanceProject.addImagesToProject(list);
            notifyListeners();
            return;
        }
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.removeAllImageModules();
            notifyListeners();
        }
    }

    public void initializeProject() {
        if (this.currentBehanceProject == null) {
            this.currentBehanceProject = new NewBehanceProject();
        }
    }

    private void notifyListeners() {
        Iterator<ProjectModuleChangeListener> it = this.projectModuleChangeListeners.iterator();
        while (it.hasNext()) {
            it.next().projectModulesChanged(this.currentBehanceProject.getProjectModules());
        }
    }

    public void clearImagesSelectedForCover() {
        if (this.selectedImagesForCover != null) {
            List<ImageModule> imageModules = this.currentBehanceProject.getImageModules();
            for (ImageModule imageModule : this.selectedImagesForCover) {
                if (imageModule.getType() == ProjectModuleTypes.CREATIVECLOUD_ASSET && !imageModules.contains(imageModule)) {
                    imageModule.deleteFromFileSystem();
                }
            }
            this.selectedImagesForCover.clear();
            this.selectedImagesForCover = null;
        }
    }

    public void removeAllModuleChangeListeners() {
        if (this.projectModuleChangeListeners != null) {
            this.projectModuleChangeListeners.clear();
        }
    }

    public List<ImageModule> getImagesSelectedForProject() {
        if (this.currentBehanceProject == null) {
            return null;
        }
        return this.currentBehanceProject.getImageModules();
    }

    public List<ProjectModule> getProjectModules() {
        if (this.currentBehanceProject == null) {
            return null;
        }
        return this.currentBehanceProject.getProjectModules();
    }

    public void addImageSelectedForProject(File file) {
        if (this.currentBehanceProject == null) {
            initializeProject();
        }
        this.currentBehanceProject.addProjectModule(new ImageModule(file));
        notifyListeners();
    }

    public void reorderSelectedModules(int i, int i2) {
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.reorderSelectedModules(i, i2);
        }
        notifyListeners();
    }

    public CoverImage getSelectedCoverImage() {
        if (this.currentBehanceProject != null) {
            return this.currentBehanceProject.getCoverImage();
        }
        return null;
    }

    public void setSelectedCoverImage(CoverImage coverImage) {
        this.currentBehanceProject.setCoverImage(coverImage);
        if (this.coverImageChangeListeners != null) {
            Iterator<CoverImageChangeListener> it = this.coverImageChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().coverImageChanges(coverImage);
            }
        }
    }

    public void addModuleToCurrentProject(ProjectModule projectModule) {
        if (this.currentBehanceProject == null) {
            initializeProject();
        }
        this.currentBehanceProject.addProjectModule(projectModule);
        notifyListeners();
    }

    public void setProjectTitle(String str) {
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.setTitle(str);
        }
    }

    public String getProjectTitle() {
        return this.currentBehanceProject != null ? this.currentBehanceProject.getTitle() : "";
    }

    public void setProjectTags(String str) {
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.setTags(str);
        }
    }

    public String getProjectTags() {
        if (this.currentBehanceProject != null) {
            return this.currentBehanceProject.getTags();
        }
        return null;
    }

    public void setProjectFields(List<BehanceSDKCreativeFieldDTO> list) {
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.setFields(list);
        }
    }

    public List<BehanceSDKCreativeFieldDTO> getProjectFields() {
        if (this.currentBehanceProject != null) {
            return this.currentBehanceProject.getFields();
        }
        return null;
    }

    public void setProjectDescription(String str) {
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.setDescription(str);
        }
    }

    public String getProjectDescription() {
        return this.currentBehanceProject != null ? this.currentBehanceProject.getDescription() : "";
    }

    public IBehanceSDKUserCredentials getUserCredentials() {
        return this.userCredentials;
    }

    public void setUserCredentials(IBehanceSDKUserCredentials iBehanceSDKUserCredentials) {
        this.userCredentials = iBehanceSDKUserCredentials;
    }

    public void setCopyrightOption(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.setCopyRight(behanceSDKCopyrightOption);
        }
    }

    public BehanceSDKCopyrightOption getCopyrightOption() {
        return this.currentBehanceProject != null ? this.currentBehanceProject.getCopyRight() : BehanceSDKCopyrightOption.BY_NC;
    }

    public void setContainsAdultContent(boolean z) {
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.markProjectForAdultContent(z);
        }
    }

    public boolean isProjectContainsAdultContent() {
        if (this.currentBehanceProject != null) {
            return this.currentBehanceProject.isProjectContainsAdultContent();
        }
        return false;
    }

    public void cancelWorkflow() {
        List<ImageModule> imagesSelectedForProject = getImagesSelectedForProject();
        if (imagesSelectedForProject != null && !imagesSelectedForProject.isEmpty()) {
            for (ImageModule imageModule : imagesSelectedForProject) {
                if (ProjectModuleTypes.CREATIVECLOUD_ASSET == imageModule.getType()) {
                    imageModule.deleteFromFileSystem();
                }
            }
        }
        finishWorkflow();
    }

    public void finishWorkflow() {
        clearImagesSelectedForCover();
        removeAllModuleChangeListeners();
        setUserCredentials(null);
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.clear();
            this.currentBehanceProject = null;
        }
    }

    public void removeProjectModule(ProjectModule projectModule) {
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.removeProjectModules(projectModule);
        }
        if (projectModule.getType() == ProjectModuleTypes.IMAGE) {
            ((ImageModule) projectModule).recycleImageBitmap();
        }
        notifyListeners();
    }

    public boolean isEmptyProject() {
        return this.currentBehanceProject == null || this.currentBehanceProject.isEmpty();
    }

    public void setShareOnFaceBook(boolean z) {
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.setShareOnFaceBook(z);
        }
    }

    public void setShareOnTwitter(boolean z) {
        if (this.currentBehanceProject != null) {
            this.currentBehanceProject.setShareOnTwitter(z);
        }
    }

    public boolean getShareOnFaceBook() {
        if (this.currentBehanceProject != null) {
            return this.currentBehanceProject.getShareOnFaceBook();
        }
        return false;
    }

    public boolean getShareOnTwitter() {
        if (this.currentBehanceProject != null) {
            return this.currentBehanceProject.getShareOnTwitter();
        }
        return false;
    }

    public Class<? extends Activity> getNotificationHandlerActivityClass() {
        return this.notificationHandlerActivityClass;
    }

    public void setNotificationHandlerActivityClass(Class<? extends Activity> cls) {
        this.notificationHandlerActivityClass = cls;
    }

    public boolean isHideTwitterSharing() {
        return this.hideTwitterSharing;
    }

    public void setHideTwitterSharing(boolean z) {
        this.hideTwitterSharing = z;
    }

    public boolean isHideFacebookSharing() {
        return this.hideFacebookSharing;
    }

    public void setHideFacebookSharing(boolean z) {
        this.hideFacebookSharing = z;
    }

    public void rotateImage(ImageModule imageModule) {
        imageModule.rotateImage();
        Iterator<ProjectModuleChangeListener> it = this.projectModuleChangeListeners.iterator();
        while (it.hasNext()) {
            it.next().rotateImage(imageModule);
        }
    }
}
