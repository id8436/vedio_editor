package com.behance.sdk;

import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.project.modules.ImageModule;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKPublishProjectOptions extends BehanceSDKAbstractPublishOptions {
    private boolean ccAssetBrowserDisabled = false;
    private List<BehanceSDKCreativeFieldDTO> creativeFieldDTOs;
    private boolean projectContainsAdultContent;
    private BehanceSDKCopyrightOption projectCopyrightSettings;
    private String projectDescription;
    private List<ImageModule> projectImageModules;
    private String projectTags;
    private String projectTitle;

    public BehanceSDKPublishProjectOptions(List<File> list) {
        setProjectImageModules(list);
    }

    public List<ImageModule> getProjectImageModules() {
        return this.projectImageModules;
    }

    private void setProjectImageModules(List<File> list) {
        if (list != null && !list.isEmpty()) {
            this.projectImageModules = new ArrayList(list.size());
            Iterator<File> it = list.iterator();
            while (it.hasNext()) {
                this.projectImageModules.add(new ImageModule(it.next()));
            }
        }
    }

    public String getProjectTitle() {
        return this.projectTitle;
    }

    public void setProjectTitle(String str) {
        this.projectTitle = str;
    }

    public String getProjectDescription() {
        return this.projectDescription;
    }

    public void setProjectDescription(String str) {
        this.projectDescription = str;
    }

    public String getProjectTags() {
        return this.projectTags;
    }

    public void setProjectTags(String str) {
        this.projectTags = str;
    }

    public BehanceSDKCopyrightOption getProjectCopyrightSettings() {
        return this.projectCopyrightSettings;
    }

    public void setProjectCopyrightSettings(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        this.projectCopyrightSettings = behanceSDKCopyrightOption;
    }

    public boolean isProjectContainsAdultContent() {
        return this.projectContainsAdultContent;
    }

    public void setProjectContainsAdultContent(boolean z) {
        this.projectContainsAdultContent = z;
    }

    public void setCCAssetBrowserDisabled(Boolean bool) {
        this.ccAssetBrowserDisabled = bool.booleanValue();
    }

    public boolean isCCAssetBrowserDisabled() {
        return this.ccAssetBrowserDisabled;
    }

    public List<BehanceSDKCreativeFieldDTO> getCreativeFieldDTOs() {
        return this.creativeFieldDTOs;
    }

    public void setCreativeFieldDTOs(List<BehanceSDKCreativeFieldDTO> list) {
        this.creativeFieldDTOs = list;
    }
}
