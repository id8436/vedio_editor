package com.google.android.exoplayer.dash.mpd;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.dash.mpd.SegmentBase;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.ManifestParser;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;
import com.google.gdata.client.spreadsheet.CellQuery;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes2.dex */
public class MediaPresentationDescriptionParser extends DefaultHandler implements ManifestParser<MediaPresentationDescription> {
    private final XmlPullParserFactory xmlParserFactory;

    public MediaPresentationDescriptionParser() {
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer.util.ManifestParser
    public MediaPresentationDescription parse(InputStream inputStream, String str, String str2, Uri uri) throws IOException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, str);
            if (xmlPullParserNewPullParser.next() != 2 || !"MPD".equals(xmlPullParserNewPullParser.getName())) {
                throw new ParserException("inputStream does not contain a valid media presentation description");
            }
            return parseMediaPresentationDescription(xmlPullParserNewPullParser, str2, uri);
        } catch (ParseException e2) {
            throw new ParserException(e2);
        } catch (XmlPullParserException e3) {
            throw new ParserException(e3);
        }
    }

    protected MediaPresentationDescription parseMediaPresentationDescription(XmlPullParser xmlPullParser, String str, Uri uri) throws XmlPullParserException, IOException, ParseException {
        long dateTime = parseDateTime(xmlPullParser, "availabilityStartTime", -1L);
        long duration = parseDuration(xmlPullParser, "mediaPresentationDuration", -1L);
        long duration2 = parseDuration(xmlPullParser, "minBufferTime", -1L);
        String attributeValue = xmlPullParser.getAttributeValue(null, "type");
        boolean zEquals = attributeValue != null ? attributeValue.equals("dynamic") : false;
        long duration3 = zEquals ? parseDuration(xmlPullParser, "minimumUpdatePeriod", -1L) : -1L;
        long duration4 = zEquals ? parseDuration(xmlPullParser, "timeShiftBufferDepth", -1L) : -1L;
        UtcTimingElement utcTiming = null;
        ArrayList arrayList = new ArrayList();
        Uri baseUrl = uri;
        do {
            xmlPullParser.next();
            if (isStartTag(xmlPullParser, "BaseURL")) {
                baseUrl = parseBaseUrl(xmlPullParser, baseUrl);
            } else if (isStartTag(xmlPullParser, "UTCTiming")) {
                utcTiming = parseUtcTiming(xmlPullParser);
            } else if (isStartTag(xmlPullParser, "Period")) {
                arrayList.add(parsePeriod(xmlPullParser, str, baseUrl, duration));
            }
        } while (!isEndTag(xmlPullParser, "MPD"));
        return buildMediaPresentationDescription(dateTime, duration, duration2, zEquals, duration3, duration4, utcTiming, arrayList);
    }

    protected MediaPresentationDescription buildMediaPresentationDescription(long j, long j2, long j3, boolean z, long j4, long j5, UtcTimingElement utcTimingElement, List<Period> list) {
        return new MediaPresentationDescription(j, j2, j3, z, j4, j5, utcTimingElement, list);
    }

    protected UtcTimingElement parseUtcTiming(XmlPullParser xmlPullParser) {
        return buildUtcTimingElement(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, "value"));
    }

    protected UtcTimingElement buildUtcTimingElement(String str, String str2) {
        return new UtcTimingElement(str, str2);
    }

    protected Period parsePeriod(XmlPullParser xmlPullParser, String str, Uri uri, long j) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        long duration = parseDuration(xmlPullParser, "start", 0L);
        long duration2 = parseDuration(xmlPullParser, "duration", j);
        SegmentBase segmentTemplate = null;
        ArrayList arrayList = new ArrayList();
        Uri baseUrl = uri;
        do {
            xmlPullParser.next();
            if (isStartTag(xmlPullParser, "BaseURL")) {
                baseUrl = parseBaseUrl(xmlPullParser, baseUrl);
            } else if (isStartTag(xmlPullParser, "AdaptationSet")) {
                arrayList.add(parseAdaptationSet(xmlPullParser, str, baseUrl, duration, duration2, segmentTemplate));
            } else if (isStartTag(xmlPullParser, "SegmentBase")) {
                segmentTemplate = parseSegmentBase(xmlPullParser, baseUrl, null);
            } else if (isStartTag(xmlPullParser, "SegmentList")) {
                segmentTemplate = parseSegmentList(xmlPullParser, baseUrl, null, duration2);
            } else if (isStartTag(xmlPullParser, "SegmentTemplate")) {
                segmentTemplate = parseSegmentTemplate(xmlPullParser, baseUrl, null, duration2);
            }
        } while (!isEndTag(xmlPullParser, "Period"));
        return buildPeriod(attributeValue, duration, duration2, arrayList);
    }

    protected Period buildPeriod(String str, long j, long j2, List<AdaptationSet> list) {
        return new Period(str, j, j2, list);
    }

    protected AdaptationSet parseAdaptationSet(XmlPullParser xmlPullParser, String str, Uri uri, long j, long j2, SegmentBase segmentBase) throws XmlPullParserException, IOException {
        ArrayList arrayList;
        int i;
        int iCheckAdaptationSetTypeConsistency;
        String attributeValue = xmlPullParser.getAttributeValue(null, "mimeType");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "lang");
        int adaptationSetTypeFromMimeType = parseAdaptationSetTypeFromMimeType(attributeValue);
        int i2 = -1;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = new ArrayList();
        SegmentBase segmentTemplate = segmentBase;
        Uri baseUrl = uri;
        while (true) {
            xmlPullParser.next();
            if (isStartTag(xmlPullParser, "BaseURL")) {
                baseUrl = parseBaseUrl(xmlPullParser, baseUrl);
                arrayList = arrayList2;
                i = i2;
                iCheckAdaptationSetTypeConsistency = adaptationSetTypeFromMimeType;
            } else if (isStartTag(xmlPullParser, "ContentProtection")) {
                arrayList = arrayList2 == null ? new ArrayList() : arrayList2;
                arrayList.add(parseContentProtection(xmlPullParser));
                i = i2;
                iCheckAdaptationSetTypeConsistency = adaptationSetTypeFromMimeType;
            } else if (isStartTag(xmlPullParser, "ContentComponent")) {
                int i3 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "id"));
                iCheckAdaptationSetTypeConsistency = checkAdaptationSetTypeConsistency(adaptationSetTypeFromMimeType, parseAdaptationSetType(xmlPullParser.getAttributeValue(null, "contentType")));
                i = i3;
                arrayList = arrayList2;
            } else if (isStartTag(xmlPullParser, "Representation")) {
                Representation representation = parseRepresentation(xmlPullParser, str, baseUrl, j, j2, attributeValue, attributeValue2, segmentTemplate);
                int iCheckAdaptationSetTypeConsistency2 = checkAdaptationSetTypeConsistency(adaptationSetTypeFromMimeType, parseAdaptationSetTypeFromMimeType(representation.format.mimeType));
                arrayList3.add(representation);
                i = i2;
                iCheckAdaptationSetTypeConsistency = iCheckAdaptationSetTypeConsistency2;
                arrayList = arrayList2;
            } else if (isStartTag(xmlPullParser, "SegmentBase")) {
                segmentTemplate = parseSegmentBase(xmlPullParser, baseUrl, (SegmentBase.SingleSegmentBase) segmentTemplate);
                arrayList = arrayList2;
                i = i2;
                iCheckAdaptationSetTypeConsistency = adaptationSetTypeFromMimeType;
            } else if (isStartTag(xmlPullParser, "SegmentList")) {
                segmentTemplate = parseSegmentList(xmlPullParser, baseUrl, (SegmentBase.SegmentList) segmentTemplate, j2);
                arrayList = arrayList2;
                i = i2;
                iCheckAdaptationSetTypeConsistency = adaptationSetTypeFromMimeType;
            } else if (isStartTag(xmlPullParser, "SegmentTemplate")) {
                segmentTemplate = parseSegmentTemplate(xmlPullParser, baseUrl, (SegmentBase.SegmentTemplate) segmentTemplate, j2);
                arrayList = arrayList2;
                i = i2;
                iCheckAdaptationSetTypeConsistency = adaptationSetTypeFromMimeType;
            } else {
                if (isStartTag(xmlPullParser)) {
                    parseAdaptationSetChild(xmlPullParser);
                }
                arrayList = arrayList2;
                i = i2;
                iCheckAdaptationSetTypeConsistency = adaptationSetTypeFromMimeType;
            }
            if (isEndTag(xmlPullParser, "AdaptationSet")) {
                return buildAdaptationSet(i, iCheckAdaptationSetTypeConsistency, arrayList3, arrayList);
            }
            arrayList2 = arrayList;
            i2 = i;
            adaptationSetTypeFromMimeType = iCheckAdaptationSetTypeConsistency;
        }
    }

    protected AdaptationSet buildAdaptationSet(int i, int i2, List<Representation> list, List<ContentProtection> list2) {
        return new AdaptationSet(i, i2, list, list2);
    }

    protected int parseAdaptationSetType(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if ("audio".equals(str)) {
            return 1;
        }
        if ("video".equals(str)) {
            return 0;
        }
        return "text".equals(str) ? 2 : -1;
    }

    protected int parseAdaptationSetTypeFromMimeType(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (MimeTypes.isAudio(str)) {
            return 1;
        }
        if (MimeTypes.isVideo(str)) {
            return 0;
        }
        return (MimeTypes.isText(str) || MimeTypes.isTtml(str)) ? 2 : -1;
    }

    private int checkAdaptationSetTypeConsistency(int i, int i2) {
        if (i == -1) {
            return i2;
        }
        if (i2 != -1) {
            Assertions.checkState(i == i2);
            return i;
        }
        return i;
    }

    protected ContentProtection parseContentProtection(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return buildContentProtection(xmlPullParser.getAttributeValue(null, "schemeIdUri"));
    }

    protected ContentProtection buildContentProtection(String str) {
        return new ContentProtection(str, null, null);
    }

    protected void parseAdaptationSetChild(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
    }

    protected Representation parseRepresentation(XmlPullParser xmlPullParser, String str, Uri uri, long j, long j2, String str2, String str3, SegmentBase segmentBase) throws XmlPullParserException, IOException {
        int i;
        SegmentBase segmentTemplate;
        Uri baseUrl;
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        int i2 = parseInt(xmlPullParser, "bandwidth");
        int i3 = parseInt(xmlPullParser, "audioSamplingRate");
        int i4 = parseInt(xmlPullParser, "width");
        int i5 = parseInt(xmlPullParser, "height");
        String string = parseString(xmlPullParser, "mimeType", str2);
        String string2 = parseString(xmlPullParser, "codecs", null);
        int i6 = -1;
        SegmentBase segmentBase2 = segmentBase;
        Uri uri2 = uri;
        while (true) {
            xmlPullParser.next();
            if (isStartTag(xmlPullParser, "BaseURL")) {
                i = i6;
                segmentTemplate = segmentBase2;
                baseUrl = parseBaseUrl(xmlPullParser, uri2);
            } else if (isStartTag(xmlPullParser, "AudioChannelConfiguration")) {
                i = Integer.parseInt(xmlPullParser.getAttributeValue(null, "value"));
                segmentTemplate = segmentBase2;
                baseUrl = uri2;
            } else if (isStartTag(xmlPullParser, "SegmentBase")) {
                i = i6;
                segmentTemplate = parseSegmentBase(xmlPullParser, uri2, (SegmentBase.SingleSegmentBase) segmentBase2);
                baseUrl = uri2;
            } else if (isStartTag(xmlPullParser, "SegmentList")) {
                i = i6;
                segmentTemplate = parseSegmentList(xmlPullParser, uri2, (SegmentBase.SegmentList) segmentBase2, j2);
                baseUrl = uri2;
            } else if (isStartTag(xmlPullParser, "SegmentTemplate")) {
                i = i6;
                segmentTemplate = parseSegmentTemplate(xmlPullParser, uri2, (SegmentBase.SegmentTemplate) segmentBase2, j2);
                baseUrl = uri2;
            } else {
                i = i6;
                segmentTemplate = segmentBase2;
                baseUrl = uri2;
            }
            if (isEndTag(xmlPullParser, "Representation")) {
                break;
            }
            i6 = i;
            segmentBase2 = segmentTemplate;
            uri2 = baseUrl;
        }
        return buildRepresentation(j, j2, str, -1, buildFormat(attributeValue, string, i4, i5, i, i3, i2, str3, string2), segmentTemplate != null ? segmentTemplate : new SegmentBase.SingleSegmentBase(baseUrl));
    }

    protected Format buildFormat(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3, String str4) {
        return new Format(str, str2, i, i2, i3, i4, i5, str3, str4);
    }

    protected Representation buildRepresentation(long j, long j2, String str, int i, Format format, SegmentBase segmentBase) {
        return Representation.newInstance(j, j2, str, i, format, segmentBase);
    }

    protected SegmentBase.SingleSegmentBase parseSegmentBase(XmlPullParser xmlPullParser, Uri uri, SegmentBase.SingleSegmentBase singleSegmentBase) throws XmlPullParserException, IOException {
        long j;
        long j2 = parseLong(xmlPullParser, "timescale", singleSegmentBase != null ? singleSegmentBase.timescale : 1L);
        long j3 = parseLong(xmlPullParser, "presentationTimeOffset", singleSegmentBase != null ? singleSegmentBase.presentationTimeOffset : 0L);
        long j4 = singleSegmentBase != null ? singleSegmentBase.indexStart : 0L;
        long j5 = singleSegmentBase != null ? singleSegmentBase.indexLength : -1L;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] strArrSplit = attributeValue.split("-");
            j4 = Long.parseLong(strArrSplit[0]);
            j = (Long.parseLong(strArrSplit[1]) - j4) + 1;
        } else {
            j = j5;
        }
        RangedUri rangedUri = singleSegmentBase != null ? singleSegmentBase.initialization : null;
        while (true) {
            xmlPullParser.next();
            RangedUri initialization = isStartTag(xmlPullParser, "Initialization") ? parseInitialization(xmlPullParser, uri) : rangedUri;
            if (isEndTag(xmlPullParser, "SegmentBase")) {
                return buildSingleSegmentBase(initialization, j2, j3, uri, j4, j);
            }
            rangedUri = initialization;
        }
    }

    protected SegmentBase.SingleSegmentBase buildSingleSegmentBase(RangedUri rangedUri, long j, long j2, Uri uri, long j3, long j4) {
        return new SegmentBase.SingleSegmentBase(rangedUri, j, j2, uri, j3, j4);
    }

    protected SegmentBase.SegmentList parseSegmentList(XmlPullParser xmlPullParser, Uri uri, SegmentBase.SegmentList segmentList, long j) throws XmlPullParserException, IOException {
        List<RangedUri> list;
        List<SegmentBase.SegmentTimelineElement> list2;
        RangedUri rangedUri;
        long j2 = parseLong(xmlPullParser, "timescale", segmentList != null ? segmentList.timescale : 1L);
        long j3 = parseLong(xmlPullParser, "presentationTimeOffset", segmentList != null ? segmentList.presentationTimeOffset : 0L);
        long j4 = parseLong(xmlPullParser, "duration", segmentList != null ? segmentList.duration : -1L);
        int i = parseInt(xmlPullParser, "startNumber", segmentList != null ? segmentList.startNumber : 1);
        RangedUri initialization = null;
        List<SegmentBase.SegmentTimelineElement> segmentTimeline = null;
        List<RangedUri> arrayList = null;
        do {
            xmlPullParser.next();
            if (isStartTag(xmlPullParser, "Initialization")) {
                initialization = parseInitialization(xmlPullParser, uri);
            } else if (isStartTag(xmlPullParser, "SegmentTimeline")) {
                segmentTimeline = parseSegmentTimeline(xmlPullParser);
            } else if (isStartTag(xmlPullParser, "SegmentURL")) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(parseSegmentUrl(xmlPullParser, uri));
            }
        } while (!isEndTag(xmlPullParser, "SegmentList"));
        if (segmentList != null) {
            if (initialization == null) {
                initialization = segmentList.initialization;
            }
            list2 = segmentTimeline != null ? segmentTimeline : segmentList.segmentTimeline;
            if (arrayList == null) {
                arrayList = segmentList.mediaSegments;
            }
            list = arrayList;
            rangedUri = initialization;
        } else {
            list = arrayList;
            list2 = segmentTimeline;
            rangedUri = initialization;
        }
        return buildSegmentList(rangedUri, j2, j3, j, i, j4, list2, list);
    }

    protected SegmentBase.SegmentList buildSegmentList(RangedUri rangedUri, long j, long j2, long j3, int i, long j4, List<SegmentBase.SegmentTimelineElement> list, List<RangedUri> list2) {
        return new SegmentBase.SegmentList(rangedUri, j, j2, j3, i, j4, list, list2);
    }

    protected SegmentBase.SegmentTemplate parseSegmentTemplate(XmlPullParser xmlPullParser, Uri uri, SegmentBase.SegmentTemplate segmentTemplate, long j) throws XmlPullParserException, IOException {
        List<SegmentBase.SegmentTimelineElement> list;
        long j2 = parseLong(xmlPullParser, "timescale", segmentTemplate != null ? segmentTemplate.timescale : 1L);
        long j3 = parseLong(xmlPullParser, "presentationTimeOffset", segmentTemplate != null ? segmentTemplate.presentationTimeOffset : 0L);
        long j4 = parseLong(xmlPullParser, "duration", segmentTemplate != null ? segmentTemplate.duration : -1L);
        int i = parseInt(xmlPullParser, "startNumber", segmentTemplate != null ? segmentTemplate.startNumber : 1);
        UrlTemplate urlTemplate = parseUrlTemplate(xmlPullParser, "media", segmentTemplate != null ? segmentTemplate.mediaTemplate : null);
        UrlTemplate urlTemplate2 = parseUrlTemplate(xmlPullParser, "initialization", segmentTemplate != null ? segmentTemplate.initializationTemplate : null);
        RangedUri initialization = null;
        List<SegmentBase.SegmentTimelineElement> segmentTimeline = null;
        do {
            xmlPullParser.next();
            if (isStartTag(xmlPullParser, "Initialization")) {
                initialization = parseInitialization(xmlPullParser, uri);
            } else if (isStartTag(xmlPullParser, "SegmentTimeline")) {
                segmentTimeline = parseSegmentTimeline(xmlPullParser);
            }
        } while (!isEndTag(xmlPullParser, "SegmentTemplate"));
        if (segmentTemplate != null) {
            if (initialization == null) {
                initialization = segmentTemplate.initialization;
            }
            if (segmentTimeline == null) {
                segmentTimeline = segmentTemplate.segmentTimeline;
            }
            list = segmentTimeline;
        } else {
            list = segmentTimeline;
        }
        return buildSegmentTemplate(initialization, j2, j3, j, i, j4, list, urlTemplate2, urlTemplate, uri);
    }

    protected SegmentBase.SegmentTemplate buildSegmentTemplate(RangedUri rangedUri, long j, long j2, long j3, int i, long j4, List<SegmentBase.SegmentTimelineElement> list, UrlTemplate urlTemplate, UrlTemplate urlTemplate2, Uri uri) {
        return new SegmentBase.SegmentTemplate(rangedUri, j, j2, j3, i, j4, list, urlTemplate, urlTemplate2, uri);
    }

    protected List<SegmentBase.SegmentTimelineElement> parseSegmentTimeline(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long j = 0;
        do {
            xmlPullParser.next();
            if (isStartTag(xmlPullParser, "S")) {
                j = parseLong(xmlPullParser, "t", j);
                long j2 = parseLong(xmlPullParser, "d");
                int i = parseInt(xmlPullParser, "r", 0) + 1;
                int i2 = 0;
                while (i2 < i) {
                    arrayList.add(buildSegmentTimelineElement(j, j2));
                    i2++;
                    j += j2;
                }
            }
        } while (!isEndTag(xmlPullParser, "SegmentTimeline"));
        return arrayList;
    }

    protected SegmentBase.SegmentTimelineElement buildSegmentTimelineElement(long j, long j2) {
        return new SegmentBase.SegmentTimelineElement(j, j2);
    }

    protected UrlTemplate parseUrlTemplate(XmlPullParser xmlPullParser, String str, UrlTemplate urlTemplate) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return UrlTemplate.compile(attributeValue);
        }
        return urlTemplate;
    }

    protected RangedUri parseInitialization(XmlPullParser xmlPullParser, Uri uri) {
        return parseRangedUrl(xmlPullParser, uri, "sourceURL", CellQuery.RANGE);
    }

    protected RangedUri parseSegmentUrl(XmlPullParser xmlPullParser, Uri uri) {
        return parseRangedUrl(xmlPullParser, uri, "media", "mediaRange");
    }

    protected RangedUri parseRangedUrl(XmlPullParser xmlPullParser, Uri uri, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        long j = 0;
        long j2 = -1;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] strArrSplit = attributeValue2.split("-");
            j = Long.parseLong(strArrSplit[0]);
            j2 = 1 + (Long.parseLong(strArrSplit[1]) - j);
        }
        return buildRangedUri(uri, attributeValue, j, j2);
    }

    protected RangedUri buildRangedUri(Uri uri, String str, long j, long j2) {
        return new RangedUri(uri, str, j, j2);
    }

    protected static boolean isEndTag(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 3 && str.equals(xmlPullParser.getName());
    }

    protected static boolean isStartTag(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 2 && str.equals(xmlPullParser.getName());
    }

    protected static boolean isStartTag(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 2;
    }

    protected static long parseDuration(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Util.parseXsDuration(attributeValue);
    }

    protected static long parseDateTime(XmlPullParser xmlPullParser, String str, long j) throws ParseException {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Util.parseXsDateTime(attributeValue);
    }

    protected static Uri parseBaseUrl(XmlPullParser xmlPullParser, Uri uri) throws XmlPullParserException, IOException {
        xmlPullParser.next();
        String text = xmlPullParser.getText();
        Uri uri2 = Uri.parse(text);
        if (!uri2.isAbsolute()) {
            return Uri.withAppendedPath(uri, text);
        }
        return uri2;
    }

    protected static int parseInt(XmlPullParser xmlPullParser, String str) {
        return parseInt(xmlPullParser, str, -1);
    }

    protected static int parseInt(XmlPullParser xmlPullParser, String str, int i) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i : Integer.parseInt(attributeValue);
    }

    protected static long parseLong(XmlPullParser xmlPullParser, String str) {
        return parseLong(xmlPullParser, str, -1L);
    }

    protected static long parseLong(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Long.parseLong(attributeValue);
    }

    protected static String parseString(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }
}
