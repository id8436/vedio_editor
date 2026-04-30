package com.adobe.premiereclip.project.sequence;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.adobe.premiereclip.automode.AutoModeAudio;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.editor.ImpactDataStorage;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.JsonReader;
import com.adobe.premiereclip.util.JsonWriter;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class AudioClip extends Clip {
    private static final String TAG = "AudioClip";
    private boolean detectingImpactData;
    private boolean fetchingImpactData;
    private float[] impactData;
    private ImpactDataListener impactDataListener;
    public final boolean isInvalid;
    public final String songName;

    public interface ImpactDataListener {
        void onImpactDataAvailable(AudioClip audioClip, float[] fArr);
    }

    public AudioClip(String str, String str2, long j, long j2, String str3, boolean z, String str4, String str5, String str6) {
        this(str, constructAssetReference(str4, str2, j2, str5, str6), j, j2, str3, z);
    }

    public AudioClip(String str, AssetReference assetReference, long j, long j2, String str2, boolean z) {
        super(assetReference, j, j2, Clip.CLIP_TYPE.AUDIO, str2);
        this.songName = str;
        this.impactData = null;
        this.isInvalid = z;
        this.fetchingImpactData = false;
        this.detectingImpactData = false;
    }

    private static AssetReference constructAssetReference(String str, String str2, long j, String str3, String str4) {
        AssetReference assetReference = new AssetReference(str, Uri.parse(str2), str2, str3, str4, "audio");
        assetReference.setDurationUs(j);
        return assetReference;
    }

    public boolean isImpactDataSet() {
        return this.impactData != null;
    }

    public boolean isFetchingImpactData() {
        return this.fetchingImpactData;
    }

    public boolean isDetectingImpactData() {
        return this.detectingImpactData;
    }

    private void fetchImpactData(Context context) {
        if (this.impactData == null && !this.fetchingImpactData) {
            this.fetchingImpactData = true;
            ImpactDataStorage impactDataStorage = new ImpactDataStorage();
            impactDataStorage.readImpactDataFromJsonFile(this, new AnonymousClass1(context, impactDataStorage));
        }
    }

    /* JADX INFO: renamed from: com.adobe.premiereclip.project.sequence.AudioClip$1, reason: invalid class name */
    class AnonymousClass1 implements JsonReader.IDataReadHandler {
        final /* synthetic */ Context val$context;
        final /* synthetic */ ImpactDataStorage val$impactDataStorage;

        AnonymousClass1(Context context, ImpactDataStorage impactDataStorage) {
            this.val$context = context;
            this.val$impactDataStorage = impactDataStorage;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
        @Override // com.adobe.premiereclip.util.JsonReader.IDataReadHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onSuccess(float[] r9) {
            /*
                r8 = this;
                r1 = 0
                int r0 = r9.length
                if (r0 <= 0) goto L4f
                r2 = 1000000(0xf4240, double:4.940656E-318)
                r0 = r9[r1]
                int r4 = r9.length
                int r4 = r4 + (-1)
                float r4 = (float) r4
                float r0 = r0 * r4
                r4 = 1232348160(0x49742400, float:1000000.0)
                float r0 = r0 * r4
                long r4 = (long) r0
                com.adobe.premiereclip.project.sequence.AudioClip r0 = com.adobe.premiereclip.project.sequence.AudioClip.this
                com.adobe.premiereclip.project.sequence.AssetReference r0 = r0.getAssetReference()
                long r6 = r0.getDurationUs()
                long r4 = r6 - r4
                long r4 = java.lang.Math.abs(r4)
                int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
                if (r0 >= 0) goto L4f
                r0 = 1
            L28:
                if (r0 != 0) goto L36
                java.lang.Exception r0 = new java.lang.Exception
                java.lang.String r1 = "Invalid impact data read from .json file"
                r0.<init>(r1)
                r8.onError(r0)
            L35:
                return
            L36:
                com.adobe.premiereclip.project.sequence.AudioClip r0 = com.adobe.premiereclip.project.sequence.AudioClip.this
                com.adobe.premiereclip.project.sequence.AudioClip.access$000(r0, r9)
                java.lang.String r0 = "AudioClip"
                java.lang.String r2 = "impact data successfully read from json file"
                android.util.Log.d(r0, r2)
                com.adobe.premiereclip.project.sequence.AudioClip r0 = com.adobe.premiereclip.project.sequence.AudioClip.this
                com.adobe.premiereclip.dcx.DCXWriter.addImpactDataToAudioTrack(r0)
                com.adobe.premiereclip.project.sequence.AudioClip r0 = com.adobe.premiereclip.project.sequence.AudioClip.this
                com.adobe.premiereclip.project.sequence.AudioClip.access$102(r0, r1)
                goto L35
            L4f:
                r0 = r1
                goto L28
            */
            throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.project.sequence.AudioClip.AnonymousClass1.onSuccess(float[]):void");
        }

        @Override // com.adobe.premiereclip.util.JsonReader.IDataReadHandler
        public void onError(Exception exc) {
            AudioClip.this.detectingImpactData = true;
            new AutoModeAudio().getImpactData(this.val$context, AudioClip.this.getAssetReference().getAssetPath(), new AutoModeAudio.ImpactDataResults() { // from class: com.adobe.premiereclip.project.sequence.AudioClip.1.1
                @Override // com.adobe.premiereclip.automode.AutoModeAudio.ImpactDataResults
                public void onSuccess(final float[] fArr) {
                    AudioClip.this.detectingImpactData = false;
                    AnonymousClass1.this.val$impactDataStorage.writeImpactDataToJsonFile(fArr, AudioClip.this, new JsonWriter.IDataWriteHandler() { // from class: com.adobe.premiereclip.project.sequence.AudioClip.1.1.1
                        @Override // com.adobe.premiereclip.util.JsonWriter.IDataWriteHandler
                        public void onSuccess(File file) {
                            AudioClip.this.onImpactDataFetched(fArr);
                            Log.d("AudioClip", "impact data successfully written to json file");
                            DCXWriter.addImpactDataToAudioTrack(AudioClip.this);
                            AudioClip.this.fetchingImpactData = false;
                        }

                        @Override // com.adobe.premiereclip.util.JsonWriter.IDataWriteHandler
                        public void onError(Exception exc2) {
                            AudioClip.this.onImpactDataFetched(fArr);
                            AudioClip.this.fetchingImpactData = false;
                        }
                    });
                }

                @Override // com.adobe.premiereclip.automode.AutoModeAudio.ImpactDataResults
                public void onProgress(float f2) {
                    Log.d("AudioClip", "onProgress " + f2);
                }

                @Override // com.adobe.premiereclip.automode.AutoModeAudio.ImpactDataResults
                public void onError(String str) {
                    Log.w("AudioClip", str);
                    AudioClip.this.detectingImpactData = false;
                    AudioClip.this.fetchingImpactData = false;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onImpactDataFetched(float[] fArr) {
        Log.i("AudioClip", "onSuccess");
        this.impactData = fArr;
        if (this.impactDataListener != null) {
            this.impactDataListener.onImpactDataAvailable(this, this.impactData);
        }
    }

    public void setImpactData(float[] fArr) {
        if (fArr != null && fArr.length > 0) {
            this.impactData = fArr;
        }
    }

    public float[] getImpactData(Context context, ImpactDataListener impactDataListener) {
        if (this.impactData == null) {
            this.impactDataListener = impactDataListener;
            fetchImpactData(context);
        }
        return this.impactData;
    }

    public void clearListener() {
        this.impactDataListener = null;
    }
}
