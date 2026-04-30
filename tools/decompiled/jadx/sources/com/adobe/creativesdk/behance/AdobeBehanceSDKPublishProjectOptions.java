package com.adobe.creativesdk.behance;

import android.support.annotation.NonNull;
import com.behance.sdk.BehanceSDKPublishProjectOptions;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.project.modules.ImageModule;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdobeBehanceSDKPublishProjectOptions extends AdobeBehanceSDKAbstractPublishOptions {
    private BehanceSDKPublishProjectOptions mBehanceSDKPublishProjectOptions;

    public AdobeBehanceSDKPublishProjectOptions(List<File> list) {
        super(new BehanceSDKPublishProjectOptions(list));
        this.mBehanceSDKPublishProjectOptions = (BehanceSDKPublishProjectOptions) getBehanceSDKPublishOptions();
    }

    protected BehanceSDKPublishProjectOptions getPublishProjectWorkflowOptions() {
        return this.mBehanceSDKPublishProjectOptions;
    }

    public List<File> getProjectImages() {
        ArrayList arrayList = new ArrayList();
        List<ImageModule> projectImageModules = this.mBehanceSDKPublishProjectOptions.getProjectImageModules();
        if (projectImageModules != null && !projectImageModules.isEmpty()) {
            Iterator<ImageModule> it = projectImageModules.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getFile());
            }
        }
        return arrayList;
    }

    public void setCCAssetBrowserDisabled(Boolean bool) {
        this.mBehanceSDKPublishProjectOptions.setCCAssetBrowserDisabled(bool);
    }

    public boolean getCCAssetBrowserDisabled() {
        return this.mBehanceSDKPublishProjectOptions.isCCAssetBrowserDisabled();
    }

    public String getProjectTitle() {
        return this.mBehanceSDKPublishProjectOptions.getProjectTitle();
    }

    public void setProjectTitle(@NonNull String str) {
        this.mBehanceSDKPublishProjectOptions.setProjectTitle(str);
    }

    public String getProjectDescription() {
        return this.mBehanceSDKPublishProjectOptions.getProjectDescription();
    }

    public void setProjectDescription(@NonNull String str) {
        this.mBehanceSDKPublishProjectOptions.setProjectDescription(str);
    }

    public String getProjectTags() {
        return this.mBehanceSDKPublishProjectOptions.getProjectTags();
    }

    public void setProjectTags(String str) {
        this.mBehanceSDKPublishProjectOptions.setProjectTags(str);
    }

    public boolean isProjectContainsAdultContent() {
        return this.mBehanceSDKPublishProjectOptions.isProjectContainsAdultContent();
    }

    public void setProjectContainsAdultContent(boolean z) {
        this.mBehanceSDKPublishProjectOptions.setProjectContainsAdultContent(z);
    }

    public List<BehanceSDKCreativeFieldDTO> getProjectFields() {
        return this.mBehanceSDKPublishProjectOptions.getCreativeFieldDTOs();
    }

    public void setProjectFields(List<BehanceSDKCreativeFieldDTO> list) {
        this.mBehanceSDKPublishProjectOptions.setCreativeFieldDTOs(list);
    }
}
