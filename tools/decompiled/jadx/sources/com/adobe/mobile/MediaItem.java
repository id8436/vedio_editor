package com.adobe.mobile;

import c.a.a.a.a.d.d;
import com.adobe.mobile.Media;
import com.behance.sdk.util.BehanceSDKConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
final class MediaItem {
    private static final Object monitorMutex = new Object();
    protected String CPM;
    protected String channel;
    private int completeCloseOffsetThreshold;
    private boolean completeTracked;
    protected boolean itemClosed;
    protected int lastTrackSegmentNumber;
    protected double length;
    protected boolean mediaAd;
    protected MediaAnalytics mediaAnalytics;
    private MonitorThread monitor;
    protected String name;
    protected String parentName;
    protected String parentPod;
    protected double parentPodPosition;
    protected String playerID;
    protected String playerName;
    protected boolean trackCalled;
    private int trackSecondsThreshold;
    protected Media.MediaCallback<MediaState> callback = null;
    protected MediaState currentMediaState = null;
    protected MediaState previousMediaState = null;
    private HashSet<String> firstEventList = new HashSet<>();
    private ArrayList<Integer> milestones = new ArrayList<>();
    private ArrayList<Integer> offsetMilestones = new ArrayList<>();
    private boolean segmentByMilestones = false;
    private boolean segmentByOffsetMilestones = false;
    protected double timestamp = StaticMethods.getTimeSince1970();

    public MediaItem(MediaSettings mediaSettings, MediaAnalytics mediaAnalytics, String str, double d2, String str2) {
        this.completeCloseOffsetThreshold = 1;
        this.trackSecondsThreshold = 0;
        this.name = str;
        this.length = d2;
        this.playerName = str2;
        this.mediaAnalytics = mediaAnalytics;
        this.playerID = mediaSettings.playerID;
        this.channel = mediaSettings.channel;
        setMilestones(mediaSettings.milestones);
        setOffsetMilestones(mediaSettings.offsetMilestones);
        setSegmentByMilestones(mediaSettings.segmentByMilestones && this.milestones.size() > 0);
        setSegmentByOffsetMilestones(mediaSettings.segmentByOffsetMilestones && this.offsetMilestones.size() > 0);
        setTrackSecondsThreshold(mediaAnalytics.trackSeconds);
        setCompleteCloseOffsetThreshold(mediaAnalytics.completeCloseOffsetThreshold);
        if (mediaSettings.isMediaAd) {
            this.mediaAd = true;
            this.parentPodPosition = mediaSettings.parentPodPosition;
            this.parentName = mediaSettings.parentName;
            this.parentPod = mediaSettings.parentPod;
            this.CPM = mediaSettings.CPM;
        }
        this.completeCloseOffsetThreshold = mediaSettings.completeCloseOffsetThreshold > 0 ? mediaSettings.completeCloseOffsetThreshold : 1;
        this.trackSecondsThreshold = mediaSettings.trackSeconds > 0 ? mediaSettings.trackSeconds : 0;
    }

    protected void startMonitor() {
        if (this.monitor == null || this.monitor.canceled) {
            if (this.monitor != null) {
                stopMonitor();
            }
            this.monitor = new MonitorThread();
            this.monitor.monitorMediaItem = this;
            this.monitor.start();
        }
    }

    protected void stopMonitor() {
        if (this.monitor != null) {
            synchronized (monitorMutex) {
                this.monitor.canceled = true;
                this.monitor = null;
            }
        }
    }

    class MonitorThread extends Thread {
        protected boolean canceled;
        long delay;
        protected MediaItem monitorMediaItem;

