package com.google.android.exoplayer.dash.mpd;

import android.net.Uri;
import com.google.android.exoplayer.util.Util;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SegmentBase {
    final RangedUri initialization;
    final long presentationTimeOffset;
    final long timescale;

    public SegmentBase(RangedUri rangedUri, long j, long j2) {
        this.initialization = rangedUri;
        this.timescale = j;
        this.presentationTimeOffset = j2;
    }

    public RangedUri getInitialization(Representation representation) {
        return this.initialization;
    }

    public long getPresentationTimeOffsetUs() {
        return Util.scaleLargeTimestamp(this.presentationTimeOffset, 1000000L, this.timescale);
    }

    public class SingleSegmentBase extends SegmentBase {
        final long indexLength;
        final long indexStart;
        public final Uri uri;

        public SingleSegmentBase(RangedUri rangedUri, long j, long j2, Uri uri, long j3, long j4) {
            super(rangedUri, j, j2);
            this.uri = uri;
            this.indexStart = j3;
            this.indexLength = j4;
        }

        public SingleSegmentBase(Uri uri) {
            this(null, 1L, 0L, uri, 0L, -1L);
        }

        public RangedUri getIndex() {
            if (this.indexLength <= 0) {
                return null;
            }
            return new RangedUri(this.uri, null, this.indexStart, this.indexLength);
        }
    }

    public abstract class MultiSegmentBase extends SegmentBase {
        final long duration;
        final long periodDurationMs;
        final List<SegmentTimelineElement> segmentTimeline;
        final int startNumber;

        public abstract int getLastSegmentNum();

        public abstract RangedUri getSegmentUrl(Representation representation, int i);

        public MultiSegmentBase(RangedUri rangedUri, long j, long j2, long j3, int i, long j4, List<SegmentTimelineElement> list) {
            super(rangedUri, j, j2);
            this.periodDurationMs = j3;
            this.startNumber = i;
            this.duration = j4;
            this.segmentTimeline = list;
        }

        public int getSegmentNum(long j) {
            int firstSegmentNum = getFirstSegmentNum();
            int lastSegmentNum = getLastSegmentNum();
            if (this.segmentTimeline == null) {
                int i = ((int) (j / ((this.duration * 1000000) / this.timescale))) + this.startNumber;
                if (i < firstSegmentNum) {
                    return firstSegmentNum;
                }
                return (lastSegmentNum == -1 || i <= lastSegmentNum) ? i : lastSegmentNum;
            }
            int i2 = firstSegmentNum;
            int i3 = lastSegmentNum;
            while (i2 <= i3) {
                int i4 = (i2 + i3) / 2;
                long segmentTimeUs = getSegmentTimeUs(i4);
                if (segmentTimeUs < j) {
                    i2 = i4 + 1;
                } else {
                    if (segmentTimeUs <= j) {
                        return i4;
                    }
                    i3 = i4 - 1;
                }
            }
            return i2 - 1;
        }

        public final long getSegmentDurationUs(int i) {
            if (this.segmentTimeline != null) {
                return (this.segmentTimeline.get(i - this.startNumber).duration * 1000000) / this.timescale;
            }
            return i == getLastSegmentNum() ? (this.periodDurationMs * 1000) - getSegmentTimeUs(i) : (this.duration * 1000000) / this.timescale;
        }

        public final long getSegmentTimeUs(int i) {
            long j;
            if (this.segmentTimeline != null) {
                j = this.segmentTimeline.get(i - this.startNumber).startTime - this.presentationTimeOffset;
            } else {
                j = ((long) (i - this.startNumber)) * this.duration;
            }
            return Util.scaleLargeTimestamp(j, 1000000L, this.timescale);
        }

        public int getFirstSegmentNum() {
            return this.startNumber;
        }

        public boolean isExplicit() {
            return this.segmentTimeline != null;
        }
    }

    public class SegmentList extends MultiSegmentBase {
        final List<RangedUri> mediaSegments;

        public SegmentList(RangedUri rangedUri, long j, long j2, long j3, int i, long j4, List<SegmentTimelineElement> list, List<RangedUri> list2) {
            super(rangedUri, j, j2, j3, i, j4, list);
            this.mediaSegments = list2;
        }

        @Override // com.google.android.exoplayer.dash.mpd.SegmentBase.MultiSegmentBase
        public RangedUri getSegmentUrl(Representation representation, int i) {
            return this.mediaSegments.get(i - this.startNumber);
        }

        @Override // com.google.android.exoplayer.dash.mpd.SegmentBase.MultiSegmentBase
        public int getLastSegmentNum() {
            return (this.startNumber + this.mediaSegments.size()) - 1;
        }

        @Override // com.google.android.exoplayer.dash.mpd.SegmentBase.MultiSegmentBase
        public boolean isExplicit() {
            return true;
        }
    }

    public class SegmentTemplate extends MultiSegmentBase {
        private final Uri baseUrl;
        final UrlTemplate initializationTemplate;
        final UrlTemplate mediaTemplate;

        public SegmentTemplate(RangedUri rangedUri, long j, long j2, long j3, int i, long j4, List<SegmentTimelineElement> list, UrlTemplate urlTemplate, UrlTemplate urlTemplate2, Uri uri) {
            super(rangedUri, j, j2, j3, i, j4, list);
            this.initializationTemplate = urlTemplate;
            this.mediaTemplate = urlTemplate2;
            this.baseUrl = uri;
        }

        @Override // com.google.android.exoplayer.dash.mpd.SegmentBase
        public RangedUri getInitialization(Representation representation) {
            if (this.initializationTemplate == null) {
                return super.getInitialization(representation);
            }
            return new RangedUri(this.baseUrl, this.initializationTemplate.buildUri(representation.format.id, 0, representation.format.bitrate, 0L), 0L, -1L);
        }

        @Override // com.google.android.exoplayer.dash.mpd.SegmentBase.MultiSegmentBase
        public RangedUri getSegmentUrl(Representation representation, int i) {
            long j;
            if (this.segmentTimeline != null) {
                j = this.segmentTimeline.get(i - this.startNumber).startTime;
            } else {
                j = ((long) (i - this.startNumber)) * this.duration;
            }
            return new RangedUri(this.baseUrl, this.mediaTemplate.buildUri(representation.format.id, i, representation.format.bitrate, j), 0L, -1L);
        }

        @Override // com.google.android.exoplayer.dash.mpd.SegmentBase.MultiSegmentBase
        public int getLastSegmentNum() {
            if (this.segmentTimeline != null) {
                return (this.segmentTimeline.size() + this.startNumber) - 1;
            }
            if (this.periodDurationMs == -1) {
                return -1;
            }
            long j = (this.duration * 1000) / this.timescale;
            return (((int) (((this.periodDurationMs + j) - 1) / j)) + this.startNumber) - 1;
        }
    }

    public class SegmentTimelineElement {
        long duration;
        long startTime;

        public SegmentTimelineElement(long j, long j2) {
            this.startTime = j;
            this.duration = j2;
        }
    }
}
