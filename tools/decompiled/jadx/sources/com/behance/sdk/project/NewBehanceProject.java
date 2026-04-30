package com.behance.sdk.project;

import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.project.modules.CoverImage;
import com.behance.sdk.project.modules.EmbedModule;
import com.behance.sdk.project.modules.ImageModule;
import com.behance.sdk.project.modules.ProjectModule;
import com.behance.sdk.project.modules.ProjectModuleTypes;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class NewBehanceProject implements Serializable {
    private static final int CONTAINS_ADULT_CONTENT = 1;
    private static final int NO_ADULT_CONTENT = 0;
    private static final int NUMBER_OF_PROJECT_MODULES = 4;
    private static final long serialVersionUID = -1163691639211926852L;
    private CoverImage cover;
    private String description;
    private List<BehanceSDKCreativeFieldDTO> fields;
    private String projectID;
    private String projectURL;
    private boolean shareOnFaceBook;
    private boolean shareOnTwitter;
    private String tags;
    private String title;
    private int embedModuleCount = 0;
    private BehanceSDKCopyrightOption copyRight = BehanceSDKCopyrightOption.getDefaultValue();
    private int containAdultContent = 0;
    private List<ProjectModule> projectModules = new ArrayList(4);

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public List<BehanceSDKCreativeFieldDTO> getFields() {
        return this.fields;
    }

    public void setFields(List<BehanceSDKCreativeFieldDTO> list) {
        this.fields = list;
    }

    public String getTags() {
        return this.tags;
    }

    public void setTags(String str) {
        this.tags = str;
    }

    public CoverImage getCoverImage() {
        return this.cover;
    }

    public void setCoverImage(CoverImage coverImage) {
        this.cover = coverImage;
    }

    public List<ProjectModule> getProjectModules() {
        return this.projectModules;
    }

    public int getNumberOfProjectModules() {
        return this.projectModules.size();
    }

    public void addProjectModules(List<? extends ProjectModule> list) {
        if (list != null && !list.isEmpty()) {
            this.projectModules.addAll(list);
        }
    }

    public void addProjectModule(ProjectModule projectModule) {
        if (!this.projectModules.contains(projectModule)) {
            this.projectModules.add(projectModule);
            if (projectModule.getType() == ProjectModuleTypes.EMBED) {
                int i = this.embedModuleCount + 1;
                this.embedModuleCount = i;
                ((EmbedModule) projectModule).setOrder(i);
            }
        }
    }

    public void removeProjectModules(ProjectModule projectModule) {
        if (this.projectModules != null) {
            this.projectModules.remove(projectModule);
        }
    }

    public List<ImageModule> getImageModules() {
        ArrayList arrayList = new ArrayList();
        for (ProjectModule projectModule : this.projectModules) {
            ProjectModuleTypes type = projectModule.getType();
            if (type == ProjectModuleTypes.IMAGE || type == ProjectModuleTypes.CREATIVECLOUD_ASSET) {
                arrayList.add((ImageModule) projectModule);
            }
        }
        return arrayList;
    }

    public boolean isEmpty() {
        return getNumberOfProjectModules() == 0;
    }

    public void reorderSelectedModules(int i, int i2) {
        this.projectModules.add(i2, this.projectModules.remove(i));
    }

    public void clear() {
        if (this.cover != null) {
            this.cover.remove();
        }
        Iterator<ProjectModule> it = this.projectModules.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    public boolean isProjectContainsAdultContent() {
        return 1 == this.containAdultContent;
    }

    public int containsAdultContent() {
        return this.containAdultContent;
    }

    public void markProjectForAdultContent(boolean z) {
        if (z) {
            this.containAdultContent = 1;
        } else {
            this.containAdultContent = 0;
        }
    }

    public BehanceSDKCopyrightOption getCopyRight() {
        return this.copyRight;
    }

    public void setCopyRight(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        this.copyRight = behanceSDKCopyrightOption;
    }

    public void addImagesToProject(List<? extends ImageModule> list) {
        for (ImageModule imageModule : list) {
            if (!this.projectModules.contains(imageModule)) {
                addProjectModule(imageModule);
            }
        }
    }

    public void removeAllImageModules() {
        this.projectModules.removeAll(getImageModules());
    }

    public String getURL() {
        return this.projectURL;
    }

    public void setURL(String str) {
        this.projectURL = str;
    }

    public void setProjectID(String str) {
        this.projectID = str;
    }

    public String getProjectID() {
        return this.projectID;
    }

    public void setShareOnFaceBook(boolean z) {
        this.shareOnFaceBook = z;
    }

    public boolean getShareOnFaceBook() {
        return this.shareOnFaceBook;
    }

    public void setShareOnTwitter(boolean z) {
        this.shareOnTwitter = z;
    }

    public boolean getShareOnTwitter() {
        return this.shareOnTwitter;
    }
}
