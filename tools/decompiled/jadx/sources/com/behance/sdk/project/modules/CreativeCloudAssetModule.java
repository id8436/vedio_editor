package com.behance.sdk.project.modules;

import com.behance.sdk.util.BehanceSDKUtils;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class CreativeCloudAssetModule extends ImageModule {
    private static final long serialVersionUID = 7358646255323338637L;

    public CreativeCloudAssetModule(long j, String str) {
        super(j, str);
    }

    public CreativeCloudAssetModule(File file) {
        super(file);
    }

    @Override // com.behance.sdk.project.modules.ImageModule, com.behance.sdk.project.modules.BaseModule, com.behance.sdk.project.modules.ProjectModule
    public ProjectModuleTypes getType() {
        return ProjectModuleTypes.CREATIVECLOUD_ASSET;
    }

    @Override // com.behance.sdk.project.modules.BaseModule, com.behance.sdk.project.modules.ProjectModule
    public void deleteFromFileSystem() {
        BehanceSDKUtils.deleteRecursive(getFile());
    }
}
