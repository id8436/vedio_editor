package com.google.android.exoplayer.text.ttml;

import android.util.Log;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.text.SubtitleParser;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes2.dex */
public class TtmlParser implements SubtitleParser {
    private static final String ATTR_BEGIN = "begin";
    private static final String ATTR_DURATION = "dur";
    private static final String ATTR_END = "end";
    private static final int DEFAULT_FRAMERATE = 30;
    private static final int DEFAULT_SUBFRAMERATE = 1;
    private static final int DEFAULT_TICKRATE = 1;
    private static final String TAG = "TtmlParser";
    private final boolean strictParsing;
    private final XmlPullParserFactory xmlParserFactory;
    private static final Pattern CLOCK_TIME = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern OFFSET_TIME = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    public TtmlParser() {
        this(true);
    }

    public TtmlParser(boolean z) {
        this.strictParsing = z;
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public Subtitle parse(InputStream inputStream, String str, long j) throws IOException {
        int i;
        TtmlSubtitle ttmlSubtitle;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, str);
            TtmlSubtitle ttmlSubtitle2 = null;
            LinkedList linkedList = new LinkedList();
            int i2 = 0;
            int eventType = xmlPullParserNewPullParser.getEventType();
            while (true) {
                int i3 = eventType;
                if (i3 != 1) {
                    TtmlNode ttmlNode = (TtmlNode) linkedList.peekLast();
                    if (i2 == 0) {
                        String name = xmlPullParserNewPullParser.getName();
                        if (i3 == 2) {
                            if (!isSupportedTag(name)) {
                                Log.i(TAG, "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                                i = i2 + 1;
                                ttmlSubtitle = ttmlSubtitle2;
                            } else {
                                try {
                                    TtmlNode node = parseNode(xmlPullParserNewPullParser, ttmlNode);
                                    linkedList.addLast(node);
                                    if (ttmlNode != null) {
                                        ttmlNode.addChild(node);
                                    }
                                    i = i2;
                                    ttmlSubtitle = ttmlSubtitle2;
                                } catch (ParserException e2) {
                                    if (this.strictParsing) {
                                        throw e2;
                                    }
                                    Log.e(TAG, "Suppressing parser error", e2);
                                    i = i2 + 1;
                                    ttmlSubtitle = ttmlSubtitle2;
                                }
                            }
                        } else if (i3 == 4) {
                            ttmlNode.addChild(TtmlNode.buildTextNode(xmlPullParserNewPullParser.getText()));
                            i = i2;
                            ttmlSubtitle = ttmlSubtitle2;
                        } else if (i3 == 3) {
                            TtmlSubtitle ttmlSubtitle3 = xmlPullParserNewPullParser.getName().equals(TtmlNode.TAG_TT) ? new TtmlSubtitle((TtmlNode) linkedList.getLast(), j) : ttmlSubtitle2;
                            linkedList.removeLast();
                            int i4 = i2;
                            ttmlSubtitle = ttmlSubtitle3;
                            i = i4;
                        } else {
                            i = i2;
                            ttmlSubtitle = ttmlSubtitle2;
                        }
                        ttmlSubtitle2 = ttmlSubtitle;
                        i2 = i;
                    } else if (i3 == 2) {
                        i2++;
                    } else if (i3 == 3) {
                        i2--;
                    }
                    xmlPullParserNewPullParser.next();
                    eventType = xmlPullParserNewPullParser.getEventType();
                } else {
                    return ttmlSubtitle2;
                }
            }
        } catch (XmlPullParserException e3) {
            throw new ParserException("Unable to parse source", e3);
        }
    }

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public boolean canParse(String str) {
        return "application/ttml+xml".equals(str);
    }

    private TtmlNode parseNode(XmlPullParser xmlPullParser, TtmlNode ttmlNode) throws ParserException {
        int attributeCount = xmlPullParser.getAttributeCount();
        long timeExpression = -1;
        long timeExpression2 = -1;
        long timeExpression3 = 0;
        for (int i = 0; i < attributeCount; i++) {
            String strReplaceFirst = xmlPullParser.getAttributeName(i).replaceFirst("^.*:", "");
            String attributeValue = xmlPullParser.getAttributeValue(i);
            if (strReplaceFirst.equals(ATTR_BEGIN)) {
                timeExpression2 = parseTimeExpression(attributeValue, 30, 1, 1);
            } else if (strReplaceFirst.equals(ATTR_END)) {
                timeExpression = parseTimeExpression(attributeValue, 30, 1, 1);
            } else if (strReplaceFirst.equals(ATTR_DURATION)) {
                timeExpression3 = parseTimeExpression(attributeValue, 30, 1, 1);
            }
        }
        if (ttmlNode != null && ttmlNode.startTimeUs != -1) {
            if (timeExpression2 != -1) {
                timeExpression2 += ttmlNode.startTimeUs;
            }
            if (timeExpression != -1) {
                timeExpression += ttmlNode.startTimeUs;
            }
        }
        if (timeExpression == -1) {
            if (timeExpression3 > 0) {
                timeExpression = timeExpression2 + timeExpression3;
            } else if (ttmlNode != null && ttmlNode.endTimeUs != -1) {
                timeExpression = ttmlNode.endTimeUs;
            }
        }
        return TtmlNode.buildNode(xmlPullParser.getName(), timeExpression2, timeExpression);
    }

    private static boolean isSupportedTag(String str) {
        return str.equals(TtmlNode.TAG_TT) || str.equals("head") || str.equals(TtmlNode.TAG_BODY) || str.equals(TtmlNode.TAG_DIV) || str.equals(TtmlNode.TAG_P) || str.equals(TtmlNode.TAG_SPAN) || str.equals(TtmlNode.TAG_BR) || str.equals(TtmlNode.TAG_STYLE) || str.equals(TtmlNode.TAG_STYLING) || str.equals(TtmlNode.TAG_LAYOUT) || str.equals("region") || str.equals("metadata") || str.equals(TtmlNode.TAG_SMPTE_IMAGE) || str.equals(TtmlNode.TAG_SMPTE_DATA) || str.equals(TtmlNode.TAG_SMPTE_INFORMATION);
    }

    private static long parseTimeExpression(String str, int i, int i2, int i3) throws ParserException {
        Matcher matcher = CLOCK_TIME.matcher(str);
        if (matcher.matches()) {
            double d2 = Long.parseLong(matcher.group(3)) + (Long.parseLong(matcher.group(1)) * 3600) + (Long.parseLong(matcher.group(2)) * 60);
            String strGroup = matcher.group(4);
            return (long) (((matcher.group(5) != null ? Long.parseLong(r0) / ((double) i) : 0.0d) + d2 + (strGroup != null ? Double.parseDouble(strGroup) : 0.0d) + (matcher.group(6) != null ? (Long.parseLong(r4) / ((double) i2)) / ((double) i) : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = OFFSET_TIME.matcher(str);
        if (matcher2.matches()) {
            double d3 = Double.parseDouble(matcher2.group(1));
            String strGroup2 = matcher2.group(2);
            if (strGroup2.equals("h")) {
                d3 *= 3600.0d;
            } else if (strGroup2.equals("m")) {
                d3 *= 60.0d;
            } else if (!strGroup2.equals("s")) {
                if (strGroup2.equals("ms")) {
                    d3 /= 1000.0d;
                } else if (strGroup2.equals("f")) {
                    d3 /= (double) i;
                } else if (strGroup2.equals("t")) {
                    d3 /= (double) i3;
                }
            }
            return (long) (d3 * 1000000.0d);
        }
        throw new ParserException("Malformed time expression: " + str);
    }
}
