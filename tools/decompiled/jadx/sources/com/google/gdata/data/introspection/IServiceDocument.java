package com.google.gdata.data.introspection;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface IServiceDocument {
    IWorkspace addWorkspace(String str);

    List<? extends IWorkspace> getWorkspaces();
}