        private MonitorThread() {
            this.delay = 1000L;
            this.canceled = false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (!this.canceled) {
                try {
                    Thread.sleep(this.delay);
                    StaticMethods.getMediaExecutor().execute(new Runnable() { // from class: com.adobe.mobile.MediaItem.MonitorThread.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MonitorThread.this.monitorMediaItem.mediaAnalytics.monitor(MonitorThread.this.monitorMediaItem.name, -1.0d);
                        }
                    });
                } catch (InterruptedException e2) {
                    StaticMethods.logWarningFormat("Media - Background Thread Interrupted : %s", e2.getMessage());
                    return;
                }
            }
        }
    }

    protected synchronized void play(double d2) {
        if (this.currentMediaState == null || !isPlaying()) {
            updateMediaStates();
            updateCurrentMediaStateWithOffset(d2, 1);
            if (!this.currentMediaState.complete) {
                startMonitor();
            }
        }
    }

    protected synchronized void monitor(double d2) {
        updateMediaStates();
        if (this.previousMediaState != null) {
            updateCurrentMediaStateWithOffset(d2, 3);
            if (this.currentMediaState.complete) {
                stopMonitor();
            }
        }
    }

    protected synchronized void click(double d2) {
        updateMediaStates();
        if (this.previousMediaState != null) {
            updateCurrentMediaStateWithOffset(d2, 6);
        }
    }

    protected synchronized void complete(double d2) {
        updateMediaStates();
        if (this.previousMediaState != null && this.previousMediaState.getEventType() != 5) {
            updateCurrentMediaStateWithOffset(d2, 5);
            if (this.currentMediaState.complete) {
                stopMonitor();
            }
            this.currentMediaState.complete = true;
        }
    }

    protected synchronized void stop(double d2) {
        updateMediaStates();
        updateCurrentMediaStateWithOffset(d2, 2);
        stopMonitor();
    }

    protected synchronized void close() {
        updateMediaStates();
        if (this.previousMediaState != null && this.previousMediaState.getEventType() != 0) {
            if (this.previousMediaState.eventType == 2) {
                updateCurrentMediaStateWithOffset(this.currentMediaState.offset, 0);
            } else {
                updateCurrentMediaStateWithOffset(-1.0d, 0);
            }
            if (isCurrentOffsetPastCompleteThreshold()) {
                this.currentMediaState.complete = true;
            }
            stopMonitor();
        }
    }

    private void updateMediaStates() {
        this.previousMediaState = this.currentMediaState;
        this.currentMediaState = new MediaState(this.name, this.length, this.playerName, (long) this.timestamp);
    }

    private void updateCurrentMediaStateWithOffset(double d2, int i) {
        this.currentMediaState.clicked = i == 6;
        this.currentMediaState.ad = this.mediaAd;
        this.currentMediaState.setOffset(validateOffset(d2));
        calculateCurrentOffsetMilestoneAndSegment();
        calculateCurrentMilestoneAndSegment();
        updateTimePlayed(i);
        this.currentMediaState.setEventType(i);
        updateCurrentMediaStateMediaEventIfNeeded(i);
        setEventFirstTime(this.currentMediaState);
    }

    private void calculateCurrentMilestoneAndSegment() {
        int iCalculateLastPassedMilestoneIndex;
        if (!isLive() && this.milestones.size() != 0 && (iCalculateLastPassedMilestoneIndex = calculateLastPassedMilestoneIndex()) != -1) {
            int iIntValue = this.milestones.get(iCalculateLastPassedMilestoneIndex).intValue();
            this.currentMediaState.milestone = iIntValue;
            if (this.segmentByMilestones) {
                this.currentMediaState.segmentNum = iCalculateLastPassedMilestoneIndex + 1;
                StringBuilder sb = new StringBuilder();
                sb.append("M:");
                sb.append(Integer.toString(iIntValue));
                sb.append("-");
                if (iCalculateLastPassedMilestoneIndex < this.milestones.size() - 1) {
                    sb.append(Integer.toString(this.milestones.get(iCalculateLastPassedMilestoneIndex + 1).intValue()));
                } else {
                    sb.append("100");
                }
                this.currentMediaState.segment = sb.toString();
            }
        }
    }

    private void calculateCurrentOffsetMilestoneAndSegment() {
        int iCalculateLastPassedOffsetMilestoneIndex;
        if (this.offsetMilestones.size() != 0 && (iCalculateLastPassedOffsetMilestoneIndex = calculateLastPassedOffsetMilestoneIndex()) != -1) {
            int iIntValue = this.offsetMilestones.get(iCalculateLastPassedOffsetMilestoneIndex).intValue();
            this.currentMediaState.offsetMilestone = iIntValue;
            if (this.segmentByOffsetMilestones) {
                this.currentMediaState.segmentNum = iCalculateLastPassedOffsetMilestoneIndex + 1;
                StringBuilder sb = new StringBuilder();
                sb.append("O:");
                sb.append(Integer.toString(iIntValue));
                sb.append("-");
                if (iCalculateLastPassedOffsetMilestoneIndex < this.offsetMilestones.size() - 1) {
                    sb.append(Integer.toString(this.offsetMilestones.get(iCalculateLastPassedOffsetMilestoneIndex + 1).intValue()));
                } else {
                    sb.append(isLive() ? "E" : Integer.toString((int) this.length));
                }
                this.currentMediaState.segment = sb.toString();
            }
        }
    }

    private int calculateLastPassedMilestoneIndex() {
        if (this.milestones.size() == 0) {
            return -1;
        }
        int i = 0;
        int i2 = -1;
        while (true) {
            int i3 = i;
            if (i3 >= this.milestones.size()) {
                return i2;
            }
            if (this.currentMediaState.percent >= this.milestones.get(i3).intValue()) {
                i2 = i3;
            }
            i = i3 + 1;
        }
    }

    private int calculateLastPassedOffsetMilestoneIndex() {
        if (this.offsetMilestones.size() == 0) {
            return -1;
        }
        int i = 0;
        int i2 = -1;
        while (true) {
            int i3 = i;
            if (i3 >= this.offsetMilestones.size()) {
                return i2;
            }
            if (this.currentMediaState.offset >= this.offsetMilestones.get(i3).intValue()) {
                i2 = i3;
            }
            i = i3 + 1;
        }
    }

    private void updateCurrentMediaStateMediaEventIfNeeded(int i) {
        if (i == 0) {
            return;
        }
        if (this.currentMediaState.percent >= 100.0d) {
            this.currentMediaState.mediaEvent = "CLOSE";
            return;
        }
        if (this.previousMediaState != null) {
            if (this.currentMediaState.milestone > this.previousMediaState.milestone) {
                this.currentMediaState.mediaEvent = "MILESTONE";
                return;
            }
            if (this.currentMediaState.offsetMilestone > this.previousMediaState.offsetMilestone) {
                this.currentMediaState.mediaEvent = "OFFSET_MILESTONE";
            } else if (getTrackSecondsThreshold() > 0 && this.currentMediaState.getTimePlayedSinceTrack() >= getTrackSecondsThreshold()) {
                this.currentMediaState.mediaEvent = "SECONDS";
            }
        }
    }

    private double validateOffset(double d2) {
        if (d2 < 0.0d && this.previousMediaState != null) {
            return (this.currentMediaState.getTimestamp() - this.previousMediaState.getTimestamp()) + this.previousMediaState.offset;
        }
        return d2;
    }

    private void updateTimePlayed(int i) {
        if (this.previousMediaState != null) {
            double d2 = 0.0d;
            if (this.currentMediaState.offset > this.previousMediaState.offset && i != 1) {
                d2 = this.currentMediaState.offset - this.previousMediaState.offset;
            }
            this.currentMediaState.setTimePlayed(this.previousMediaState.getTimePlayed() + d2);
            this.currentMediaState.setTimePlayedSinceTrack(d2 + this.previousMediaState.getTimePlayedSinceTrack());
        }
    }

    private void setEventFirstTime(MediaState mediaState) {
        String str = mediaState.mediaEvent;
        if (str.equals("MILESTONE")) {
            str = str + d.ROLL_OVER_FILE_NAME_SEPARATOR + mediaState.milestone;
        } else if (str.equals("OFFSET_MILESTONE")) {
            str = str + d.ROLL_OVER_FILE_NAME_SEPARATOR + mediaState.offsetMilestone;
        }
        if (!this.firstEventList.contains(str)) {
            mediaState.eventFirstTime = true;
            this.firstEventList.add(str);
        }
    }

    protected boolean isPlaying() {
        return (this.currentMediaState == null || this.currentMediaState.eventType == 0 || this.currentMediaState.eventType == 2) ? false : true;
    }

    protected boolean isCurrentOffsetPastCompleteThreshold() {
        return this.currentMediaState.offset >= this.length - ((double) this.completeCloseOffsetThreshold);
    }

    protected boolean isLive() {
        return this.length == -1.0d;
    }

    private void setMilestones(String str) {
        this.milestones.clear();
        if (str != null && str.length() > 0) {
            this.milestones.add(0);
            for (String str2 : str.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR)) {
                int i = (int) Double.parseDouble(str2);
                if (i > 0 && i <= 100 && !this.milestones.contains(Integer.valueOf(i))) {
                    this.milestones.add(Integer.valueOf(i));
                }
            }
            Collections.sort(this.milestones);
        }
    }

    private void setOffsetMilestones(String str) {
        this.offsetMilestones.clear();
        if (str != null && str.length() > 0) {
            this.offsetMilestones.add(0);
            for (String str2 : str.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR)) {
                int i = (int) Double.parseDouble(str2);
                if (i > 0 && !this.offsetMilestones.contains(Integer.valueOf(i)) && (isLive() || i <= this.length)) {
                    this.offsetMilestones.add(Integer.valueOf(i));
                }
            }
            Collections.sort(this.offsetMilestones);
        }
    }

    protected MediaState getReportMediaState() {
        boolean z;
        boolean z2 = true;
        MediaState mediaState = new MediaState(this.currentMediaState);
        if (this.previousMediaState != null) {
            if (this.currentMediaState.milestone <= this.previousMediaState.milestone) {
                mediaState.milestone = 0;
                z = true;
            } else {
                z = false;
            }
            if (this.currentMediaState.offsetMilestone <= this.previousMediaState.offsetMilestone) {
                mediaState.offsetMilestone = 0;
            } else {
                z2 = z;
            }
            if (z2) {
                mediaState.segment = this.previousMediaState.segment;
                mediaState.segmentNum = this.previousMediaState.segmentNum;
                mediaState.segmentLength = this.previousMediaState.segmentLength;
            }
        }
        return mediaState;
    }

    protected boolean isSegmentByMilestones() {
        return this.segmentByMilestones;
    }

    protected String getName() {
        return this.name;
    }

    protected double getLength() {
        return this.length;
    }

    protected String getPlayerName() {
        return this.playerName;
    }

    protected String getPlayerID() {
        return this.playerID;
    }

    protected void setSegmentByMilestones(boolean z) {
        this.segmentByMilestones = z;
    }

    protected boolean isSegmentByOffsetMilestones() {
        return this.segmentByOffsetMilestones;
    }

    protected void setSegmentByOffsetMilestones(boolean z) {
        this.segmentByOffsetMilestones = z;
    }

    public int getTrackSecondsThreshold() {
        return this.trackSecondsThreshold;
    }

    public void setTrackSecondsThreshold(int i) {
        this.trackSecondsThreshold = i;
    }

    protected boolean isCompleteTracked() {
        return this.completeTracked;
    }

    protected void setCompleteTracked(boolean z) {
        this.completeTracked = z;
    }

    public void setCompleteCloseOffsetThreshold(int i) {
        this.completeCloseOffsetThreshold = i;
    }
}
