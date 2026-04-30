package com.dropbox.core.v1;

/* JADX INFO: loaded from: classes2.dex */
public final class DbxWriteMode {
    private static final DbxWriteMode AddInstance = new DbxWriteMode("overwrite", "false");
    private static final DbxWriteMode ForceInstance = new DbxWriteMode("overwrite", "true");
    final String[] params;

    DbxWriteMode(String... strArr) {
        this.params = strArr;
    }

    public static DbxWriteMode add() {
        return AddInstance;
    }

    public static DbxWriteMode force() {
        return ForceInstance;
    }

    public static DbxWriteMode update(String str) {
        return new DbxWriteMode("parent_rev", str);
    }
}
