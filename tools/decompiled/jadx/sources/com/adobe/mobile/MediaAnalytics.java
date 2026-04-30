package com.adobe.mobile;

import com.adobe.mobile.Media;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
final class MediaAnalytics {
    private static final String AD_CLICKED_KEY = "a.media.ad.clicked";
    private static final String AD_COMPLETE_KEY = "a.media.ad.complete";
    private static final String AD_CPM = "a.media.ad.CPM";
    private static final String AD_LENGTH_KEY = "a.media.ad.length";
    private static final String AD_MILESTONE_KEY = "a.media.ad.milestone";
    private static final String AD_NAME_KEY = "a.media.ad.name";
    private static final String AD_OFFSET_MILESTONE_KEY = "a.media.ad.offsetMilestone";
    private static final String AD_PLAYER_NAME_KEY = "a.media.ad.playerName";
    private static final String AD_POD = "a.media.ad.pod";
    private static final String AD_POD_POSITION = "a.media.ad.podPosition";
    private static final String AD_SEGMENT_KEY = "a.media.ad.segment";
    private static final String AD_SEGMENT_NUM_KEY = "a.media.ad.segmentNum";
    private static final String AD_SEGMENT_VIEW_KEY = "a.media.ad.segmentView";
    private static final String AD_TIME_PLAYED_KEY = "a.media.ad.timePlayed";
    private static final String AD_VIEW_KEY = "a.media.ad.view";
    private static final String CHANNEL_KEY = "a.media.channel";
    private static final String COMPLETE_KEY = "a.media.complete";
    private static final String CONTENT_TYPE_KEY = "a.contentType";
    private static final String CONTENT_TYPE_VALUE = "video";
    private static final String CONTENT_TYPE_VALUE_AD = "videoAd";
    private static final String DEFAULT_PLAYER_NAME = "Not_Specified";
    private static final String INITIAL_HIT_PAGE_EVENT = "m_s";
    private static final String LENGTH_KEY = "a.media.length";
    protected static final double LIVE_EVENT_LENGTH = -1.0d;
    private static final String MEDIA_CLICKED_KEY = "a.media.clicked";
    private static final String MEDIA_HIT_PAGE_EVENT = "m_i";
    private static final String MEDIA_VIEW_KEY = "a.media.view";
    private static final String MILESTONE_KEY = "a.media.milestone";
    private static final String NAME_KEY = "a.media.name";
    private static final String OFFSET_MILESTONE_KEY = "a.media.offsetMilestone";
    private static final String PAGE_EVENT_VAR_OVERRIDE = "&&pe";
    private static final String PEV_VALUE_OVERRIDE = "video";
    private static final String PEV_VALUE_OVERRIDE_AD = "videoAd";
    private static final String PEV_VAR_OVERRIDE = "&&pev3";
    private static final String PLAYER_NAME_KEY = "a.media.playerName";
    private static final String SEGMENT_KEY = "a.media.segment";
    private static final String SEGMENT_NUM_KEY = "a.media.segmentNum";
    private static final String SEGMENT_VIEW_KEY = "a.media.segmentView";
    private static final String TIME_PLAYED_KEY = "a.media.timePlayed";
    private static final List<String> unwantedValues = Arrays.asList(null, "");
    private static MediaAnalytics _instance = null;
    private static final Object _instanceMutex = new Object();
    protected int trackSeconds = 0;
    protected int completeCloseOffsetThreshold = 1;
    private final HashMap<String, Object> mediaItemList = new HashMap<>();

    MediaAnalytics() {
    }

    protected static MediaAnalytics sharedInstance() {
        MediaAnalytics mediaAnalytics;
        synchronized (_instanceMutex) {
            if (_instance == null) {
                _instance = new MediaAnalytics();
            }
            mediaAnalytics = _instance;
        }
        return mediaAnalytics;
    }

