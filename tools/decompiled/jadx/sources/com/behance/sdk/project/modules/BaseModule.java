package com.behance.sdk.project.modules;

import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class BaseModule implements ProjectModule {
    private static final long serialVersionUID = 662818794505128574L;

    @Override // com.behance.sdk.project.modules.ProjectModule
    public ProjectModuleTypes getType() {
        return null;
    }

    @Override // com.behance.sdk.project.modules.ProjectModule
    public void clear() {
    }

    @Override // com.behance.sdk.project.modules.ProjectModule
    public void deleteFromFileSystem() {
    }

    @Override // com.behance.sdk.project.modules.ProjectModule
    public File getFile() {
        return null;
    }
}
