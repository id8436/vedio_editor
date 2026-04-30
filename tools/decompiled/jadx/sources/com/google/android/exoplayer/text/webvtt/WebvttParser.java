package com.google.android.exoplayer.text.webvtt;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.gdata.data.analytics.Engagement;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class WebvttParser implements SubtitleParser {
    public static final String EXO_HEADER = "EXO-HEADER";
    public static final String OFFSET = "OFFSET:";
    private static final long SAMPLING_RATE = 90;
    private static final String WEBVTT_CUE_TAG_STRING = "\\<.*?>";
    private final boolean filterTags;
    private final boolean strictParsing;
    private static final String WEBVTT_METADATA_HEADER_STRING = "\\S*[:=]\\S*";
    private static final Pattern WEBVTT_METADATA_HEADER = Pattern.compile(WEBVTT_METADATA_HEADER_STRING);
    private static final String WEBVTT_CUE_IDENTIFIER_STRING = "^(?!.*(-->)).*$";
    private static final Pattern WEBVTT_CUE_IDENTIFIER = Pattern.compile(WEBVTT_CUE_IDENTIFIER_STRING);
    private static final String WEBVTT_TIMESTAMP_STRING = "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}";
    private static final Pattern WEBVTT_TIMESTAMP = Pattern.compile(WEBVTT_TIMESTAMP_STRING);
    private static final Pattern MEDIA_TIMESTAMP_OFFSET = Pattern.compile("OFFSET:\\d+");
    private static final Pattern MEDIA_TIMESTAMP = Pattern.compile("MPEGTS:\\d+");

    public WebvttParser() {
        this(true, true);
    }

    public WebvttParser(boolean z, boolean z2) {
        this.strictParsing = z;
        this.filterTags = z2;
    }

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public WebvttSubtitle parse(InputStream inputStream, String str, long j) throws IOException {
        ArrayList arrayList = new ArrayList();
        long j2 = 0;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        String line = bufferedReader.readLine();
        if (line == null) {
            throw new ParserException("Expected WEBVTT or EXO-HEADER. Got null");
        }
        if (line.startsWith(EXO_HEADER)) {
            Matcher matcher = MEDIA_TIMESTAMP_OFFSET.matcher(line);
            if (matcher.find()) {
                j2 = Long.parseLong(matcher.group().substring(7));
            }
            line = bufferedReader.readLine();
            if (line == null) {
                throw new ParserException("Expected WEBVTT. Got null");
            }
        }
        String str2 = line;
        long j3 = j2;
        if (!str2.equals("WEBVTT") && !str2.equals("\ufeffWEBVTT")) {
            throw new ParserException("Expected WEBVTT. Got " + str2);
        }
        while (true) {
            String line2 = bufferedReader.readLine();
            if (line2 == null) {
                throw new ParserException("Expected an empty line after webvtt header");
            }
            if (line2.isEmpty()) {
                while (true) {
                    String line3 = bufferedReader.readLine();
                    if (line3 != null) {
                        if (WEBVTT_CUE_IDENTIFIER.matcher(line3).find()) {
                            line3 = bufferedReader.readLine();
                        }
                        Matcher matcher2 = WEBVTT_TIMESTAMP.matcher(line3);
                        String str3 = "";
                        if (!matcher2.find()) {
                            throw new ParserException("Expected cue start time: " + line3);
                        }
                        long timestampUs = parseTimestampUs(matcher2.group()) + j;
                        if (!matcher2.find()) {
                            throw new ParserException("Expected cue end time: " + line3);
                        }
                        long timestampUs2 = parseTimestampUs(matcher2.group()) + j;
                        while (true) {
                            String line4 = bufferedReader.readLine();
                            if (line4 == null || line4.isEmpty()) {
                                break;
                            }
                            str3 = str3 + processCueText(line4.trim()) + IOUtils.LINE_SEPARATOR_UNIX;
                        }
                        arrayList.add(new WebvttCue(timestampUs, timestampUs2, str3));
                    } else {
                        bufferedReader.close();
                        inputStream.close();
                        String[] strArr = new String[arrayList.size()];
                        long[] jArr = new long[arrayList.size() * 2];
                        int i = 0;
                        while (true) {
                            int i2 = i;
                            if (i2 < arrayList.size()) {
                                int i3 = i2 * 2;
                                WebvttCue webvttCue = (WebvttCue) arrayList.get(i2);
                                jArr[i3] = webvttCue.startTime;
                                jArr[i3 + 1] = webvttCue.endTime;
                                strArr[i2] = webvttCue.text;
                                i = i2 + 1;
                            } else {
                                return new WebvttSubtitle(strArr, j, jArr);
                            }
                        }
                    }
                }
            } else {
                if (!WEBVTT_METADATA_HEADER.matcher(line2).find()) {
                    handleNoncompliantLine(line2);
                }
                if (line2.startsWith("X-TIMESTAMP-MAP")) {
                    Matcher matcher3 = MEDIA_TIMESTAMP.matcher(line2);
                    if (!matcher3.find()) {
                        throw new ParserException("X-TIMESTAMP-MAP doesn't contain media timestamp: " + line2);
                    }
                    j = getAdjustedStartTime(((Long.parseLong(matcher3.group().substring(7)) * 1000) / SAMPLING_RATE) - j3);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public boolean canParse(String str) {
        return "text/vtt".equals(str);
    }

    protected long getAdjustedStartTime(long j) {
        return j;
    }

    protected String processCueText(String str) {
        if (this.filterTags) {
            return str.replaceAll(WEBVTT_CUE_TAG_STRING, "").replaceAll("&lt;", Engagement.Comparison.LT).replaceAll("&gt;", Engagement.Comparison.GT).replaceAll("&nbsp;", " ").replaceAll("&amp;", "&");
        }
        return str;
    }

    protected void handleNoncompliantLine(String str) throws ParserException {
        if (this.strictParsing) {
            throw new ParserException("Unexpected line: " + str);
        }
    }

    private static long parseTimestampUs(String str) throws NumberFormatException {
        if (!str.matches(WEBVTT_TIMESTAMP_STRING)) {
            throw new NumberFormatException("has invalid format");
        }
        String[] strArrSplit = str.split("\\.", 2);
        long j = 0;
        for (String str2 : strArrSplit[0].split(":")) {
            j = (j * 60) + Long.parseLong(str2);
        }
        return (Long.parseLong(strArrSplit[1]) + (j * 1000)) * 1000;
    }

    class WebvttCue {
        public final long endTime;
        public final long startTime;
        public final String text;

        public WebvttCue(long j, long j2, String str) {
            this.startTime = j;
            this.endTime = j2;
            this.text = str;
        }
    }
}
