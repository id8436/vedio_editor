package com.adobe.premiereclip.editor;

import android.content.Context;
import android.util.Log;
import com.adobe.premiereclip.automode.AutoModeAudio;
import com.adobe.premiereclip.project.sequence.AudioClip;
import com.adobe.premiereclip.project.sequence.AudioTrack;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.adobe.premiereclip.util.Utilities;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public class SnapToBeatController implements AudioClip.ImpactDataListener {
    private static final float DEFAULT_END_SYNC_POINT_VALUE = 3.5f;
    private static final float DEFAULT_TRANSITION_SYNC_POINT_VALUE = 0.3f;
    private static final float FILTER_THRESHOLD = 0.1f;
    private static final int MAX_BEAT_BUCKETS = 25;
    private static final int MIN_BEAT_BUCKETS = 3;
    private static final float MODERATE_BPM = 156.0f;
    public static final int SAMPLE_SIZE = 1000;
    private static final String TAG = "SnapToBeatController";
    public static final long TIME_SCALE = 30000;
    private AudioTrack audioTrack;
    private Context context;
    private long mostCommonOffsetInterval;
    private SnapToBeatListener snapToBeatListener;
    private ArrayList<SyncPoint> syncPoints;
    private HashMap<Long, SyncPoint> alwaysPreservedEndPointFromAutoConversion = new HashMap<>();
    private ArrayList<Long> exportedTransitionTimes = new ArrayList<>();
    private boolean enabled = false;

    public interface SnapToBeatListener {
        void onReady();
    }

    public class SyncPoint implements Comparable<SyncPoint> {
        public float intensity;
        public long time;

        public SyncPoint(long j, float f2) {
            this.time = j;
            this.intensity = f2;
        }

        @Override // java.lang.Comparable
        public int compareTo(SyncPoint syncPoint) {
            return (int) (this.time - syncPoint.time);
        }
    }

    public SnapToBeatController(Context context, AudioTrack audioTrack) {
        this.context = context;
        this.audioTrack = audioTrack;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isReady() {
        return this.audioTrack.getClips().size() > 0 && ((AudioClip) this.audioTrack.getClipAtIndex(0)).isImpactDataSet();
    }

    public boolean isFetchingData() {
        return this.audioTrack.getClips().size() > 0 && ((AudioClip) this.audioTrack.getClipAtIndex(0)).isFetchingImpactData();
    }

    public boolean isDetectingData() {
        return this.audioTrack.getClips().size() > 0 && ((AudioClip) this.audioTrack.getClipAtIndex(0)).isDetectingImpactData();
    }

    public void enable() {
        if (this.audioTrack.getClips().size() > 0) {
            AudioClip audioClip = (AudioClip) this.audioTrack.getClipAtIndex(0);
            if (audioClip.isImpactDataSet()) {
                if (this.syncPoints == null) {
                    onImpactDataAvailable(audioClip, audioClip.getImpactData(this.context, null));
                    this.enabled = true;
                } else if (!this.enabled && this.snapToBeatListener != null) {
                    this.enabled = true;
                    this.snapToBeatListener.onReady();
                }
            } else {
                audioClip.getImpactData(this.context, this);
                this.exportedTransitionTimes = null;
                this.alwaysPreservedEndPointFromAutoConversion.clear();
            }
        }
        this.enabled = true;
    }

    @Override // com.adobe.premiereclip.project.sequence.AudioClip.ImpactDataListener
    public void onImpactDataAvailable(AudioClip audioClip, float[] fArr) {
        float[] gravityData = new AutoModeAudio().getGravityData(fArr);
        Log.d(TAG, "gd size " + gravityData.length);
        generateSyncPoints(fArr[0], gravityData, true);
        if (this.snapToBeatListener != null) {
            this.snapToBeatListener.onReady();
        }
    }

    public void setTransitionTimes(ArrayList<Long> arrayList) {
        this.exportedTransitionTimes = arrayList;
        if (this.exportedTransitionTimes != null) {
            for (int i = 0; i < this.exportedTransitionTimes.size(); i++) {
                Log.d(TAG, "exported TT " + i + " " + this.exportedTransitionTimes.get(i));
            }
        }
    }

    public void setListener(SnapToBeatListener snapToBeatListener) {
        this.snapToBeatListener = snapToBeatListener;
    }

    public void clearListener() {
        this.snapToBeatListener = null;
        if (this.audioTrack.getClips().size() > 0) {
            ((AudioClip) this.audioTrack.getClipAtIndex(0)).clearListener();
        }
    }

    public void disable() {
        this.enabled = false;
    }

    private void generateSyncPoints(float f2, float[] fArr, boolean z) {
        this.syncPoints = new ArrayList<>();
        long length = (long) ((fArr.length - 1) * f2 * 30000);
        if (z) {
            length = frame_align(length);
        }
        for (int i = 1; i < fArr.length - 1; i++) {
            if (fArr[i] >= FILTER_THRESHOLD) {
                long jFrame_align = (long) (i * f2 * 30000);
                Log.d(TAG, "sync point at " + (i * f2) + " converted to " + jFrame_align + " to " + frame_align(jFrame_align));
                if (z) {
                    jFrame_align = frame_align(jFrame_align);
                }
                this.syncPoints.add(new SyncPoint(jFrame_align, fArr[i]));
            }
        }
        this.syncPoints.add(new SyncPoint(length, DEFAULT_END_SYNC_POINT_VALUE));
        Log.d(TAG, "sync points size " + this.syncPoints.size());
        this.mostCommonOffsetInterval = 0L;
    }

    private void getSyncPointsForClip(ArrayList<SyncPoint> arrayList, long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        boolean z;
        long j8;
        long j9;
        long j10;
        long j11;
        long j12;
        long jMin;
        long j13;
        long jMin2;
        long j14;
        long j15;
        long j16;
        long j17;
        long j18;
        if (this.syncPoints != null) {
            TreeSet<SyncPoint> treeSet = new TreeSet();
            int bucketCount = getBucketCount(j4, j6, j7);
            long j19 = (j7 - j6) / ((long) bucketCount);
            if (this.mostCommonOffsetInterval <= 0) {
                float[] impactData = ((AudioClip) this.audioTrack.getClips().get(0)).getImpactData(this.context, null);
                if (impactData != null) {
                    this.mostCommonOffsetInterval = (long) (1800000.0f / new AutoModeAudio().getPaceInBPM(impactData));
                }
                if (this.mostCommonOffsetInterval <= 0) {
                    this.mostCommonOffsetInterval = 15000L;
                }
            }
            Log.d(TAG, "adding mostCommonOffsetInterval = " + this.mostCommonOffsetInterval);
            long j20 = j + j3;
            if (j5 == 0) {
                z = false;
                j8 = j20;
            } else {
                if (j5 >= j2) {
                    long j21 = j20 - ((j5 / j2) * j2);
                    j5 %= j2;
                    j8 = j21;
                } else {
                    j8 = j20;
                }
                int iBinary_search = binary_search(this.syncPoints, j5);
                if (iBinary_search == -1) {
                    z = false;
                } else {
                    treeSet.add(new SyncPoint(this.syncPoints.get(iBinary_search).time - j8, this.syncPoints.get(iBinary_search).intensity));
                    z = true;
                }
                if (this.exportedTransitionTimes != null && this.exportedTransitionTimes.size() > 0 && this.exportedTransitionTimes.indexOf(Long.valueOf(j5)) != -1) {
                    long j22 = j5 - j8;
                    treeSet.add(new SyncPoint(j22, 0.3f));
                    syncPoint = null;
                    for (SyncPoint syncPoint : treeSet) {
                        if (syncPoint.time == j22) {
                            break;
                        }
                    }
                    if (syncPoint != null && syncPoint.time == j22) {
                        this.alwaysPreservedEndPointFromAutoConversion.put(Long.valueOf(j6), new SyncPoint(j5, syncPoint.intensity));
                        z = true;
                    }
                }
            }
            SyncPoint syncPoint2 = this.alwaysPreservedEndPointFromAutoConversion.get(Long.valueOf(j6));
            if (syncPoint2 != null) {
                long j23 = syncPoint2.time;
                if (j23 >= j2) {
                    j18 = j23 % j2;
                    j17 = j20 - ((j23 / j2) * j2);
                } else {
                    j17 = j8;
                    j18 = j23;
                }
                treeSet.add(new SyncPoint(j18 - j17, syncPoint2.intensity));
            }
            if (j7 >= j2) {
                j9 = j7 % j2;
                j10 = j20 - ((j7 / j2) * j2);
            } else {
                j9 = j7;
                j10 = j20;
            }
            if (!z) {
                int iLower_bound = lower_bound(this.syncPoints, j9);
                long j24 = iLower_bound != -1 ? this.syncPoints.get(iLower_bound).time : j9;
                if (j24 != 0) {
                    while (true) {
                        if (j24 < j9 || iLower_bound == -1) {
                            break;
                        }
                        if (iLower_bound != 0) {
                            iLower_bound--;
                        }
                        if (iLower_bound != -1) {
                            long j25 = this.syncPoints.get(iLower_bound).time - j10;
                            if (j25 < j7 && j25 >= j6) {
                                treeSet.add(new SyncPoint(j25, this.syncPoints.get(iLower_bound).intensity));
                                break;
                            }
                            j24 = j25 + j10;
                        }
                        if (iLower_bound == 0) {
                            break;
                        }
                    }
                }
            }
            if (j6 < j2) {
                j11 = 0;
                j12 = j20;
                jMin = j7;
            } else {
                long j26 = (j6 / j2) * j2;
                j12 = j20 - j26;
                j6 %= j2;
                jMin = Math.min(j2, j7);
                j11 = j26;
            }
            int i = 0;
            long j27 = j12;
            long j28 = jMin;
            while (i < bucketCount) {
                long j29 = (((((long) i) * j19) / this.mostCommonOffsetInterval) * this.mostCommonOffsetInterval) + j6;
                if (j29 >= j2) {
                    j13 = j20 - (((j11 + j29) / j2) * j2);
                    jMin2 = Math.min(j2, j7);
                    j14 = j29 % j2;
                } else {
                    j13 = j27;
                    jMin2 = j28;
                    j14 = j29;
                }
                int iLower_bound2 = lower_bound(this.syncPoints, j14);
                if (iLower_bound2 == -1) {
                    j15 = -1;
                } else {
                    j15 = this.syncPoints.get(iLower_bound2).time;
                }
                int iUpper_bound = upper_bound(this.syncPoints, j14);
                if (iUpper_bound == -1) {
                    j16 = -1;
                } else {
                    j16 = this.syncPoints.get(iUpper_bound).time;
                }
                if (j15 != -1 || j16 != -1) {
                    if (j16 == -1 || Math.abs(j15 - j14) < Math.abs(j16 - j14)) {
                        if (j15 < jMin2) {
                            treeSet.add(new SyncPoint(j15 - j13, this.syncPoints.get(iLower_bound2).intensity));
                        }
                    } else if (j16 < jMin2) {
                        treeSet.add(new SyncPoint(j16 - j13, this.syncPoints.get(iUpper_bound).intensity));
                    }
                }
                i++;
                j28 = jMin2;
                j27 = j13;
            }
            arrayList.addAll(treeSet);
            for (SyncPoint syncPoint3 : arrayList) {
                long jConvertTimescale = Utilities.convertTimescale(syncPoint3.time, 30000L, 1000000L, 1000L);
                Log.d(TAG, "filtered sp = " + syncPoint3.time + "(" + jConvertTimescale + ") " + syncPoint3.intensity);
                syncPoint3.time = jConvertTimescale;
            }
        }
    }

    private int getBucketCount(long j, long j2, long j3) {
        return Math.max(3, (int) (25.0f * ((j3 - j2) / j)));
    }

    private double calculateHistogramMeanOfMode(ArrayList<Long> arrayList) {
        double dLongValue;
        boolean z;
        int i;
        double size = 0.0d;
        Collections.sort(arrayList);
        int size2 = arrayList.size();
        int i2 = size2 / 5;
        double dLongValue2 = arrayList.get(arrayList.size() - 1).longValue();
        double dLongValue3 = arrayList.get(0).longValue();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        boolean z2 = true;
        while (z2) {
            arrayList2.clear();
            arrayList2.ensureCapacity(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                arrayList2.add(0L);
            }
            double d2 = (dLongValue2 - dLongValue3) / ((double) i2);
            arrayList3.clear();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int i6 = i4;
                if (i6 >= arrayList2.size()) {
                    break;
                }
                int i7 = 0;
                while (true) {
                    int i8 = i7;
                    if (i8 < arrayList.size()) {
                        if (i5 == 0) {
                            if (arrayList.get(i8).longValue() >= (((double) i5) * d2) + dLongValue3 && arrayList.get(i8).longValue() <= (((double) (i5 + 1)) * d2) + dLongValue3) {
                                arrayList2.set(i6, Long.valueOf(((Long) arrayList2.get(i6)).longValue() + 1));
                            }
                        } else if (arrayList.get(i8).longValue() > (((double) i5) * d2) + dLongValue3 && arrayList.get(i8).longValue() <= (((double) (i5 + 1)) * d2) + dLongValue3) {
                            arrayList2.set(i6, Long.valueOf(((Long) arrayList2.get(i6)).longValue() + 1));
                        }
                        i7 = i8 + 1;
                    }
                }
                i5++;
                i4 = i6 + 1;
            }
            long jLongValue = ((Long) arrayList2.get(0)).longValue();
            int i9 = 1;
            int i10 = 0;
            while (true) {
                int i11 = i9;
                if (i11 >= arrayList2.size()) {
                    break;
                }
                if (jLongValue < ((Long) arrayList2.get(i11)).longValue()) {
                    jLongValue = ((Long) arrayList2.get(i11)).longValue();
                    i10 = i11;
                }
                i9 = i11 + 1;
            }
            int iLongValue = 0;
            for (int i12 = 0; i12 != i10; i12++) {
                iLongValue = (int) (((long) iLongValue) + ((Long) arrayList2.get(i12)).longValue());
            }
            for (int i13 = iLongValue; i13 < ((long) iLongValue) + jLongValue; i13++) {
                if (arrayList.get(i13).longValue() != 0) {
                    arrayList3.add(arrayList.get(i13));
                }
            }
            if (arrayList3.size() >= 2) {
                dLongValue = ((Long) arrayList3.get(arrayList3.size() - 1)).longValue() / ((Long) arrayList3.get(0)).longValue();
            } else {
                dLongValue = 1.0d;
            }
            if (dLongValue < 1.15d || i2 > size2) {
                double dLongValue4 = size;
                for (int i14 = 0; i14 < arrayList3.size(); i14++) {
                    dLongValue4 += ((Long) arrayList3.get(i14)).longValue();
                }
                size = dLongValue4 / ((double) arrayList3.size());
                z = false;
                i = i2;
            } else {
                i = i2 * 2;
                z = z2;
            }
            z2 = z;
            i2 = i;
        }
        return size;
    }

    private void findNeighbors(int i, ArrayList<Long> arrayList) {
        for (int i2 = 1; i2 <= i; i2++) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < this.syncPoints.size() - i2) {
                    arrayList.add(Long.valueOf(this.syncPoints.get(i4 + i2).time - this.syncPoints.get(i4).time));
                    i3 = i4 + 1;
                }
            }
        }
        Collections.sort(arrayList);
    }

    public ArrayList<SyncPoint> getAllSyncPoints() {
        if (!isReady()) {
            return null;
        }
        if (this.syncPoints == null) {
            AutoModeAudio autoModeAudio = new AutoModeAudio();
            float[] impactData = ((AudioClip) this.audioTrack.getClips().get(0)).getImpactData(this.context, null);
            generateSyncPoints(impactData[0], autoModeAudio.getGravityData(impactData), true);
        }
        return this.syncPoints;
    }

    public ArrayList<SyncPoint> getSyncPointsForClip(int i, Sequence sequence, boolean z, boolean z2) {
        long jConvertTimescale;
        if (this.audioTrack.getClips().size() > 0) {
            AudioClip audioClip = (AudioClip) this.audioTrack.getClipAtIndex(0);
            if (audioClip.isImpactDataSet()) {
                Clip clip = sequence.getClips().get(i);
                ArrayList<SyncPoint> arrayList = new ArrayList<>();
                long jConvertTimescale2 = Utilities.convertTimescale(clip.getStartTimeUsWithSpeed(), 1000000L, 30000L, 1000L);
                long jConvertTimescale3 = Utilities.convertTimescale(sequence.sequenceStartTimeOfClip(i), 1000000L, 30000L, 1000L);
                long jConvertTimescale4 = Utilities.convertTimescale(audioClip.getStartTimeUs(), 1000000L, 30000L, 1000L);
                long jConvertTimescale5 = Utilities.convertTimescale(audioClip.getAssetReference().getDurationUs(), 1000000L, 30000L, 1000L);
                long j = jConvertTimescale3 - jConvertTimescale2;
                long jConvertTimescale6 = Utilities.convertTimescale((long) ((clip.getAssetReference().getDurationUs() / clip.getSpeed()) + 0.5f), 1000000L, 30000L, 1000L);
                long j2 = z ? j : 0L;
                if (!z2) {
                    jConvertTimescale = 0;
                } else {
                    jConvertTimescale = Utilities.convertTimescale(clip.getDurationUsWithSpeed(), 1000000L, 30000L, 1000L) + jConvertTimescale3 + jConvertTimescale4;
                }
                long j3 = jConvertTimescale3 + jConvertTimescale4;
                long j4 = (j3 + jConvertTimescale6) - jConvertTimescale2;
                Log.d(TAG, "gSP o=" + z + " pE=" + z2 + " aO=" + jConvertTimescale4 + " aD=" + jConvertTimescale5 + " vO=" + j2 + " vD=" + jConvertTimescale6 + " vET=" + jConvertTimescale + " min=" + j3 + " max=" + j4);
                getSyncPointsForClip(arrayList, jConvertTimescale4, jConvertTimescale5, j2, jConvertTimescale6, jConvertTimescale, j3, j4);
                return arrayList;
            }
        }
        return null;
    }

    public static int findClosestSyncPoint(ArrayList<SyncPoint> arrayList, long j) {
        long j2;
        int iLower_bound = lower_bound(arrayList, j);
        if (iLower_bound == -1) {
            Log.w(TAG, "Couldn't find lower bound for time " + j);
            j2 = Long.MAX_VALUE;
        } else {
            j2 = arrayList.get(iLower_bound).time;
        }
        if (j2 >= j) {
            long j3 = Long.MIN_VALUE;
            if (iLower_bound > 0) {
                j3 = arrayList.get(iLower_bound - 1).time;
            } else if (iLower_bound == -1) {
                j3 = arrayList.get(arrayList.size() - 1).time;
            }
            return j - j3 < j2 - j ? iLower_bound - 1 : iLower_bound;
        }
        return arrayList.size() - 1;
    }

    private long frame_align(long j) {
        return (j / 1000) * 1000;
    }

    public static int binary_search(ArrayList<SyncPoint> arrayList, long j) {
        int size = arrayList.size() - 1;
        int i = 0;
        while (i <= size) {
            int i2 = (size + i) / 2;
            if (arrayList.get(i2).time < j) {
                i = i2 + 1;
            } else {
                if (arrayList.get(i2).time <= j) {
                    return i2;
                }
                size = i2 - 1;
            }
        }
        return -1;
    }

    public static int lower_bound(ArrayList<SyncPoint> arrayList, long j) {
        int i = 0;
        int size = arrayList.size() - 1;
        while (i < size) {
            int i2 = (size + i) / 2;
            if (arrayList.get(i2).time < j) {
                i = i2 + 1;
            } else {
                size = i2;
            }
        }
        if (arrayList.get(i).time >= j) {
            return i;
        }
        return -1;
    }

    private int upper_bound(ArrayList<SyncPoint> arrayList, long j) {
        int i = 0;
        int size = arrayList.size() - 1;
        while (i < size) {
            int i2 = (size + i) / 2;
            if (arrayList.get(i2).time <= j) {
                i = i2 + 1;
            } else {
                size = i2;
            }
        }
        if (arrayList.get(i).time > j) {
            return i;
        }
        return -1;
    }
}
