package com.google.android.exoplayer.dash.mpd;

import android.net.Uri;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.dash.DashSegmentIndex;
import com.google.android.exoplayer.dash.DashSingleSegmentIndex;
import com.google.android.exoplayer.dash.mpd.SegmentBase;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Representation {
    public final String contentId;
    public final Format format;
    private final RangedUri initializationUri;
    public final long periodDurationMs;
    public final long periodStartMs;
    public final long presentationTimeOffsetUs;
    public final long revisionId;

    public abstract DashSegmentIndex getIndex();

    public abstract RangedUri getIndexUri();

    public static Representation newInstance(long j, long j2, String str, long j3, Format format, SegmentBase segmentBase) {
        if (segmentBase instanceof SegmentBase.SingleSegmentBase) {
            return new SingleSegmentRepresentation(j, j2, str, j3, format, (SegmentBase.SingleSegmentBase) segmentBase, -1L);
        }
        if (segmentBase instanceof SegmentBase.MultiSegmentBase) {
            return new MultiSegmentRepresentation(j, j2, str, j3, format, (SegmentBase.MultiSegmentBase) segmentBase);
        }
        throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
    }

    private Representation(long j, long j2, String str, long j3, Format format, SegmentBase segmentBase) {
        this.periodStartMs = j;
        this.periodDurationMs = j2;
        this.contentId = str;
        this.revisionId = j3;
        this.format = format;
        this.initializationUri = segmentBase.getInitialization(this);
        this.presentationTimeOffsetUs = segmentBase.getPresentationTimeOffsetUs();
    }

    public RangedUri getInitializationUri() {
        return this.initializationUri;
    }

    public String getCacheKey() {
        return this.contentId + "." + this.format.id + "." + this.revisionId;
    }

    public class SingleSegmentRepresentation extends Representation {
        public final long contentLength;
        private final RangedUri indexUri;
        private final DashSingleSegmentIndex segmentIndex;
        public final Uri uri;

        public static SingleSegmentRepresentation newInstance(long j, long j2, String str, long j3, Format format, Uri uri, long j4, long j5, long j6, long j7, long j8) {
            return new SingleSegmentRepresentation(j, j2, str, j3, format, new SegmentBase.SingleSegmentBase(new RangedUri(uri, null, j4, 1 + (j5 - j4)), 1L, 0L, uri, j6, (j7 - j6) + 1), j8);
        }

        public SingleSegmentRepresentation(long j, long j2, String str, long j3, Format format, SegmentBase.SingleSegmentBase singleSegmentBase, long j4) {
            super(j, j2, str, j3, format, singleSegmentBase);
            this.uri = singleSegmentBase.uri;
            this.indexUri = singleSegmentBase.getIndex();
            this.contentLength = j4;
            this.segmentIndex = this.indexUri != null ? null : new DashSingleSegmentIndex(j * 1000, j2 * 1000, new RangedUri(this.uri, null, 0L, -1L));
        }

        @Override // com.google.android.exoplayer.dash.mpd.Representation
        public RangedUri getIndexUri() {
            return this.indexUri;
        }

        @Override // com.google.android.exoplayer.dash.mpd.Representation
        public DashSegmentIndex getIndex() {
            return this.segmentIndex;
        }
    }

    public class MultiSegmentRepresentation extends Representation implements DashSegmentIndex {
        private final SegmentBase.MultiSegmentBase segmentBase;

        public MultiSegmentRepresentation(long j, long j2, String str, long j3, Format format, SegmentBase.MultiSegmentBase multiSegmentBase) {
            super(j, j2, str, j3, format, multiSegmentBase);
            this.segmentBase = multiSegmentBase;
        }

        @Override // com.google.android.exoplayer.dash.mpd.Representation
        public RangedUri getIndexUri() {
            return null;
        }

        @Override // com.google.android.exoplayer.dash.mpd.Representation
        public DashSegmentIndex getIndex() {
            return this;
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public RangedUri getSegmentUrl(int i) {
            return this.segmentBase.getSegmentUrl(this, i);
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public int getSegmentNum(long j) {
            return this.segmentBase.getSegmentNum(j);
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public long getTimeUs(int i) {
            return this.segmentBase.getSegmentTimeUs(i);
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public long getDurationUs(int i) {
            return this.segmentBase.getSegmentDurationUs(i);
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public int getFirstSegmentNum() {
            return this.segmentBase.getFirstSegmentNum();
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public int getLastSegmentNum() {
            return this.segmentBase.getLastSegmentNum();
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public boolean isExplicit() {
            return this.segmentBase.isExplicit();
        }
    }
}
