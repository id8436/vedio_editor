package com.google.android.exoplayer.smoothstreaming;

import android.net.Uri;
import android.util.Base64;
import android.util.Pair;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifest;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.CodecSpecificDataUtil;
import com.google.android.exoplayer.util.ManifestParser;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes2.dex */
public class SmoothStreamingManifestParser implements ManifestParser<SmoothStreamingManifest> {
    private final XmlPullParserFactory xmlParserFactory;

    public SmoothStreamingManifestParser() {
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer.util.ManifestParser
    public SmoothStreamingManifest parse(InputStream inputStream, String str, String str2, Uri uri) throws IOException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, str);
            return (SmoothStreamingManifest) new SmoothStreamMediaParser(null, uri).parse(xmlPullParserNewPullParser);
        } catch (XmlPullParserException e2) {
            throw new ParserException(e2);
        }
    }

    public class MissingFieldException extends ParserException {
        public MissingFieldException(String str) {
            super("Missing required field: " + str);
        }
    }

    abstract class ElementParser {
        private final Uri baseUri;
        private final List<Pair<String, Object>> normalizedAttributes = new LinkedList();
        private final ElementParser parent;
        private final String tag;

        protected abstract Object build();

        public ElementParser(ElementParser elementParser, Uri uri, String str) {
            this.parent = elementParser;
            this.baseUri = uri;
            this.tag = str;
        }

        public final Object parse(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            int i = 0;
            boolean z = false;
            while (true) {
                switch (xmlPullParser.getEventType()) {
                    case 1:
                        return null;
                    case 2:
                        String name = xmlPullParser.getName();
                        if (this.tag.equals(name)) {
                            parseStartTag(xmlPullParser);
                            z = true;
                        } else if (z) {
                            if (i > 0) {
                                i++;
                            } else if (handleChildInline(name)) {
                                parseStartTag(xmlPullParser);
                            } else {
                                ElementParser elementParserNewChildParser = newChildParser(this, name, this.baseUri);
                                if (elementParserNewChildParser != null) {
                                    addChild(elementParserNewChildParser.parse(xmlPullParser));
                                } else {
                                    i = 1;
                                }
                            }
                        }
                        break;
                    case 3:
                        if (!z) {
                            continue;
                        } else if (i > 0) {
                            i--;
                        } else {
                            String name2 = xmlPullParser.getName();
                            parseEndTag(xmlPullParser);
                            if (!handleChildInline(name2)) {
                                return build();
                            }
                        }
                        break;
                    case 4:
                        if (z && i == 0) {
                            parseText(xmlPullParser);
                        }
                        break;
                }
                xmlPullParser.next();
            }
        }

        private ElementParser newChildParser(ElementParser elementParser, String str, Uri uri) {
            if (TrackElementParser.TAG.equals(str)) {
                return new TrackElementParser(elementParser, uri);
            }
            if (ProtectionElementParser.TAG.equals(str)) {
                return new ProtectionElementParser(elementParser, uri);
            }
            if (StreamElementParser.TAG.equals(str)) {
                return new StreamElementParser(elementParser, uri);
            }
            return null;
        }

        protected final void putNormalizedAttribute(String str, Object obj) {
            this.normalizedAttributes.add(Pair.create(str, obj));
        }

        protected final Object getNormalizedAttribute(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.normalizedAttributes.size()) {
                    Pair<String, Object> pair = this.normalizedAttributes.get(i2);
                    if (!((String) pair.first).equals(str)) {
                        i = i2 + 1;
                    } else {
                        return pair.second;
                    }
                } else {
                    if (this.parent == null) {
                        return null;
                    }
                    return this.parent.getNormalizedAttribute(str);
                }
            }
        }

        protected boolean handleChildInline(String str) {
            return false;
        }

        protected void parseStartTag(XmlPullParser xmlPullParser) throws ParserException {
        }

        protected void parseText(XmlPullParser xmlPullParser) throws ParserException {
        }

        protected void parseEndTag(XmlPullParser xmlPullParser) throws ParserException {
        }

        protected void addChild(Object obj) {
        }

        protected final String parseRequiredString(XmlPullParser xmlPullParser, String str) throws MissingFieldException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new MissingFieldException(str);
        }

        protected final int parseInt(XmlPullParser xmlPullParser, String str, int i) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e2) {
                    throw new ParserException(e2);
                }
            }
            return i;
        }

        protected final int parseRequiredInt(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e2) {
                    throw new ParserException(e2);
                }
            }
            throw new MissingFieldException(str);
        }

        protected final long parseLong(XmlPullParser xmlPullParser, String str, long j) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Long.parseLong(attributeValue);
                } catch (NumberFormatException e2) {
                    throw new ParserException(e2);
                }
            }
            return j;
        }

        protected final long parseRequiredLong(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Long.parseLong(attributeValue);
                } catch (NumberFormatException e2) {
                    throw new ParserException(e2);
                }
            }
            throw new MissingFieldException(str);
        }

        protected final boolean parseBoolean(XmlPullParser xmlPullParser, String str, boolean z) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return Boolean.parseBoolean(attributeValue);
            }
            return z;
        }
    }

    class SmoothStreamMediaParser extends ElementParser {
        private static final String KEY_DURATION = "Duration";
        private static final String KEY_DVR_WINDOW_LENGTH = "DVRWindowLength";
        private static final String KEY_IS_LIVE = "IsLive";
        private static final String KEY_LOOKAHEAD_COUNT = "LookaheadCount";
        private static final String KEY_MAJOR_VERSION = "MajorVersion";
        private static final String KEY_MINOR_VERSION = "MinorVersion";
        private static final String KEY_TIME_SCALE = "TimeScale";
        public static final String TAG = "SmoothStreamingMedia";
        private long duration;
        private long dvrWindowLength;
        private boolean isLive;
        private int lookAheadCount;
        private int majorVersion;
        private int minorVersion;
        private SmoothStreamingManifest.ProtectionElement protectionElement;
        private List<SmoothStreamingManifest.StreamElement> streamElements;
        private long timescale;

        public SmoothStreamMediaParser(ElementParser elementParser, Uri uri) {
            super(elementParser, uri, TAG);
            this.lookAheadCount = -1;
            this.protectionElement = null;
            this.streamElements = new LinkedList();
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) throws ParserException {
            this.majorVersion = parseRequiredInt(xmlPullParser, KEY_MAJOR_VERSION);
            this.minorVersion = parseRequiredInt(xmlPullParser, KEY_MINOR_VERSION);
            this.timescale = parseLong(xmlPullParser, KEY_TIME_SCALE, 10000000L);
            this.duration = parseRequiredLong(xmlPullParser, KEY_DURATION);
            this.dvrWindowLength = parseLong(xmlPullParser, KEY_DVR_WINDOW_LENGTH, 0L);
            this.lookAheadCount = parseInt(xmlPullParser, KEY_LOOKAHEAD_COUNT, -1);
            this.isLive = parseBoolean(xmlPullParser, KEY_IS_LIVE, false);
            putNormalizedAttribute(KEY_TIME_SCALE, Long.valueOf(this.timescale));
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void addChild(Object obj) {
            if (obj instanceof SmoothStreamingManifest.StreamElement) {
                this.streamElements.add((SmoothStreamingManifest.StreamElement) obj);
            } else if (obj instanceof SmoothStreamingManifest.ProtectionElement) {
                Assertions.checkState(this.protectionElement == null);
                this.protectionElement = (SmoothStreamingManifest.ProtectionElement) obj;
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public Object build() {
            SmoothStreamingManifest.StreamElement[] streamElementArr = new SmoothStreamingManifest.StreamElement[this.streamElements.size()];
            this.streamElements.toArray(streamElementArr);
            return new SmoothStreamingManifest(this.majorVersion, this.minorVersion, this.timescale, this.duration, this.dvrWindowLength, this.lookAheadCount, this.isLive, this.protectionElement, streamElementArr);
        }
    }

    class ProtectionElementParser extends ElementParser {
        public static final String KEY_SYSTEM_ID = "SystemID";
        public static final String TAG = "Protection";
        public static final String TAG_PROTECTION_HEADER = "ProtectionHeader";
        private boolean inProtectionHeader;
        private byte[] initData;
        private UUID uuid;

        public ProtectionElementParser(ElementParser elementParser, Uri uri) {
            super(elementParser, uri, TAG);
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public boolean handleChildInline(String str) {
            return TAG_PROTECTION_HEADER.equals(str);
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) {
            if (TAG_PROTECTION_HEADER.equals(xmlPullParser.getName())) {
                this.inProtectionHeader = true;
                this.uuid = UUID.fromString(xmlPullParser.getAttributeValue(null, KEY_SYSTEM_ID));
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseText(XmlPullParser xmlPullParser) {
            if (this.inProtectionHeader) {
                this.initData = Base64.decode(xmlPullParser.getText(), 0);
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseEndTag(XmlPullParser xmlPullParser) {
            if (TAG_PROTECTION_HEADER.equals(xmlPullParser.getName())) {
                this.inProtectionHeader = false;
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public Object build() {
            return new SmoothStreamingManifest.ProtectionElement(this.uuid, this.initData);
        }
    }

    class StreamElementParser extends ElementParser {
        private static final String KEY_DISPLAY_HEIGHT = "DisplayHeight";
        private static final String KEY_DISPLAY_WIDTH = "DisplayWidth";
        private static final String KEY_FRAGMENT_DURATION = "d";
        private static final String KEY_FRAGMENT_REPEAT_COUNT = "r";
        private static final String KEY_FRAGMENT_START_TIME = "t";
        private static final String KEY_LANGUAGE = "Language";
        private static final String KEY_MAX_HEIGHT = "MaxHeight";
        private static final String KEY_MAX_WIDTH = "MaxWidth";
        private static final String KEY_NAME = "Name";
        private static final String KEY_QUALITY_LEVELS = "QualityLevels";
        private static final String KEY_SUB_TYPE = "Subtype";
        private static final String KEY_TIME_SCALE = "TimeScale";
        private static final String KEY_TYPE = "Type";
        private static final String KEY_TYPE_AUDIO = "audio";
        private static final String KEY_TYPE_TEXT = "text";
        private static final String KEY_TYPE_VIDEO = "video";
        private static final String KEY_URL = "Url";
        public static final String TAG = "StreamIndex";
        private static final String TAG_STREAM_FRAGMENT = "c";
        private final Uri baseUri;
        private int displayHeight;
        private int displayWidth;
        private String language;
        private long lastChunkDuration;
        private int maxHeight;
        private int maxWidth;
        private String name;
        private int qualityLevels;
        private ArrayList<Long> startTimes;
        private String subType;
        private long timescale;
        private final List<SmoothStreamingManifest.TrackElement> tracks;
        private int type;
        private String url;

        public StreamElementParser(ElementParser elementParser, Uri uri) {
            super(elementParser, uri, TAG);
            this.baseUri = uri;
            this.tracks = new LinkedList();
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public boolean handleChildInline(String str) {
            return TAG_STREAM_FRAGMENT.equals(str);
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) throws ParserException {
            if (TAG_STREAM_FRAGMENT.equals(xmlPullParser.getName())) {
                parseStreamFragmentStartTag(xmlPullParser);
            } else {
                parseStreamElementStartTag(xmlPullParser);
            }
        }

        private void parseStreamFragmentStartTag(XmlPullParser xmlPullParser) throws ParserException {
            int size = this.startTimes.size();
            long jLongValue = parseLong(xmlPullParser, KEY_FRAGMENT_START_TIME, -1L);
            if (jLongValue == -1) {
                if (size == 0) {
                    jLongValue = 0;
                } else if (this.lastChunkDuration != -1) {
                    jLongValue = this.startTimes.get(size - 1).longValue() + this.lastChunkDuration;
                } else {
                    throw new ParserException("Unable to infer start time");
                }
            }
            int i = size + 1;
            this.startTimes.add(Long.valueOf(jLongValue));
            this.lastChunkDuration = parseLong(xmlPullParser, KEY_FRAGMENT_DURATION, -1L);
            long j = parseLong(xmlPullParser, KEY_FRAGMENT_REPEAT_COUNT, 1L);
            if (j > 1 && this.lastChunkDuration == -1) {
                throw new ParserException("Repeated chunk with unspecified duration");
            }
            for (int i2 = 1; i2 < j; i2++) {
                i++;
                this.startTimes.add(Long.valueOf((this.lastChunkDuration * ((long) i2)) + jLongValue));
            }
        }

        private void parseStreamElementStartTag(XmlPullParser xmlPullParser) throws ParserException {
            this.type = parseType(xmlPullParser);
            putNormalizedAttribute(KEY_TYPE, Integer.valueOf(this.type));
            if (this.type == 2) {
                this.subType = parseRequiredString(xmlPullParser, KEY_SUB_TYPE);
            } else {
                this.subType = xmlPullParser.getAttributeValue(null, KEY_SUB_TYPE);
            }
            this.name = xmlPullParser.getAttributeValue(null, KEY_NAME);
            this.qualityLevels = parseInt(xmlPullParser, KEY_QUALITY_LEVELS, -1);
            this.url = parseRequiredString(xmlPullParser, KEY_URL);
            this.maxWidth = parseInt(xmlPullParser, KEY_MAX_WIDTH, -1);
            this.maxHeight = parseInt(xmlPullParser, KEY_MAX_HEIGHT, -1);
            this.displayWidth = parseInt(xmlPullParser, KEY_DISPLAY_WIDTH, -1);
            this.displayHeight = parseInt(xmlPullParser, KEY_DISPLAY_HEIGHT, -1);
            this.language = xmlPullParser.getAttributeValue(null, KEY_LANGUAGE);
            this.timescale = parseInt(xmlPullParser, KEY_TIME_SCALE, -1);
            if (this.timescale == -1) {
                this.timescale = ((Long) getNormalizedAttribute(KEY_TIME_SCALE)).longValue();
            }
            this.startTimes = new ArrayList<>();
        }

        private int parseType(XmlPullParser xmlPullParser) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, KEY_TYPE);
            if (attributeValue != null) {
                if ("audio".equalsIgnoreCase(attributeValue)) {
                    return 0;
                }
                if ("video".equalsIgnoreCase(attributeValue)) {
                    return 1;
                }
                if ("text".equalsIgnoreCase(attributeValue)) {
                    return 2;
                }
                throw new ParserException("Invalid key value[" + attributeValue + "]");
            }
            throw new MissingFieldException(KEY_TYPE);
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void addChild(Object obj) {
            if (obj instanceof SmoothStreamingManifest.TrackElement) {
                this.tracks.add((SmoothStreamingManifest.TrackElement) obj);
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public Object build() {
            SmoothStreamingManifest.TrackElement[] trackElementArr = new SmoothStreamingManifest.TrackElement[this.tracks.size()];
            this.tracks.toArray(trackElementArr);
            return new SmoothStreamingManifest.StreamElement(this.baseUri, this.url, this.type, this.subType, this.timescale, this.name, this.qualityLevels, this.maxWidth, this.maxHeight, this.displayWidth, this.displayHeight, this.language, trackElementArr, this.startTimes, this.lastChunkDuration);
        }
    }

    class TrackElementParser extends ElementParser {
        private static final String KEY_AUDIO_TAG = "AudioTag";
        private static final String KEY_BITRATE = "Bitrate";
        private static final String KEY_BITS_PER_SAMPLE = "BitsPerSample";
        private static final String KEY_CHANNELS = "Channels";
        private static final String KEY_CODEC_PRIVATE_DATA = "CodecPrivateData";
        private static final String KEY_FOUR_CC = "FourCC";
        private static final String KEY_INDEX = "Index";
        private static final String KEY_MAX_HEIGHT = "MaxHeight";
        private static final String KEY_MAX_WIDTH = "MaxWidth";
        private static final String KEY_NAL_UNIT_LENGTH_FIELD = "NALUnitLengthField";
        private static final String KEY_PACKET_SIZE = "PacketSize";
        private static final String KEY_SAMPLING_RATE = "SamplingRate";
        private static final String KEY_TYPE = "Type";
        public static final String TAG = "QualityLevel";
        private int audioTag;
        private int bitPerSample;
        private int bitrate;
        private int channels;
        private String content;
        private final List<byte[]> csd;
        private int index;
        private int level;
        private int maxHeight;
        private int maxWidth;
        private String mimeType;
        private int nalUnitLengthField;
        private int packetSize;
        private int profile;
        private int samplingRate;

        public TrackElementParser(ElementParser elementParser, Uri uri) {
            super(elementParser, uri, TAG);
            this.csd = new LinkedList();
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) throws ParserException {
            int iIntValue = ((Integer) getNormalizedAttribute(KEY_TYPE)).intValue();
            this.content = null;
            this.index = parseInt(xmlPullParser, KEY_INDEX, -1);
            this.bitrate = parseRequiredInt(xmlPullParser, KEY_BITRATE);
            this.nalUnitLengthField = parseInt(xmlPullParser, KEY_NAL_UNIT_LENGTH_FIELD, 4);
            if (iIntValue == 1) {
                this.maxHeight = parseRequiredInt(xmlPullParser, KEY_MAX_HEIGHT);
                this.maxWidth = parseRequiredInt(xmlPullParser, KEY_MAX_WIDTH);
                this.mimeType = fourCCToMimeType(parseRequiredString(xmlPullParser, KEY_FOUR_CC));
            } else {
                this.maxHeight = -1;
                this.maxWidth = -1;
                String attributeValue = xmlPullParser.getAttributeValue(null, KEY_FOUR_CC);
                this.mimeType = attributeValue != null ? fourCCToMimeType(attributeValue) : iIntValue == 0 ? "audio/mp4a-latm" : null;
            }
            if (iIntValue == 0) {
                this.samplingRate = parseRequiredInt(xmlPullParser, KEY_SAMPLING_RATE);
                this.channels = parseRequiredInt(xmlPullParser, KEY_CHANNELS);
                this.bitPerSample = parseRequiredInt(xmlPullParser, KEY_BITS_PER_SAMPLE);
                this.packetSize = parseRequiredInt(xmlPullParser, KEY_PACKET_SIZE);
                this.audioTag = parseRequiredInt(xmlPullParser, KEY_AUDIO_TAG);
            } else {
                this.samplingRate = -1;
                this.channels = -1;
                this.bitPerSample = -1;
                this.packetSize = -1;
                this.audioTag = -1;
            }
            String attributeValue2 = xmlPullParser.getAttributeValue(null, KEY_CODEC_PRIVATE_DATA);
            if (attributeValue2 != null && attributeValue2.length() > 0) {
                byte[] bArrHexStringToByteArray = hexStringToByteArray(attributeValue2);
                byte[][] bArrSplitNalUnits = CodecSpecificDataUtil.splitNalUnits(bArrHexStringToByteArray);
                if (bArrSplitNalUnits == null) {
                    this.csd.add(bArrHexStringToByteArray);
                    return;
                }
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < bArrSplitNalUnits.length) {
                        Pair<Integer, Integer> spsNalUnit = CodecSpecificDataUtil.parseSpsNalUnit(bArrSplitNalUnits[i2]);
                        if (spsNalUnit != null) {
                            this.profile = ((Integer) spsNalUnit.first).intValue();
                            this.level = ((Integer) spsNalUnit.second).intValue();
                        }
                        this.csd.add(bArrSplitNalUnits[i2]);
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public void parseText(XmlPullParser xmlPullParser) {
            this.content = xmlPullParser.getText();
        }

        @Override // com.google.android.exoplayer.smoothstreaming.SmoothStreamingManifestParser.ElementParser
        public Object build() {
            byte[][] bArr;
            byte[][] bArr2 = (byte[][]) null;
            if (this.csd.isEmpty()) {
                bArr = bArr2;
            } else {
                bArr = new byte[this.csd.size()][];
                this.csd.toArray(bArr);
            }
            return new SmoothStreamingManifest.TrackElement(this.index, this.bitrate, this.mimeType, bArr, this.profile, this.level, this.maxWidth, this.maxHeight, this.samplingRate, this.channels, this.packetSize, this.audioTag, this.bitPerSample, this.nalUnitLengthField, this.content);
        }

        private static String fourCCToMimeType(String str) {
            if (str.equalsIgnoreCase("H264") || str.equalsIgnoreCase("X264") || str.equalsIgnoreCase("AVC1") || str.equalsIgnoreCase("DAVC")) {
                return "video/avc";
            }
            if (str.equalsIgnoreCase("AAC") || str.equalsIgnoreCase("AACL") || str.equalsIgnoreCase("AACH") || str.equalsIgnoreCase("AACP")) {
                return "audio/mp4a-latm";
            }
            if (str.equalsIgnoreCase("TTML")) {
                return "application/ttml+xml";
            }
            return null;
        }

        private static byte[] hexStringToByteArray(String str) {
            byte[] bArr = new byte[str.length() / 2];
            for (int i = 0; i < bArr.length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) (Character.digit(str.charAt(i2 + 1), 16) + (Character.digit(str.charAt(i2), 16) << 4));
            }
            return bArr;
        }
    }
}
