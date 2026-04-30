package com.behance.sdk.fragments.headless;

import android.graphics.Bitmap;
import android.support.v4.app.Fragment;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCropperHeadlessFragment extends Fragment {
    private Callbacks callbacks;
    private String filePath = null;
    private boolean cropInProgress = false;

    public interface Callbacks {
        void onSaveFailure(Exception exc);

        void onSaveSuccess(String str);
    }

    public BehanceSDKCropperHeadlessFragment() {
        setRetainInstance(true);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment$1] */
    public void saveBitmap(final Bitmap bitmap) {
        new Thread() { // from class: com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:50:0x008c A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment] */
            /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Exception] */
            /* JADX WARN: Type inference failed for: r0v19 */
            /* JADX WARN: Type inference failed for: r0v20 */
            /* JADX WARN: Type inference failed for: r0v21 */
            /* JADX WARN: Type inference failed for: r0v22 */
            /* JADX WARN: Type inference failed for: r0v4 */
            /* JADX WARN: Type inference failed for: r0v8 */
            /* JADX WARN: Type inference failed for: r0v9 */
            /* JADX WARN: Type inference failed for: r1v8, types: [com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment$Callbacks] */
            /* JADX WARN: Type inference failed for: r2v1 */
            /* JADX WARN: Type inference failed for: r2v3, types: [java.io.FileOutputStream] */
            /* JADX WARN: Type inference failed for: r2v6 */
            @Override // java.lang.Thread, java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() throws java.lang.Throwable {
                /*
                    r6 = this;
                    r1 = 0
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment r0 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.this
                    r2 = 1
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.access$002(r0, r2)
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment r0 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.this     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment r2 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.this     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    android.support.v4.app.FragmentActivity r2 = r2.getActivity()     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    java.io.File r2 = com.behance.sdk.util.BehanceSDKProjectEditorFileUtils.createImageFile(r2)     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    java.lang.String r2 = r2.getPath()     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.access$102(r0, r2)     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    java.io.File r2 = new java.io.File     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment r0 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.this     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    java.lang.String r0 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.access$100(r0)     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    r2.<init>(r0)     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    java.io.File r0 = r2.getParentFile()     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    r0.mkdirs()     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    r2.createNewFile()     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    r0.<init>(r2)     // Catch: java.lang.Exception -> L74 java.lang.Throwable -> L88
                    android.graphics.Bitmap r2 = r2     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La6
                    android.graphics.Bitmap$CompressFormat r3 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La6
                    r4 = 100
                    r2.compress(r3, r4, r0)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La6
                    if (r0 == 0) goto L42
                    r0.close()     // Catch: java.io.IOException -> L6c
                L42:
                    r0 = r1
                L43:
                    android.graphics.Bitmap r1 = r2
                    if (r1 == 0) goto L4c
                    android.graphics.Bitmap r1 = r2
                    r1.recycle()
                L4c:
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment r1 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.this
                    r2 = 0
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.access$002(r1, r2)
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment r1 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.this
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment$Callbacks r1 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.access$200(r1)
                    if (r1 == 0) goto L6b
                    if (r0 != 0) goto L97
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment r0 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.this
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment$Callbacks r0 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.access$200(r0)
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment r1 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.this
                    java.lang.String r1 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.access$100(r1)
                    r0.onSaveSuccess(r1)
                L6b:
                    return
                L6c:
                    r0 = move-exception
                    r0.printStackTrace()
                    if (r1 == 0) goto L43
                    r0 = r1
                    goto L43
                L74:
                    r2 = move-exception
                    r0 = r1
                L76:
                    r2.printStackTrace()     // Catch: java.lang.Throwable -> La1
                    if (r0 == 0) goto L7e
                    r0.close()     // Catch: java.io.IOException -> L80
                L7e:
                    r0 = r2
                    goto L43
                L80:
                    r0 = move-exception
                    r0.printStackTrace()
                    if (r2 == 0) goto L43
                    r0 = r2
                    goto L43
                L88:
                    r0 = move-exception
                    r2 = r1
                L8a:
                    if (r2 == 0) goto L8f
                    r2.close()     // Catch: java.io.IOException -> L90
                L8f:
                    throw r0
                L90:
                    r2 = move-exception
                    r2.printStackTrace()
                    if (r1 != 0) goto L8f
                    goto L8f
                L97:
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment r1 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.this
                    com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment$Callbacks r1 = com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.access$200(r1)
                    r1.onSaveFailure(r0)
                    goto L6b
                La1:
                    r2 = move-exception
                    r5 = r2
                    r2 = r0
                    r0 = r5
                    goto L8a
                La6:
                    r2 = move-exception
                    goto L76
                */
                throw new UnsupportedOperationException("Method not decompiled: com.behance.sdk.fragments.headless.BehanceSDKCropperHeadlessFragment.AnonymousClass1.run():void");
            }
        }.start();
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public boolean isCropInProgress() {
        return this.cropInProgress;
    }
}
