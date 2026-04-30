package com.behance.sdk.files;

import com.behance.sdk.project.modules.ImageModule;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class LocalImage extends ImageModule {
    private static final long serialVersionUID = 6529086872055283374L;

    public LocalImage(File file) {
        super(file);
    }

    public LocalImage(long j, String str) {
        super(j, str);
    }
}
