package com.adobe.premiereclip.prexport.fcpxml.utils;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.premiereclip.prexport.fcpxml.clip.EmptyAudioTrackClip;
import com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem;

/* JADX INFO: loaded from: classes2.dex */
public class Utils {
    public static String[] MediaTypeStrings = {"video", "audio"};
    public static String[] VideoAlphaTypeStrings = {"black"};
    public static String[] VideoAspectRatioStrings = {AdobeAnalyticsETSEvent.ADOBE_ETS_ORIENTATION_SQUARE};
    public static String[] VideoFieldDominanceStrings = {"upper", "lower", "none"};
    public static String[] TransitionAlignmentStrings = {"start-black", "center", "end-black"};

    public enum MediaType {
        video(0),
        audio(1);

        private int numVal;

        MediaType(int i) {
            this.numVal = i;
        }

        public int getNumVal() {
            return this.numVal;
        }
    }

    public enum VideoAlphaType {
        black(0);

        private int numVal;

        VideoAlphaType(int i) {
            this.numVal = i;
        }

        public int getNumVal() {
            return this.numVal;
        }
    }

    public enum VideoAspectRatio {
        square(0);

        private int numVal;

        VideoAspectRatio(int i) {
            this.numVal = i;
        }

        public int getNumVal() {
            return this.numVal;
        }
    }

    public enum VideoFieldDominance {
        upper(0),
        lower(1),
        none(2);

        private int numVal;

        VideoFieldDominance(int i) {
            this.numVal = i;
        }

        public int getNumVal() {
            return this.numVal;
        }
    }

    public enum VideoTimebase {
        P_30(30);

        private int numVal;

        VideoTimebase(int i) {
            this.numVal = i;
        }

        public int getNumVal() {
            return this.numVal;
        }
    }

    public enum TransitionAlignment {
        start(0),
        center(1),
        end(2);

        private int numVal;

        TransitionAlignment(int i) {
            this.numVal = i;
        }

        public int getNumVal() {
            return this.numVal;
        }
    }

    public static boolean isEmptyTrackClip(TrackItem trackItem) {
        return trackItem instanceof EmptyAudioTrackClip;
    }
}
