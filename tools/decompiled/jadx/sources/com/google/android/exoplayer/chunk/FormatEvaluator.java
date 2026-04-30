package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.upstream.BandwidthMeter;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public interface FormatEvaluator {
    public static final int TRIGGER_ADAPTIVE = 2;
    public static final int TRIGGER_CUSTOM_BASE = 10000;
    public static final int TRIGGER_INITIAL = 0;
    public static final int TRIGGER_MANUAL = 1;

    public final class Evaluation {
        public Format format;
        public int queueSize;
        public int trigger = 0;
    }

    void disable();

    void enable();

    void evaluate(List<? extends MediaChunk> list, long j, Format[] formatArr, Evaluation evaluation);

    public class FixedEvaluator implements FormatEvaluator {
        @Override // com.google.android.exoplayer.chunk.FormatEvaluator
        public void enable() {
        }

        @Override // com.google.android.exoplayer.chunk.FormatEvaluator
        public void disable() {
        }

        @Override // com.google.android.exoplayer.chunk.FormatEvaluator
        public void evaluate(List<? extends MediaChunk> list, long j, Format[] formatArr, Evaluation evaluation) {
            evaluation.format = formatArr[0];
        }
    }

    public class RandomEvaluator implements FormatEvaluator {
        private final Random random = new Random();

        @Override // com.google.android.exoplayer.chunk.FormatEvaluator
        public void enable() {
        }

        @Override // com.google.android.exoplayer.chunk.FormatEvaluator
        public void disable() {
        }

        @Override // com.google.android.exoplayer.chunk.FormatEvaluator
        public void evaluate(List<? extends MediaChunk> list, long j, Format[] formatArr, Evaluation evaluation) {
            Format format = formatArr[this.random.nextInt(formatArr.length)];
            if (evaluation.format != null && !evaluation.format.id.equals(format.id)) {
                evaluation.trigger = 2;
            }
            evaluation.format = format;
        }
    }

    public class AdaptiveEvaluator implements FormatEvaluator {
        public static final float DEFAULT_BANDWIDTH_FRACTION = 0.75f;
        public static final int DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS = 25000;
        public static final int DEFAULT_MAX_INITIAL_BITRATE = 800000;
        public static final int DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS = 10000;
        public static final int DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS = 25000;
        private final float bandwidthFraction;
        private final BandwidthMeter bandwidthMeter;
        private final long maxDurationForQualityDecreaseUs;
        private final int maxInitialBitrate;
        private final long minDurationForQualityIncreaseUs;
        private final long minDurationToRetainAfterDiscardUs;

        public AdaptiveEvaluator(BandwidthMeter bandwidthMeter) {
            this(bandwidthMeter, DEFAULT_MAX_INITIAL_BITRATE, 10000, 25000, 25000, 0.75f);
        }

        public AdaptiveEvaluator(BandwidthMeter bandwidthMeter, int i, int i2, int i3, int i4, float f2) {
            this.bandwidthMeter = bandwidthMeter;
            this.maxInitialBitrate = i;
            this.minDurationForQualityIncreaseUs = ((long) i2) * 1000;
            this.maxDurationForQualityDecreaseUs = ((long) i3) * 1000;
            this.minDurationToRetainAfterDiscardUs = ((long) i4) * 1000;
            this.bandwidthFraction = f2;
        }

        @Override // com.google.android.exoplayer.chunk.FormatEvaluator
        public void enable() {
        }

        @Override // com.google.android.exoplayer.chunk.FormatEvaluator
        public void disable() {
        }

        /* JADX WARN: Removed duplicated region for block: B:50:0x00a1  */
        @Override // com.google.android.exoplayer.chunk.FormatEvaluator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void evaluate(java.util.List<? extends com.google.android.exoplayer.chunk.MediaChunk> r11, long r12, com.google.android.exoplayer.chunk.Format[] r14, com.google.android.exoplayer.chunk.FormatEvaluator.Evaluation r15) {
            /*
                r10 = this;
                r5 = 0
                r2 = 1
                boolean r0 = r11.isEmpty()
                if (r0 == 0) goto L3f
                r0 = 0
            La:
                com.google.android.exoplayer.chunk.Format r3 = r15.format
                com.google.android.exoplayer.upstream.BandwidthMeter r4 = r10.bandwidthMeter
                long r6 = r4.getBitrateEstimate()
                com.google.android.exoplayer.chunk.Format r4 = r10.determineIdealFormat(r14, r6)
                if (r4 == 0) goto L4f
                if (r3 == 0) goto L4f
                int r6 = r4.bitrate
                int r7 = r3.bitrate
                if (r6 <= r7) goto L4f
                r6 = r2
            L21:
                if (r4 == 0) goto L2c
                if (r3 == 0) goto L2c
                int r7 = r4.bitrate
                int r8 = r3.bitrate
                if (r7 >= r8) goto L2c
                r5 = r2
            L2c:
                if (r6 == 0) goto L95
                long r6 = r10.minDurationForQualityIncreaseUs
                int r5 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                if (r5 >= 0) goto L51
                r0 = r3
            L35:
                if (r3 == 0) goto L3c
                if (r0 == r3) goto L3c
                r1 = 2
                r15.trigger = r1
            L3c:
                r15.format = r0
                return
            L3f:
                int r0 = r11.size()
                int r0 = r0 + (-1)
                java.lang.Object r0 = r11.get(r0)
                com.google.android.exoplayer.chunk.MediaChunk r0 = (com.google.android.exoplayer.chunk.MediaChunk) r0
                long r0 = r0.endTimeUs
                long r0 = r0 - r12
                goto La
            L4f:
                r6 = r5
                goto L21
            L51:
                long r6 = r10.minDurationToRetainAfterDiscardUs
                int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                if (r0 < 0) goto La1
                r1 = r2
            L58:
                int r0 = r11.size()
                if (r1 >= r0) goto L8f
                java.lang.Object r0 = r11.get(r1)
                com.google.android.exoplayer.chunk.MediaChunk r0 = (com.google.android.exoplayer.chunk.MediaChunk) r0
                long r6 = r0.startTimeUs
                long r6 = r6 - r12
                long r8 = r10.minDurationToRetainAfterDiscardUs
                int r2 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r2 < 0) goto L91
                com.google.android.exoplayer.chunk.Format r2 = r0.format
                int r2 = r2.bitrate
                int r5 = r4.bitrate
                if (r2 >= r5) goto L91
                com.google.android.exoplayer.chunk.Format r2 = r0.format
                int r2 = r2.height
                int r5 = r4.height
                if (r2 >= r5) goto L91
                com.google.android.exoplayer.chunk.Format r2 = r0.format
                int r2 = r2.height
                r5 = 720(0x2d0, float:1.009E-42)
                if (r2 >= r5) goto L91
                com.google.android.exoplayer.chunk.Format r0 = r0.format
                int r0 = r0.width
                r2 = 1280(0x500, float:1.794E-42)
                if (r0 >= r2) goto L91
                r15.queueSize = r1
            L8f:
                r0 = r4
                goto L35
            L91:
                int r0 = r1 + 1
                r1 = r0
                goto L58
            L95:
                if (r5 == 0) goto La1
                if (r3 == 0) goto La1
                long r6 = r10.maxDurationForQualityDecreaseUs
                int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                if (r0 < 0) goto La1
                r0 = r3
                goto L35
            La1:
                r0 = r4
                goto L35
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator.evaluate(java.util.List, long, com.google.android.exoplayer.chunk.Format[], com.google.android.exoplayer.chunk.FormatEvaluator$Evaluation):void");
        }

        protected Format determineIdealFormat(Format[] formatArr, long j) {
            long jComputeEffectiveBitrateEstimate = computeEffectiveBitrateEstimate(j);
            for (Format format : formatArr) {
                if (format.bitrate <= jComputeEffectiveBitrateEstimate) {
                    return format;
                }
            }
            return formatArr[formatArr.length - 1];
        }

        protected long computeEffectiveBitrateEstimate(long j) {
            return j == -1 ? this.maxInitialBitrate : (long) (j * this.bandwidthFraction);
        }
    }
}
