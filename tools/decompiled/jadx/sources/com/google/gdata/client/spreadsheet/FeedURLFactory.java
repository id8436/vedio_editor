package com.google.gdata.client.spreadsheet;

import com.google.android.exoplayer.text.ttml.TtmlNode;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class FeedURLFactory {
    private static final String BASE_PATH = "feeds/";
    private static final String CELLS_PATH = "feeds/cells/";
    public static final String DEFAULT_SPREADSHEETS_URL = "https://spreadsheets.google.com";
    private static final String LIST_PATH = "feeds/list/";
    private static final String RECORD_PATH = "/records/";
    private static final String SPREADSHEETS_PATH = "feeds/spreadsheets/private/full";
    private static final String TABLE_PATH = "/tables/";
    private static final String WORKSHEETS_PATH = "feeds/worksheets/";
    private static final FeedURLFactory instance = new FeedURLFactory();
    private URL baseUrl;
    private URL feedCells;
    private URL feedList;
    private URL feedSpreadsheets;
    private URL feedWorksheets;

    public static FeedURLFactory getDefault() {
        return instance;
    }

    private FeedURLFactory() {
        try {
            init(DEFAULT_SPREADSHEETS_URL);
        } catch (MalformedURLException e2) {
            throw new RuntimeException("Unexpected malformed URL", e2);
        }
    }

    public FeedURLFactory(String str) throws MalformedURLException {
        init(str);
    }

    private void init(String str) throws MalformedURLException {
        if (!str.endsWith(URIUtil.SLASH)) {
            str = str + URIUtil.SLASH;
        }
        this.baseUrl = new URL(str);
        this.feedSpreadsheets = new URL(this.baseUrl, SPREADSHEETS_PATH);
        this.feedWorksheets = new URL(this.baseUrl, WORKSHEETS_PATH);
        this.feedList = new URL(this.baseUrl, LIST_PATH);
        this.feedCells = new URL(this.baseUrl, CELLS_PATH);
    }

    public URL getBaseUrl() {
        return this.baseUrl;
    }

    private String encode(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UTF-8 is not supported by the JVM", e2);
        }
    }

    public URL getSpreadsheetsFeedUrl() {
        return this.feedSpreadsheets;
    }

    public URL getWorksheetFeedUrl(String str, String str2, String str3) throws MalformedURLException {
        if (str == null) {
            throw new NullPointerException("spreadsheetKey is null");
        }
        return makeUrl(this.feedWorksheets, encode(str), str2, str3);
    }

    public URL getTableFeedUrl(String str) throws MalformedURLException {
        if (str == null) {
            throw new NullPointerException("spreadsheetKey is null");
        }
        return new URL(this.baseUrl, BASE_PATH + encode(str) + TABLE_PATH);
    }

    public URL getRecordFeedUrl(String str, String str2) throws MalformedURLException {
        if (str == null) {
            throw new NullPointerException("spreadsheetKey is null");
        }
        return new URL(this.baseUrl, BASE_PATH + encode(str) + RECORD_PATH + str2);
    }

    public URL getListFeedUrl(String str, String str2, String str3, String str4) throws MalformedURLException {
        return makeUrl(this.feedList, str, str2, str3, str4);
    }

    public URL getCellFeedUrl(String str, String str2, String str3, String str4) throws MalformedURLException {
        return makeUrl(this.feedCells, str, str2, str3, str4);
    }

    private URL makeUrl(URL url, String str, String str2, String str3, String str4) throws MalformedURLException {
        if (str == null) {
            throw new NullPointerException("spreadsheetKey is null");
        }
        if (str2 == null) {
            throw new NullPointerException("worksheetId is null");
        }
        return makeUrl(url, encode(str) + URIUtil.SLASH + encode(str2), str3, str4);
    }

    private URL makeUrl(URL url, String str, String str2, String str3) throws MalformedURLException {
        if (str2 == null) {
            throw new NullPointerException("visibility is null");
        }
        if (str3 == null) {
            throw new NullPointerException("projection is null");
        }
        return new URL(url, str + URIUtil.SLASH + encode(str2) + URIUtil.SLASH + encode(str3));
    }

    public static String getSpreadsheetKeyFromUrl(String str) throws IllegalArgumentException {
        int i;
        int i2;
        try {
            String query = new URL(str).getQuery();
            if (query != null) {
                String[] strArrSplit = query.split("&");
                String strSubstring = "";
                int length = strArrSplit.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        i = 0;
                        i2 = -1;
                        break;
                    }
                    String str2 = strArrSplit[i3];
                    if (str2.startsWith("id=")) {
                        int length2 = "id=".length();
                        strSubstring = str2.substring(length2);
                        i2 = length2;
                        i = 4;
                        break;
                    }
                    if (!str2.startsWith("key=")) {
                        i3++;
                    } else {
                        int length3 = "key=".length();
                        strSubstring = str2.substring(length3);
                        if (strSubstring.startsWith(TtmlNode.TAG_P)) {
                            return strSubstring;
                        }
                        i2 = length3;
                        i = 2;
                    }
                }
                if (i2 > -1) {
                    String[] strArrSplit2 = strSubstring.split("\\.");
                    if (strArrSplit2.length == i) {
                        return strArrSplit2[0] + "." + strArrSplit2[1];
                    }
                }
            }
        } catch (MalformedURLException e2) {
            String[] strArrSplit3 = str.split("\\.");
            if (strArrSplit3.length == 4 || strArrSplit3.length == 2) {
                return strArrSplit3[0] + "." + strArrSplit3[1];
            }
        }
        throw new IllegalArgumentException("Uknown URL format.");
    }
}