    protected final Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }

    protected synchronized void open(MediaSettings mediaSettings, Media.MediaCallback mediaCallback) {
        String strCleanName = cleanName(mediaSettings.name);
        if (isNilOrEmptyString(strCleanName)) {
            StaticMethods.logWarningFormat("Analytics - ADBMediaSettings is required with a valid name. Media item not opened", new Object[0]);
        } else if (mediaSettings.isMediaAd && isNilOrEmptyString(mediaSettings.parentName)) {
            StaticMethods.logWarningFormat("Analytics - Media ad requires parent name, please specify a parent name. Media item not opened", new Object[0]);
        } else {
            double d2 = mediaSettings.length > 0.0d ? mediaSettings.length : LIVE_EVENT_LENGTH;
            String strCleanName2 = isNilOrEmptyString(mediaSettings.playerName) ? DEFAULT_PLAYER_NAME : cleanName(mediaSettings.playerName);
            if (this.mediaItemList.containsKey(strCleanName)) {
                close(strCleanName);
            }
            if (!isNilOrEmptyString(mediaSettings.playerID)) {
                Iterator<String> it = this.mediaItemList.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    String next = it.next();
                    String playerID = ((MediaItem) this.mediaItemList.get(next)).getPlayerID();
                    if (playerID != null && playerID.equals(mediaSettings.playerID)) {
                        close(next);
                        break;
                    }
                }
            }
            MediaItem mediaItem = new MediaItem(mediaSettings, this, strCleanName, d2, strCleanName2);
            mediaItem.callback = mediaCallback;
            this.mediaItemList.put(strCleanName, mediaItem);
        }
    }

    protected synchronized void close(String str) {
        MediaItem mediaItemMediaItemWithName = mediaItemWithName(str);
        if (mediaItemMediaItemWithName != null) {
            mediaItemMediaItemWithName.trackCalled = false;
            mediaItemMediaItemWithName.close();
            notifyDelegateOfMediaState(mediaItemMediaItemWithName);
            if (!mediaItemMediaItemWithName.trackCalled) {
                if (mediaItemMediaItemWithName.currentMediaState.getTimePlayed() > 0.0d) {
                    trackMediaStateIfNecessary(mediaItemMediaItemWithName, null, true);
                }
                this.mediaItemList.remove(mediaItemMediaItemWithName.name);
            } else {
                mediaItemMediaItemWithName.itemClosed = true;
            }
        }
    }

    protected synchronized void play(String str, double d2) {
        MediaItem mediaItemMediaItemWithName = mediaItemWithName(str);
        if (mediaItemMediaItemWithName != null) {
            mediaItemMediaItemWithName.trackCalled = false;
            mediaItemMediaItemWithName.play(d2);
            notifyDelegateOfMediaState(mediaItemMediaItemWithName);
            if (!mediaItemMediaItemWithName.trackCalled) {
                if (mediaItemMediaItemWithName.previousMediaState == null) {
                    trackMediaViewed(mediaItemMediaItemWithName);
                } else if (mediaItemMediaItemWithName.currentMediaState.segmentNum != mediaItemMediaItemWithName.lastTrackSegmentNumber && mediaItemMediaItemWithName.currentMediaState.timePlayed > 0.0d) {
                    trackMediaStateIfNecessary(mediaItemMediaItemWithName, null, true);
                } else {
                    trackMediaStateIfNecessary(mediaItemMediaItemWithName, null, false);
                }
            }
            mediaItemMediaItemWithName.trackCalled = false;
            removeMediaItemIfComplete(mediaItemMediaItemWithName);
        }
    }

    protected synchronized void complete(String str, double d2) {
        MediaItem mediaItemMediaItemWithName = mediaItemWithName(str);
        if (mediaItemMediaItemWithName != null && mediaItemMediaItemWithName.isPlaying()) {
            mediaItemMediaItemWithName.trackCalled = false;
            mediaItemMediaItemWithName.complete(d2);
            notifyDelegateOfMediaState(mediaItemMediaItemWithName);
            if (!mediaItemMediaItemWithName.trackCalled && mediaItemMediaItemWithName.previousMediaState != null) {
                trackMediaStateIfNecessary(mediaItemMediaItemWithName, null, false);
            }
        }
    }

    protected synchronized void stop(String str, double d2) {
        MediaItem mediaItemMediaItemWithName = mediaItemWithName(str);
        if (mediaItemMediaItemWithName != null && mediaItemMediaItemWithName.isPlaying()) {
            mediaItemMediaItemWithName.trackCalled = false;
            mediaItemMediaItemWithName.stop(d2);
            notifyDelegateOfMediaState(mediaItemMediaItemWithName);
            if (!mediaItemMediaItemWithName.trackCalled && mediaItemMediaItemWithName.previousMediaState != null) {
                trackMediaStateIfNecessary(mediaItemMediaItemWithName, null, false);
            }
        }
    }

    protected synchronized void click(String str, double d2) {
        MediaItem mediaItemMediaItemWithName = mediaItemWithName(str);
        if (mediaItemMediaItemWithName != null && mediaItemMediaItemWithName.isPlaying()) {
            mediaItemMediaItemWithName.trackCalled = false;
            mediaItemMediaItemWithName.click(d2);
            notifyDelegateOfMediaState(mediaItemMediaItemWithName);
            if (!mediaItemMediaItemWithName.trackCalled && mediaItemMediaItemWithName.previousMediaState != null) {
                trackMediaStateIfNecessary(mediaItemMediaItemWithName, null, true);
            }
        }
    }

    protected void setTrackCalledOnItem(String str) {
        MediaItem mediaItemMediaItemWithName = mediaItemWithName(str);
        if (mediaItemMediaItemWithName != null) {
            mediaItemMediaItemWithName.trackCalled = true;
        }
    }

    protected synchronized void track(String str, Map<String, Object> map) {
        MediaItem mediaItemMediaItemWithName = mediaItemWithName(str);
        if (mediaItemMediaItemWithName != null) {
            if (mediaItemMediaItemWithName.currentMediaState != null) {
                HashMap<String, Object> map2 = map != null ? new HashMap<>(map) : new HashMap<>();
                removeEmptyValues(map2);
                trackMediaStateIfNecessary(mediaItemMediaItemWithName, map2, true);
            }
            if (mediaItemMediaItemWithName.itemClosed) {
                this.mediaItemList.remove(mediaItemMediaItemWithName.name);
            }
            mediaItemMediaItemWithName.trackCalled = false;
        }
    }

    protected synchronized void monitor(String str, double d2) {
        MediaItem mediaItemMediaItemWithName = mediaItemWithName(str);
        if (mediaItemMediaItemWithName != null && mediaItemMediaItemWithName.isPlaying()) {
            if (mediaItemMediaItemWithName.trackCalled) {
                mediaItemMediaItemWithName.trackCalled = false;
            } else {
                mediaItemMediaItemWithName.monitor(d2);
                notifyDelegateOfMediaState(mediaItemMediaItemWithName);
                if (mediaItemMediaItemWithName.previousMediaState != null && !mediaItemMediaItemWithName.trackCalled) {
                    trackMediaStateIfNecessary(mediaItemMediaItemWithName, null, false);
                }
            }
        }
    }

    private void notifyDelegateOfMediaState(MediaItem mediaItem) {
        if (mediaItem.callback != null) {
            mediaItem.callback.call(mediaItem.getReportMediaState());
        }
    }

    private void trackMediaViewed(MediaItem mediaItem) {
        HashMap<String, Object> map = new HashMap<>();
        map.put(!mediaItem.mediaAd ? MEDIA_VIEW_KEY : AD_VIEW_KEY, String.valueOf(true));
        addGenericMediaContextData(map, mediaItem, true);
        addSegmentContextData(map, mediaItem);
        trackMediaItemWithContextData(mediaItem, map);
        removeMediaItemIfComplete(mediaItem);
    }

    private void trackMediaStateIfNecessary(MediaItem mediaItem, HashMap<String, Object> map, boolean z) {
        HashMap<String, Object> map2 = map != null ? new HashMap<>(map) : new HashMap<>();
        addGenericMediaContextData(map2, mediaItem, false);
        addSegmentContextData(map2, mediaItem);
        if (mediaItem.previousMediaState == null) {
            map2.put(PAGE_EVENT_VAR_OVERRIDE, INITIAL_HIT_PAGE_EVENT);
            map2.put(!mediaItem.mediaAd ? MEDIA_VIEW_KEY : AD_VIEW_KEY, true);
            trackMediaItemWithContextData(mediaItem, map2);
            return;
        }
        if (mediaItem.currentMediaState.complete) {
            if (!mediaItem.isCompleteTracked()) {
                map2.put(!mediaItem.mediaAd ? COMPLETE_KEY : AD_COMPLETE_KEY, String.valueOf(true));
                mediaItem.setCompleteTracked(true);
                z = true;
            }
            removeMediaItemIfComplete(mediaItem);
        }
        if (mediaItem.currentMediaState.clicked) {
            map2.put(!mediaItem.mediaAd ? MEDIA_CLICKED_KEY : AD_CLICKED_KEY, String.valueOf(true));
        }
        if (mediaItem.currentMediaState.offsetMilestone > mediaItem.previousMediaState.offsetMilestone) {
            map2.put(!mediaItem.mediaAd ? OFFSET_MILESTONE_KEY : AD_OFFSET_MILESTONE_KEY, Integer.toString(mediaItem.currentMediaState.offsetMilestone));
            z = true;
        }
        if (mediaItem.currentMediaState.milestone > mediaItem.previousMediaState.milestone) {
            map2.put(!mediaItem.mediaAd ? MILESTONE_KEY : AD_MILESTONE_KEY, Integer.toString(mediaItem.currentMediaState.milestone));
            z = true;
        }
        if (mediaItem.getTrackSecondsThreshold() > 0 && mediaItem.currentMediaState.getTimePlayedSinceTrack() >= mediaItem.getTrackSecondsThreshold()) {
            z = true;
        }
        if (z) {
            if (mediaItem.currentMediaState.getTimePlayedSinceTrack() > 0.0d) {
                map2.put(!mediaItem.mediaAd ? TIME_PLAYED_KEY : AD_TIME_PLAYED_KEY, Integer.toString((int) mediaItem.currentMediaState.getTimePlayedSinceTrack()));
            }
            trackMediaItemWithContextData(mediaItem, map2);
        }
    }

    private void trackMediaItemWithContextData(MediaItem mediaItem, HashMap<String, Object> map) {
        trackMedia(map);
        mediaItem.currentMediaState.setTimePlayedSinceTrack(0.0d);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addSegmentContextData(java.util.HashMap<java.lang.String, java.lang.Object> r4, com.adobe.mobile.MediaItem r5) {
        /*
            r3 = this;
            boolean r0 = r5.isSegmentByMilestones()
            if (r0 != 0) goto Lc
            boolean r0 = r5.isSegmentByOffsetMilestones()
            if (r0 == 0) goto L5f
        Lc:
            com.adobe.mobile.MediaState r1 = r5.currentMediaState
            com.adobe.mobile.MediaState r0 = r5.previousMediaState
            if (r0 == 0) goto L72
            com.adobe.mobile.MediaState r0 = r5.currentMediaState
            int r0 = r0.segmentNum
            int r2 = r5.lastTrackSegmentNumber
            if (r0 != r2) goto L20
            com.adobe.mobile.MediaState r0 = r5.currentMediaState
            boolean r0 = r0.complete
            if (r0 == 0) goto L2f
        L20:
            boolean r0 = r5.mediaAd
            if (r0 != 0) goto L66
            java.lang.String r0 = "a.media.segmentView"
        L27:
            r2 = 1
            java.lang.String r2 = java.lang.String.valueOf(r2)
            r4.put(r0, r2)
        L2f:
            com.adobe.mobile.MediaState r0 = r5.currentMediaState
            int r0 = r0.segmentNum
            com.adobe.mobile.MediaState r2 = r5.previousMediaState
            int r2 = r2.segmentNum
            if (r0 == r2) goto L72
            com.adobe.mobile.MediaState r0 = r5.previousMediaState
        L3b:
            int r1 = r0.segmentNum
            if (r1 <= 0) goto L4f
            boolean r1 = r5.mediaAd
            if (r1 != 0) goto L6a
            java.lang.String r1 = "a.media.segmentNum"
        L46:
            int r2 = r0.segmentNum
            java.lang.String r2 = java.lang.Integer.toString(r2)
            r4.put(r1, r2)
        L4f:
            java.lang.String r1 = r0.segment
            if (r1 == 0) goto L5f
            boolean r1 = r5.mediaAd
            if (r1 != 0) goto L6e
            java.lang.String r1 = "a.media.segment"
        L5a:
            java.lang.String r0 = r0.segment
            r4.put(r1, r0)
        L5f:
            com.adobe.mobile.MediaState r0 = r5.currentMediaState
            int r0 = r0.segmentNum
            r5.lastTrackSegmentNumber = r0
            return
        L66:
            java.lang.String r0 = "a.media.ad.segmentView"
            goto L27
        L6a:
            java.lang.String r1 = "a.media.ad.segmentNum"
            goto L46
        L6e:
            java.lang.String r1 = "a.media.ad.segment"
            goto L5a
        L72:
            r0 = r1
            goto L3b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.mobile.MediaAnalytics.addSegmentContextData(java.util.HashMap, com.adobe.mobile.MediaItem):void");
    }

    private void addGenericMediaContextData(HashMap<String, Object> map, MediaItem mediaItem, boolean z) {
        map.put(PAGE_EVENT_VAR_OVERRIDE, z ? INITIAL_HIT_PAGE_EVENT : MEDIA_HIT_PAGE_EVENT);
        if (mediaItem.mediaAd && !isNilOrEmptyString(mediaItem.parentName)) {
            map.put(PEV_VAR_OVERRIDE, "videoAd");
            map.put(CONTENT_TYPE_KEY, "videoAd");
            map.put(AD_NAME_KEY, mediaItem.getName());
            map.put(AD_PLAYER_NAME_KEY, mediaItem.getPlayerName());
            map.put(NAME_KEY, cleanName(mediaItem.parentName));
            if (!mediaItem.isLive()) {
                map.put(AD_LENGTH_KEY, Integer.toString((int) mediaItem.getLength()));
            }
            if (mediaItem.parentPod != null && mediaItem.parentPod.length() > 0) {
                map.put(AD_POD, mediaItem.parentPod);
            }
            if (mediaItem.parentPodPosition > 0.0d) {
                map.put(AD_POD_POSITION, Integer.toString((int) mediaItem.parentPodPosition));
            }
            if (z && !isNilOrEmptyString(mediaItem.CPM)) {
                map.put(AD_CPM, mediaItem.CPM);
            }
        } else {
            map.put(PEV_VAR_OVERRIDE, "video");
            map.put(CONTENT_TYPE_KEY, "video");
            map.put(NAME_KEY, mediaItem.getName());
            map.put(PLAYER_NAME_KEY, mediaItem.getPlayerName());
            if (!mediaItem.isLive()) {
                map.put(LENGTH_KEY, Integer.toString((int) mediaItem.getLength()));
            }
        }
        if (!isNilOrEmptyString(mediaItem.channel)) {
            map.put(CHANNEL_KEY, mediaItem.channel);
        }
    }

    private void trackMedia(HashMap<String, Object> map) {
        AnalyticsTrackInternal.trackInternal(DCXProjectKeys.kDCXKey_MediaNode_name, map, StaticMethods.getTimeSince1970());
    }

    private void removeMediaItemIfComplete(MediaItem mediaItem) {
        if (mediaItem.currentMediaState.percent >= 100.0d) {
            this.mediaItemList.remove(mediaItem.name);
        }
    }

    private String cleanName(String str) {
        if (isNilOrEmptyString(str)) {
            return null;
        }
        return str.replace(IOUtils.LINE_SEPARATOR_UNIX, "").replace("\r", "").replace("--**--", "");
    }

    private MediaItem mediaItemWithName(String str) {
        String strCleanName = cleanName(str);
        if (isNilOrEmptyString(strCleanName) || hashMapIsNullOrEmpty(this.mediaItemList)) {
            return null;
        }
        return (MediaItem) this.mediaItemList.get(strCleanName);
    }

    private void removeEmptyValues(HashMap<String, Object> map) {
        map.values().removeAll(unwantedValues);
    }

    private boolean hashMapIsNullOrEmpty(HashMap map) {
        return map == null || map.size() == 0;
    }

    private boolean isNilOrEmptyString(String str) {
        return str == null || str.trim().length() == 0;
    }
}
