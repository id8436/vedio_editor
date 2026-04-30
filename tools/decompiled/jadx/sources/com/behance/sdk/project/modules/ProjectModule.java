package com.behance.sdk.project.modules;

import java.io.File;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public interface ProjectModule extends Serializable {
    void clear();

    void deleteFromFileSystem();

    File getFile();

    ProjectModuleTypes getType();
}
