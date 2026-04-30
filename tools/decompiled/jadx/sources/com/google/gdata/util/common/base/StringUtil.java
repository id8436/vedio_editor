package com.google.gdata.util.common.base;

import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.view.InputDeviceCompat;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.common.base.Ascii;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.lang.Character;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.CharUtils;

/* JADX INFO: loaded from: classes.dex */
public class StringUtil {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Set<Character.UnicodeBlock> CJK_BLOCKS;
    private static final CharMatcher CONTROL_MATCHER;
    public static final String EMPTY_STRING = "";
    public static final String LINE_BREAKS = "\r\n";
    private static final String[] UNSAFE_TAGS;
    public static final String WHITE_SPACES = " \r\n\t\u3000   ";
    private static final Pattern characterReferencePattern;
    private static final Pattern dbSpecPattern;
    static Map<String, Character> escapeStrings;
    private static char[] hexChars;
    private static final Pattern htmlTagPattern;

    static {
        $assertionsDisabled = !StringUtil.class.desiredAssertionStatus();
        htmlTagPattern = Pattern.compile("</?[a-zA-Z][^>]*>");
        characterReferencePattern = Pattern.compile("&#?[a-zA-Z0-9]{1,8};");
        dbSpecPattern = Pattern.compile("(.*)\\{(\\d+),(\\d+)\\}(.*)");
        escapeStrings = new HashMap(252);
        escapeStrings.put("&nbsp;", new Character((char) 160));
        escapeStrings.put("&iexcl;", new Character((char) 161));
        escapeStrings.put("&cent;", new Character((char) 162));
        escapeStrings.put("&pound;", new Character((char) 163));
        escapeStrings.put("&curren;", new Character((char) 164));
        escapeStrings.put("&yen;", new Character((char) 165));
        escapeStrings.put("&brvbar;", new Character((char) 166));
        escapeStrings.put("&sect;", new Character((char) 167));
        escapeStrings.put("&uml;", new Character((char) 168));
        escapeStrings.put("&copy;", new Character((char) 169));
        escapeStrings.put("&ordf;", new Character((char) 170));
        escapeStrings.put("&laquo;", new Character((char) 171));
        escapeStrings.put("&not;", new Character((char) 172));
        escapeStrings.put("&shy;", new Character((char) 173));
        escapeStrings.put("&reg;", new Character((char) 174));
        escapeStrings.put("&macr;", new Character((char) 175));
        escapeStrings.put("&deg;", new Character((char) 176));
        escapeStrings.put("&plusmn;", new Character((char) 177));
        escapeStrings.put("&sup2;", new Character((char) 178));
        escapeStrings.put("&sup3;", new Character((char) 179));
        escapeStrings.put("&acute;", new Character((char) 180));
        escapeStrings.put("&micro;", new Character((char) 181));
        escapeStrings.put("&para;", new Character((char) 182));
        escapeStrings.put("&middot;", new Character((char) 183));
        escapeStrings.put("&cedil;", new Character((char) 184));
        escapeStrings.put("&sup1;", new Character((char) 185));
        escapeStrings.put("&ordm;", new Character((char) 186));
        escapeStrings.put("&raquo;", new Character((char) 187));
        escapeStrings.put("&frac14;", new Character((char) 188));
        escapeStrings.put("&frac12;", new Character((char) 189));
        escapeStrings.put("&frac34;", new Character((char) 190));
        escapeStrings.put("&iquest;", new Character((char) 191));
        escapeStrings.put("&Agrave;", new Character((char) 192));
        escapeStrings.put("&Aacute;", new Character((char) 193));
        escapeStrings.put("&Acirc;", new Character((char) 194));
        escapeStrings.put("&Atilde;", new Character((char) 195));
        escapeStrings.put("&Auml;", new Character((char) 196));
        escapeStrings.put("&Aring;", new Character((char) 197));
        escapeStrings.put("&AElig;", new Character((char) 198));
        escapeStrings.put("&Ccedil;", new Character((char) 199));
        escapeStrings.put("&Egrave;", new Character((char) 200));
        escapeStrings.put("&Eacute;", new Character((char) 201));
        escapeStrings.put("&Ecirc;", new Character((char) 202));
        escapeStrings.put("&Euml;", new Character((char) 203));
        escapeStrings.put("&Igrave;", new Character((char) 204));
        escapeStrings.put("&Iacute;", new Character((char) 205));
        escapeStrings.put("&Icirc;", new Character((char) 206));
        escapeStrings.put("&Iuml;", new Character((char) 207));
        escapeStrings.put("&ETH;", new Character((char) 208));
        escapeStrings.put("&Ntilde;", new Character((char) 209));
        escapeStrings.put("&Ograve;", new Character((char) 210));
        escapeStrings.put("&Oacute;", new Character((char) 211));
        escapeStrings.put("&Ocirc;", new Character((char) 212));
        escapeStrings.put("&Otilde;", new Character((char) 213));
        escapeStrings.put("&Ouml;", new Character((char) 214));
        escapeStrings.put("&times;", new Character((char) 215));
        escapeStrings.put("&Oslash;", new Character((char) 216));
        escapeStrings.put("&Ugrave;", new Character((char) 217));
        escapeStrings.put("&Uacute;", new Character((char) 218));
        escapeStrings.put("&Ucirc;", new Character((char) 219));
        escapeStrings.put("&Uuml;", new Character((char) 220));
        escapeStrings.put("&Yacute;", new Character((char) 221));
        escapeStrings.put("&THORN;", new Character((char) 222));
        escapeStrings.put("&szlig;", new Character((char) 223));
        escapeStrings.put("&agrave;", new Character((char) 224));
        escapeStrings.put("&aacute;", new Character((char) 225));
        escapeStrings.put("&acirc;", new Character((char) 226));
        escapeStrings.put("&atilde;", new Character((char) 227));
        escapeStrings.put("&auml;", new Character((char) 228));
        escapeStrings.put("&aring;", new Character((char) 229));
        escapeStrings.put("&aelig;", new Character((char) 230));
        escapeStrings.put("&ccedil;", new Character((char) 231));
        escapeStrings.put("&egrave;", new Character((char) 232));
        escapeStrings.put("&eacute;", new Character((char) 233));
        escapeStrings.put("&ecirc;", new Character((char) 234));
        escapeStrings.put("&euml;", new Character((char) 235));
        escapeStrings.put("&igrave;", new Character((char) 236));
        escapeStrings.put("&iacute;", new Character((char) 237));
        escapeStrings.put("&icirc;", new Character((char) 238));
        escapeStrings.put("&iuml;", new Character((char) 239));
        escapeStrings.put("&eth;", new Character((char) 240));
        escapeStrings.put("&ntilde;", new Character((char) 241));
        escapeStrings.put("&ograve;", new Character((char) 242));
        escapeStrings.put("&oacute;", new Character((char) 243));
        escapeStrings.put("&ocirc;", new Character((char) 244));
        escapeStrings.put("&otilde;", new Character((char) 245));
        escapeStrings.put("&ouml;", new Character((char) 246));
        escapeStrings.put("&divide;", new Character((char) 247));
        escapeStrings.put("&oslash;", new Character((char) 248));
        escapeStrings.put("&ugrave;", new Character((char) 249));
        escapeStrings.put("&uacute;", new Character((char) 250));
        escapeStrings.put("&ucirc;", new Character((char) 251));
        escapeStrings.put("&uuml;", new Character((char) 252));
        escapeStrings.put("&yacute;", new Character((char) 253));
        escapeStrings.put("&thorn;", new Character((char) 254));
        escapeStrings.put("&yuml;", new Character((char) 255));
        escapeStrings.put("&fnof;", new Character((char) 402));
        escapeStrings.put("&Alpha;", new Character((char) 913));
        escapeStrings.put("&Beta;", new Character((char) 914));
        escapeStrings.put("&Gamma;", new Character((char) 915));
        escapeStrings.put("&Delta;", new Character((char) 916));
        escapeStrings.put("&Epsilon;", new Character((char) 917));
        escapeStrings.put("&Zeta;", new Character((char) 918));
        escapeStrings.put("&Eta;", new Character((char) 919));
        escapeStrings.put("&Theta;", new Character((char) 920));
        escapeStrings.put("&Iota;", new Character((char) 921));
        escapeStrings.put("&Kappa;", new Character((char) 922));
        escapeStrings.put("&Lambda;", new Character((char) 923));
        escapeStrings.put("&Mu;", new Character((char) 924));
        escapeStrings.put("&Nu;", new Character((char) 925));
        escapeStrings.put("&Xi;", new Character((char) 926));
        escapeStrings.put("&Omicron;", new Character((char) 927));
        escapeStrings.put("&Pi;", new Character((char) 928));
        escapeStrings.put("&Rho;", new Character((char) 929));
        escapeStrings.put("&Sigma;", new Character((char) 931));
        escapeStrings.put("&Tau;", new Character((char) 932));
        escapeStrings.put("&Upsilon;", new Character((char) 933));
        escapeStrings.put("&Phi;", new Character((char) 934));
        escapeStrings.put("&Chi;", new Character((char) 935));
        escapeStrings.put("&Psi;", new Character((char) 936));
        escapeStrings.put("&Omega;", new Character((char) 937));
        escapeStrings.put("&alpha;", new Character((char) 945));
        escapeStrings.put("&beta;", new Character((char) 946));
        escapeStrings.put("&gamma;", new Character((char) 947));
        escapeStrings.put("&delta;", new Character((char) 948));
        escapeStrings.put("&epsilon;", new Character((char) 949));
        escapeStrings.put("&zeta;", new Character((char) 950));
        escapeStrings.put("&eta;", new Character((char) 951));
        escapeStrings.put("&theta;", new Character((char) 952));
        escapeStrings.put("&iota;", new Character((char) 953));
        escapeStrings.put("&kappa;", new Character((char) 954));
        escapeStrings.put("&lambda;", new Character((char) 955));
        escapeStrings.put("&mu;", new Character((char) 956));
        escapeStrings.put("&nu;", new Character((char) 957));
        escapeStrings.put("&xi;", new Character((char) 958));
        escapeStrings.put("&omicron;", new Character((char) 959));
        escapeStrings.put("&pi;", new Character((char) 960));
        escapeStrings.put("&rho;", new Character((char) 961));
        escapeStrings.put("&sigmaf;", new Character((char) 962));
        escapeStrings.put("&sigma;", new Character((char) 963));
        escapeStrings.put("&tau;", new Character((char) 964));
        escapeStrings.put("&upsilon;", new Character((char) 965));
        escapeStrings.put("&phi;", new Character((char) 966));
        escapeStrings.put("&chi;", new Character((char) 967));
        escapeStrings.put("&psi;", new Character((char) 968));
        escapeStrings.put("&omega;", new Character((char) 969));
        escapeStrings.put("&thetasym;", new Character((char) 977));
        escapeStrings.put("&upsih;", new Character((char) 978));
        escapeStrings.put("&piv;", new Character((char) 982));
        escapeStrings.put("&bull;", new Character((char) 8226));
        escapeStrings.put("&hellip;", new Character((char) 8230));
        escapeStrings.put("&prime;", new Character((char) 8242));
        escapeStrings.put("&Prime;", new Character((char) 8243));
        escapeStrings.put("&oline;", new Character((char) 8254));
        escapeStrings.put("&frasl;", new Character((char) 8260));
        escapeStrings.put("&weierp;", new Character((char) 8472));
        escapeStrings.put("&image;", new Character((char) 8465));
        escapeStrings.put("&real;", new Character((char) 8476));
        escapeStrings.put("&trade;", new Character((char) 8482));
        escapeStrings.put("&alefsym;", new Character((char) 8501));
        escapeStrings.put("&larr;", new Character((char) 8592));
        escapeStrings.put("&uarr;", new Character((char) 8593));
        escapeStrings.put("&rarr;", new Character((char) 8594));
        escapeStrings.put("&darr;", new Character((char) 8595));
        escapeStrings.put("&harr;", new Character((char) 8596));
        escapeStrings.put("&crarr;", new Character((char) 8629));
        escapeStrings.put("&lArr;", new Character((char) 8656));
        escapeStrings.put("&uArr;", new Character((char) 8657));
        escapeStrings.put("&rArr;", new Character((char) 8658));
        escapeStrings.put("&dArr;", new Character((char) 8659));
        escapeStrings.put("&hArr;", new Character((char) 8660));
        escapeStrings.put("&forall;", new Character((char) 8704));
        escapeStrings.put("&part;", new Character((char) 8706));
        escapeStrings.put("&exist;", new Character((char) 8707));
        escapeStrings.put("&empty;", new Character((char) 8709));
        escapeStrings.put("&nabla;", new Character((char) 8711));
        escapeStrings.put("&isin;", new Character((char) 8712));
        escapeStrings.put("&notin;", new Character((char) 8713));
        escapeStrings.put("&ni;", new Character((char) 8715));
        escapeStrings.put("&prod;", new Character((char) 8719));
        escapeStrings.put("&sum;", new Character((char) 8721));
        escapeStrings.put("&minus;", new Character((char) 8722));
        escapeStrings.put("&lowast;", new Character((char) 8727));
        escapeStrings.put("&radic;", new Character((char) 8730));
        escapeStrings.put("&prop;", new Character((char) 8733));
        escapeStrings.put("&infin;", new Character((char) 8734));
        escapeStrings.put("&ang;", new Character((char) 8736));
        escapeStrings.put("&and;", new Character((char) 8743));
        escapeStrings.put("&or;", new Character((char) 8744));
        escapeStrings.put("&cap;", new Character((char) 8745));
        escapeStrings.put("&cup;", new Character((char) 8746));
        escapeStrings.put("&int;", new Character((char) 8747));
        escapeStrings.put("&there4;", new Character((char) 8756));
        escapeStrings.put("&sim;", new Character((char) 8764));
        escapeStrings.put("&cong;", new Character((char) 8773));
        escapeStrings.put("&asymp;", new Character((char) 8776));
        escapeStrings.put("&ne;", new Character((char) 8800));
        escapeStrings.put("&equiv;", new Character((char) 8801));
        escapeStrings.put("&le;", new Character((char) 8804));
        escapeStrings.put("&ge;", new Character((char) 8805));
        escapeStrings.put("&sub;", new Character((char) 8834));
        escapeStrings.put("&sup;", new Character((char) 8835));
        escapeStrings.put("&nsub;", new Character((char) 8836));
        escapeStrings.put("&sube;", new Character((char) 8838));
        escapeStrings.put("&supe;", new Character((char) 8839));
        escapeStrings.put("&oplus;", new Character((char) 8853));
        escapeStrings.put("&otimes;", new Character((char) 8855));
        escapeStrings.put("&perp;", new Character((char) 8869));
        escapeStrings.put("&sdot;", new Character((char) 8901));
        escapeStrings.put("&lceil;", new Character((char) 8968));
        escapeStrings.put("&rceil;", new Character((char) 8969));
        escapeStrings.put("&lfloor;", new Character((char) 8970));
        escapeStrings.put("&rfloor;", new Character((char) 8971));
        escapeStrings.put("&lang;", new Character((char) 9001));
        escapeStrings.put("&rang;", new Character((char) 9002));
        escapeStrings.put("&loz;", new Character((char) 9674));
        escapeStrings.put("&spades;", new Character((char) 9824));
        escapeStrings.put("&clubs;", new Character((char) 9827));
        escapeStrings.put("&hearts;", new Character((char) 9829));
        escapeStrings.put("&diams;", new Character((char) 9830));
        escapeStrings.put("&quot;", new Character('\"'));
        escapeStrings.put("&amp;", new Character('&'));
        escapeStrings.put("&lt;", new Character('<'));
        escapeStrings.put("&gt;", new Character('>'));
        escapeStrings.put("&OElig;", new Character((char) 338));
        escapeStrings.put("&oelig;", new Character((char) 339));
        escapeStrings.put("&Scaron;", new Character((char) 352));
        escapeStrings.put("&scaron;", new Character((char) 353));
        escapeStrings.put("&Yuml;", new Character((char) 376));
        escapeStrings.put("&circ;", new Character((char) 710));
        escapeStrings.put("&tilde;", new Character((char) 732));
        escapeStrings.put("&ensp;", new Character((char) 8194));
        escapeStrings.put("&emsp;", new Character((char) 8195));
        escapeStrings.put("&thinsp;", new Character((char) 8201));
        escapeStrings.put("&zwnj;", new Character((char) 8204));
        escapeStrings.put("&zwj;", new Character((char) 8205));
        escapeStrings.put("&lrm;", new Character((char) 8206));
        escapeStrings.put("&rlm;", new Character((char) 8207));
        escapeStrings.put("&ndash;", new Character((char) 8211));
        escapeStrings.put("&mdash;", new Character((char) 8212));
        escapeStrings.put("&lsquo;", new Character((char) 8216));
        escapeStrings.put("&rsquo;", new Character((char) 8217));
        escapeStrings.put("&sbquo;", new Character((char) 8218));
        escapeStrings.put("&ldquo;", new Character((char) 8220));
        escapeStrings.put("&rdquo;", new Character((char) 8221));
        escapeStrings.put("&bdquo;", new Character((char) 8222));
        escapeStrings.put("&dagger;", new Character((char) 8224));
        escapeStrings.put("&Dagger;", new Character((char) 8225));
        escapeStrings.put("&permil;", new Character((char) 8240));
        escapeStrings.put("&lsaquo;", new Character((char) 8249));
        escapeStrings.put("&rsaquo;", new Character((char) 8250));
        escapeStrings.put("&euro;", new Character((char) 8364));
        UNSAFE_TAGS = new String[]{"script", TtmlNode.TAG_STYLE, "object", "applet", "!--"};
        CONTROL_MATCHER = CharMatcher.anyOf("\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\u000b\f\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\ufffe\uffff");
        HashSet hashSet = new HashSet();
        hashSet.add(Character.UnicodeBlock.HANGUL_JAMO);
        hashSet.add(Character.UnicodeBlock.CJK_RADICALS_SUPPLEMENT);
        hashSet.add(Character.UnicodeBlock.KANGXI_RADICALS);
        hashSet.add(Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION);
        hashSet.add(Character.UnicodeBlock.HIRAGANA);
        hashSet.add(Character.UnicodeBlock.KATAKANA);
        hashSet.add(Character.UnicodeBlock.BOPOMOFO);
        hashSet.add(Character.UnicodeBlock.HANGUL_COMPATIBILITY_JAMO);
        hashSet.add(Character.UnicodeBlock.KANBUN);
        hashSet.add(Character.UnicodeBlock.BOPOMOFO_EXTENDED);
        hashSet.add(Character.UnicodeBlock.KATAKANA_PHONETIC_EXTENSIONS);
        hashSet.add(Character.UnicodeBlock.ENCLOSED_CJK_LETTERS_AND_MONTHS);
        hashSet.add(Character.UnicodeBlock.CJK_COMPATIBILITY);
        hashSet.add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A);
        hashSet.add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS);
        hashSet.add(Character.UnicodeBlock.HANGUL_SYLLABLES);
        hashSet.add(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS);
        hashSet.add(Character.UnicodeBlock.CJK_COMPATIBILITY_FORMS);
        hashSet.add(Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS);
        hashSet.add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B);
        hashSet.add(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT);
        CJK_BLOCKS = Collections.unmodifiableSet(hashSet);
        hexChars = new char[]{'0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    }

    private StringUtil() {
    }

    public static String[] split(String str, String str2) {
        return split(str, str2, false);
    }

    public static String[] split(String str, String str2, boolean z) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        int iCountTokens = stringTokenizer.countTokens();
        String[] strArr = new String[iCountTokens];
        for (int i = 0; i < iCountTokens; i++) {
            if (z) {
                strArr[i] = stringTokenizer.nextToken().trim();
            } else {
                strArr[i] = stringTokenizer.nextToken();
            }
        }
        return strArr;
    }

    public static String[] splitAndTrim(String str, String str2) {
        return split(str, str2, true);
    }

    public static int[] splitInts(String str) throws IllegalArgumentException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        int iCountTokens = stringTokenizer.countTokens();
        int[] iArr = new int[iCountTokens];
        for (int i = 0; i < iCountTokens; i++) {
            iArr[i] = Integer.parseInt(stringTokenizer.nextToken());
        }
        return iArr;
    }

    public static long[] splitLongs(String str) throws IllegalArgumentException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        int iCountTokens = stringTokenizer.countTokens();
        long[] jArr = new long[iCountTokens];
        for (int i = 0; i < iCountTokens; i++) {
            jArr[i] = Long.parseLong(stringTokenizer.nextToken());
        }
        return jArr;
    }

    public static String joinInts(int[] iArr, String str) {
        if (iArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < iArr.length; i++) {
            if (i > 0 && str != null) {
                sb.append(str);
            }
            sb.append(String.valueOf(iArr[i]));
        }
        return sb.toString();
    }

    public static String joinLongs(long[] jArr, String str) {
        if (jArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < jArr.length; i++) {
            if (i > 0 && str != null) {
                sb.append(str);
            }
            sb.append(String.valueOf(jArr[i]));
        }
        return sb.toString();
    }

    @Deprecated
    public static String join(Object[] objArr, String str) {
        if (objArr == null || objArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < objArr.length; i++) {
            if (i > 0 && str != null) {
                sb.append(str);
            }
            if (objArr[i] != null) {
                sb.append(objArr[i].toString());
            }
        }
        return sb.toString();
    }

    @Deprecated
    public static String join(Collection collection, String str) {
        return join(collection.toArray(), str);
    }

    @Deprecated
    public static String replace(String str, String str2, String str3) {
        if ($assertionsDisabled || str2.length() > 0) {
            return str.replace(str2, str3);
        }
        throw new AssertionError();
    }

    public static String fixedWidth(String str, int i) {
        return fixedWidth(split(str, IOUtils.LINE_SEPARATOR_UNIX), i);
    }

    public static String fixedWidth(String[] strArr, int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (i2 != 0) {
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
            if (strArr[i2].length() <= i) {
                sb.append(strArr[i2]);
            } else {
                String[] strArrSplitAndTrim = splitAndTrim(strArr[i2], WHITE_SPACES);
                int length = 0;
                for (int i3 = 0; i3 < strArrSplitAndTrim.length; i3++) {
                    if (length == 0 || strArrSplitAndTrim[i3].length() + length < i) {
                        if (length != 0) {
                            sb.append(" ");
                            length++;
                        }
                        length += strArrSplitAndTrim[i3].length();
                        sb.append(strArrSplitAndTrim[i3]);
                    } else {
                        sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                        length = strArrSplitAndTrim[i3].length();
                        sb.append(strArrSplitAndTrim[i3]);
                    }
                }
            }
        }
        return sb.toString();
    }

    public static String insertBreakingWhitespace(int i, String str) {
        if (str == null || i <= 0) {
            throw new IllegalArgumentException();
        }
        int length = str.length();
        if (length > i) {
            int i2 = 0;
            StringBuilder sb = new StringBuilder();
            while (length - i2 > i) {
                sb.append(str.substring(i2, i2 + i));
                i2 += i;
                sb.append(" ");
            }
            sb.append(str.substring(i2, length));
            return sb.toString();
        }
        return str;
    }

    public static String indent(String str, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
        return replace(str, IOUtils.LINE_SEPARATOR_UNIX, sb.toString());
    }

    @Deprecated
    public static String megastrip(String str, boolean z, boolean z2, String str2) {
        if (str == null) {
            return null;
        }
        int i = 0;
        int length = str.length() - 1;
        while (z && i <= length && str2.indexOf(str.charAt(i)) >= 0) {
            i++;
        }
        while (z2 && length >= i && str2.indexOf(str.charAt(length)) >= 0) {
            length--;
        }
        return str.substring(i, length + 1);
    }

    @Deprecated
    public static String lstrip(String str) {
        if (str == null) {
            return null;
        }
        return CharMatcher.LEGACY_WHITESPACE.trimLeadingFrom(str);
    }

    @Deprecated
    public static String rstrip(String str) {
        if (str == null) {
            return null;
        }
        return CharMatcher.LEGACY_WHITESPACE.trimTrailingFrom(str);
    }

    public static String strip(String str) {
        return megastrip(str, true, true, WHITE_SPACES);
    }

    public static String stripAndCollapse(String str) {
        return collapseWhitespace(strip(str));
    }

    public static String stripPrefix(String str, String str2) {
        if (str.startsWith(str2)) {
            return str.substring(str2.length());
        }
        return null;
    }

    public static String stripPrefixIgnoreCase(String str, String str2) {
        if (str.length() < str2.length() || !str.substring(0, str2.length()).equalsIgnoreCase(str2)) {
            return null;
        }
        return str.substring(str2.length());
    }

    public static String stripNonDigits(String str) {
        StringBuffer stringBuffer = new StringBuffer(str.length());
        for (char c2 : str.toCharArray()) {
            if (Character.isDigit(c2)) {
                stringBuffer.append(c2);
            }
        }
        return stringBuffer.toString();
    }

    public static int numSharedChars(String str, String str2) {
        if (str == null || str2 == null) {
            return 0;
        }
        int i = 0;
        int iIndexOfChars = -1;
        while (true) {
            iIndexOfChars = indexOfChars(str, str2, iIndexOfChars + 1);
            if (iIndexOfChars != -1) {
                i++;
            } else {
                return i;
            }
        }
    }

    public static int indexOfChars(String str, String str2, int i) {
        int length = str.length();
        for (int i2 = i; i2 < length; i2++) {
            if (str2.indexOf(str.charAt(i2)) >= 0) {
                return i2;
            }
        }
        return -1;
    }

    public static int indexOfChars(String str, String str2) {
        return indexOfChars(str, str2, 0);
    }

    public static int lastIndexNotOf(String str, String str2, int i) {
        for (int iMin = Math.min(i, str.length() - 1); iMin >= 0; iMin--) {
            if (str2.indexOf(str.charAt(iMin)) < 0) {
                return iMin;
            }
        }
        return -1;
    }

    public static String replaceChars(String str, String str2, char c2) {
        int iIndexOfChars = indexOfChars(str, str2);
        if (iIndexOfChars != -1) {
            StringBuilder sb = new StringBuilder(str);
            do {
                sb.setCharAt(iIndexOfChars, c2);
                iIndexOfChars = indexOfChars(str, str2, iIndexOfChars + 1);
            } while (iIndexOfChars != -1);
            return sb.toString();
        }
        return str;
    }

    public static String removeChars(String str, String str2) {
        int iIndexOfChars = indexOfChars(str, str2);
        if (iIndexOfChars != -1) {
            StringBuilder sb = new StringBuilder();
            int i = 0;
            do {
                sb.append(str.substring(i, iIndexOfChars));
                i = iIndexOfChars + 1;
                iIndexOfChars = indexOfChars(str, str2, i);
            } while (iIndexOfChars != -1);
            if (i < str.length()) {
                sb.append(str.substring(i));
            }
            return sb.toString();
        }
        return str;
    }

    public static String retainAllChars(String str, String str2) {
        int iIndexOfChars = indexOfChars(str, str2);
        if (iIndexOfChars == -1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        do {
            sb.append(str.charAt(iIndexOfChars));
            iIndexOfChars = indexOfChars(str, str2, iIndexOfChars + 1);
        } while (iIndexOfChars != -1);
        return sb.toString();
    }

    public static String replaceSmartQuotes(String str) {
        return replaceChars(replaceChars(str, "\u0091\u0092‘’", '\''), "\u0093\u0094“”", '\"');
    }

    public static byte[] hexToBytes(String str) {
        byte[] bArr = new byte[(str.length() + 1) / 2];
        if (str.length() == 0) {
            return bArr;
        }
        bArr[0] = 0;
        int length = str.length() % 2;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!isHex(cCharAt)) {
                throw new IllegalArgumentException("string contains non-hex chars");
            }
            if (length % 2 == 0) {
                bArr[length >> 1] = (byte) (hexValue(cCharAt) << 4);
            } else {
                int i2 = length >> 1;
                bArr[i2] = (byte) (((byte) hexValue(cCharAt)) + bArr[i2]);
            }
            length++;
        }
        return bArr;
    }

    public static String convertEOLToLF(String str) {
        int i = 0;
        StringBuilder sb = new StringBuilder(str.length());
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i2 = 0;
        while (i < length) {
            if (charArray[i] == '\r') {
                sb.append(charArray, i2, i - i2);
                sb.append('\n');
                if (i + 1 < length && charArray[i + 1] == '\n') {
                    i++;
                }
                i2 = i + 1;
            }
            i++;
        }
        if (i2 != 0) {
            sb.append(charArray, i2, length - i2);
            return sb.toString();
        }
        return str;
    }

    @Deprecated
    public static String convertEOLToCRLF(String str) {
        return str.replaceAll("(\r\n|\r|\n)", "\r\n");
    }

    public static String padLeft(String str, int i, char c2) {
        if (str.length() < i) {
            StringBuilder sb = new StringBuilder();
            int length = i - str.length();
            for (int i2 = 0; i2 < length; i2++) {
                sb.append(c2);
            }
            sb.append(str);
            return sb.toString();
        }
        return str;
    }

    public static String padRight(String str, int i, char c2) {
        if (str.length() < i) {
            StringBuilder sb = new StringBuilder();
            int length = i - str.length();
            sb.append(str);
            for (int i2 = 0; i2 < length; i2++) {
                sb.append(c2);
            }
            return sb.toString();
        }
        return str;
    }

    public static String maskLeft(String str, int i, char c2) {
        if (i > 0) {
            int iMin = Math.min(i, str.length());
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < iMin; i2++) {
                sb.append(c2);
            }
            sb.append(str.substring(iMin));
            return sb.toString();
        }
        return str;
    }

    public static String maskRight(String str, int i, char c2) {
        if (i > 0) {
            int iMin = Math.min(i, str.length());
            StringBuilder sb = new StringBuilder();
            sb.append(str.substring(0, str.length() - iMin));
            for (int i2 = 0; i2 < iMin; i2++) {
                sb.append(c2);
            }
            return sb.toString();
        }
        return str;
    }

    private static boolean isOctal(char c2) {
        return c2 >= '0' && c2 <= '7';
    }

    private static boolean isHex(char c2) {
        return (c2 >= '0' && c2 <= '9') || (c2 >= 'a' && c2 <= 'f') || (c2 >= 'A' && c2 <= 'F');
    }

    private static int hexValue(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return (c2 - 'a') + 10;
        }
        return (c2 - 'A') + 10;
    }

    public static String unescapeCString(String str) {
        int i;
        if (str.indexOf(92) >= 0) {
            StringBuilder sb = new StringBuilder();
            int length = str.length();
            int i2 = 0;
            while (i2 < length) {
                int i3 = i2 + 1;
                char cCharAt = str.charAt(i2);
                if (cCharAt == '\\' && i3 < length) {
                    i2 = i3 + 1;
                    cCharAt = str.charAt(i3);
                    switch (cCharAt) {
                        case '\"':
                            cCharAt = '\"';
                            break;
                        case '\'':
                            cCharAt = '\'';
                            break;
                        case '?':
                            cCharAt = '?';
                            break;
                        case '\\':
                            cCharAt = '\\';
                            break;
                        case 'a':
                            cCharAt = 7;
                            break;
                        case 'b':
                            cCharAt = '\b';
                            break;
                        case 'f':
                            cCharAt = '\f';
                            break;
                        case 'n':
                            cCharAt = '\n';
                            break;
                        case 'r':
                            cCharAt = CharUtils.CR;
                            break;
                        case 't':
                            cCharAt = '\t';
                            break;
                        case 'v':
                            cCharAt = 11;
                            break;
                        default:
                            if (cCharAt == 'x' && i2 < length && isHex(str.charAt(i2))) {
                                int i4 = i2 + 1;
                                int iHexValue = hexValue(str.charAt(i2));
                                if (i4 >= length || !isHex(str.charAt(i4))) {
                                    i2 = i4;
                                } else {
                                    i2 = i4 + 1;
                                    iHexValue = (iHexValue * 16) + hexValue(str.charAt(i4));
                                }
                                cCharAt = (char) iHexValue;
                            } else if (isOctal(cCharAt)) {
                                int iCharAt = cCharAt - '0';
                                if (i2 >= length || !isOctal(str.charAt(i2))) {
                                    i = i2;
                                } else {
                                    i = i2 + 1;
                                    iCharAt = (iCharAt * 8) + (str.charAt(i2) - '0');
                                }
                                if (i >= length || !isOctal(str.charAt(i))) {
                                    i2 = i;
                                } else {
                                    i2 = i + 1;
                                    iCharAt = (iCharAt * 8) + (str.charAt(i) - '0');
                                }
                                cCharAt = (char) iCharAt;
                            } else {
                                sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            }
                            break;
                    }
                } else {
                    i2 = i3;
                }
                sb.append(cCharAt);
            }
            return sb.toString();
        }
        return str;
    }

    public static String unescapeMySQLString(String str) throws IllegalArgumentException {
        int i;
        char[] charArray = str.toCharArray();
        if (charArray.length < 2 || charArray[0] != charArray[charArray.length - 1] || (charArray[0] != '\'' && charArray[0] != '\"')) {
            throw new IllegalArgumentException("not a valid MySQL string: " + str);
        }
        char c2 = 0;
        int i2 = 1;
        for (int i3 = 1; i3 < charArray.length - 1; i3++) {
            if (c2 == 0) {
                if (charArray[i3] == '\\') {
                    c2 = 1;
                } else if (charArray[i3] == charArray[0]) {
                    c2 = 2;
                } else {
                    charArray[i2] = charArray[i3];
                    i2++;
                }
            } else if (c2 == 1) {
                switch (charArray[i3]) {
                    case '\"':
                        i = i2 + 1;
                        charArray[i2] = '\"';
                        break;
                    case '\'':
                        i = i2 + 1;
                        charArray[i2] = '\'';
                        break;
                    case '0':
                        i = i2 + 1;
                        charArray[i2] = 0;
                        break;
                    case '\\':
                        i = i2 + 1;
                        charArray[i2] = IOUtils.DIR_SEPARATOR_WINDOWS;
                        break;
                    case 'b':
                        i = i2 + 1;
                        charArray[i2] = '\b';
                        break;
                    case 'n':
                        i = i2 + 1;
                        charArray[i2] = '\n';
                        break;
                    case 'r':
                        i = i2 + 1;
                        charArray[i2] = CharUtils.CR;
                        break;
                    case 't':
                        i = i2 + 1;
                        charArray[i2] = '\t';
                        break;
                    case 'z':
                        i = i2 + 1;
                        charArray[i2] = 26;
                        break;
                    default:
                        i = i2 + 1;
                        charArray[i2] = charArray[i3];
                        break;
                }
                i2 = i;
                c2 = 0;
            } else {
                if (charArray[i3] != charArray[0]) {
                    throw new IllegalArgumentException("not a valid MySQL string: " + str);
                }
                charArray[i2] = charArray[0];
                i2++;
                c2 = 0;
            }
        }
        if (c2 != 0) {
            throw new IllegalArgumentException("not a valid MySQL string: " + str);
        }
        return new String(charArray, 1, i2 - 1);
    }

    public static final String unescapeHTML(String str) {
        int i;
        int i2;
        int i3;
        boolean z;
        char[] charArray = str.toCharArray();
        char[] cArr = new char[charArray.length];
        int i4 = 0;
        int i5 = 0;
        while (i5 < charArray.length) {
            if (charArray[i5] != '&') {
                cArr[i4] = charArray[i5];
                i5++;
                i4++;
            } else {
                int i6 = i5 + 1;
                if (i6 < charArray.length && charArray[i6] == '#') {
                    i6++;
                }
                while (true) {
                    i = i6;
                    if (i >= charArray.length || !Character.isLetterOrDigit(charArray[i])) {
                        break;
                    }
                    i6 = i + 1;
                }
                boolean z2 = false;
                if (i >= charArray.length || charArray[i] != ';') {
                    i2 = i;
                } else {
                    if (str.charAt(i5 + 1) == '#') {
                        long j = 0;
                        try {
                            char cCharAt = str.charAt(i5 + 2);
                            if (cCharAt == 'x' || cCharAt == 'X') {
                                j = Long.parseLong(new String(charArray, i5 + 3, (i - i5) - 3), 16);
                            } else if (Character.isDigit(cCharAt)) {
                                j = Long.parseLong(new String(charArray, i5 + 2, (i - i5) - 2));
                            }
                            if (j <= 0 || j >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                                z = false;
                            } else {
                                int i7 = i4 + 1;
                                try {
                                    cArr[i4] = (char) j;
                                    z = true;
                                    i4 = i7;
                                } catch (NumberFormatException e2) {
                                    i4 = i7;
                                }
                            }
                            z2 = z;
                        } catch (NumberFormatException e3) {
                        }
                    } else {
                        Character ch = escapeStrings.get(new String(charArray, i5, (i - i5) + 1));
                        if (ch != null) {
                            cArr[i4] = ch.charValue();
                            z2 = true;
                            i4++;
                        }
                    }
                    i2 = i + 1;
                }
                if (z2) {
                    i3 = i4;
                } else {
                    System.arraycopy(charArray, i5, cArr, i4, i2 - i5);
                    i3 = (i2 - i5) + i4;
                }
                i4 = i3;
                i5 = i2;
            }
        }
        return new String(cArr, 0, i4);
    }

    public static String stripHtmlTags(String str) {
        return (str == null || "".equals(str)) ? str : htmlTagPattern.matcher(str).replaceAll("");
    }

    public static String pythonEscape(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case '\t':
                    sb.append("\\t");
                    break;
                case '\n':
                    sb.append("\\n");
                    break;
                case '\r':
                    sb.append("\\r");
                    break;
                case '\"':
                    sb.append("\\\"");
                    break;
                case '\'':
                    sb.append("\\'");
                    break;
                case '\\':
                    sb.append("\\\\");
                    break;
                default:
                    sb.append(cCharAt);
                    break;
            }
        }
        return sb.toString();
    }

    public static String javaScriptEscape(String str) {
        return javaScriptEscapeHelper(str, false);
    }

    public static String javaScriptEscapeToAscii(String str) {
        return javaScriptEscapeHelper(str, true);
    }

    private static String javaScriptEscapeHelper(String str, boolean z) {
        boolean z2;
        StringBuilder sb = new StringBuilder((str.length() * 9) / 8);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case '\t':
                    sb.append("\\t");
                    break;
                case '\n':
                    sb.append("\\n");
                    break;
                case '\r':
                    sb.append("\\r");
                    break;
                case '\"':
                    sb.append("\\\"");
                    break;
                case '\'':
                    sb.append("\\'");
                    break;
                case '/':
                case '<':
                    String[] strArr = UNSAFE_TAGS;
                    int length = strArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            String str2 = strArr[i2];
                            if (str.regionMatches(true, i + 1, str2, 0, str2.length())) {
                                z2 = true;
                            } else {
                                i2++;
                            }
                        } else {
                            z2 = false;
                        }
                    }
                    if (z2) {
                        appendHexJavaScriptRepresentation(sb, cCharAt);
                    } else {
                        sb.append(cCharAt);
                    }
                    break;
                case '=':
                    appendHexJavaScriptRepresentation(sb, cCharAt);
                    break;
                case '>':
                    if (sb.length() > 0 && sb.charAt(sb.length() - 1) == '-') {
                        sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                    }
                    sb.append(cCharAt);
                    break;
                case '\\':
                    sb.append("\\\\");
                    break;
                case 8232:
                    sb.append("\\u2028");
                    break;
                case 8233:
                    sb.append("\\u2029");
                    break;
                default:
                    if (cCharAt >= 128 && z) {
                        appendHexJavaScriptRepresentation(sb, cCharAt);
                    } else {
                        sb.append(cCharAt);
                    }
                    break;
            }
        }
        return sb.toString();
    }

    public static void appendHexJavaScriptRepresentation(StringBuilder sb, char c2) {
        sb.append("\\u");
        String hexString = Integer.toHexString(c2);
        for (int length = hexString.length(); length < 4; length++) {
            sb.append('0');
        }
        sb.append(hexString);
    }

    public static String javaScriptUnescape(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        int iJavaScriptUnescapeHelper = 0;
        while (iJavaScriptUnescapeHelper < str.length()) {
            char cCharAt = str.charAt(iJavaScriptUnescapeHelper);
            if (cCharAt == '\\') {
                iJavaScriptUnescapeHelper = javaScriptUnescapeHelper(str, iJavaScriptUnescapeHelper + 1, sb);
            } else {
                sb.append(cCharAt);
                iJavaScriptUnescapeHelper++;
            }
        }
        return sb.toString();
    }

    private static int javaScriptUnescapeHelper(String str, int i, StringBuilder sb) {
        if (i >= str.length()) {
            throw new IllegalArgumentException("End-of-string after escape character in [" + str + "]");
        }
        int i2 = i + 1;
        char cCharAt = str.charAt(i);
        switch (cCharAt) {
            case '\"':
            case '\'':
            case '>':
            case '\\':
                sb.append(cCharAt);
                return i2;
            case 'n':
                sb.append('\n');
                return i2;
            case 'r':
                sb.append(CharUtils.CR);
                return i2;
            case 't':
                sb.append('\t');
                return i2;
            case 'u':
                try {
                    String strSubstring = str.substring(i2, i2 + 4);
                    try {
                        sb.append((char) Integer.parseInt(strSubstring, 16));
                        return i2 + 4;
                    } catch (NumberFormatException e2) {
                        throw new IllegalArgumentException("Invalid unicode sequence [" + strSubstring + "] at index " + i2 + " in [" + str + "]");
                    }
                } catch (IndexOutOfBoundsException e3) {
                    throw new IllegalArgumentException("Invalid unicode sequence [" + str.substring(i2) + "] at index " + i2 + " in [" + str + "]");
                }
            default:
                throw new IllegalArgumentException("Unknown escape code [" + cCharAt + "] at index " + i2 + " in [" + str + "]");
        }
    }

    public static String xmlContentEscape(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case '\b':
                case 11:
                case '\f':
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                    break;
                case '\t':
                case '\n':
                case '\r':
                case ' ':
                case '!':
                case '\"':
                case '#':
                case '$':
                case '%':
                case '\'':
                case '(':
                case ')':
                case '*':
                case '+':
                case ',':
                case '-':
                case '.':
                case '/':
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                case ':':
                case ';':
                default:
                    sb.append(cCharAt);
                    break;
                case '&':
                    sb.append("&amp;");
                    break;
                case '<':
                    sb.append("&lt;");
                    break;
            }
        }
        return sb.toString();
    }

    public static String xmlSingleQuotedEscape(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case '\b':
                case 11:
                case '\f':
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                    break;
                case '\t':
                case '\r':
                case ' ':
                case '!':
                case '\"':
                case '#':
                case '$':
                case '%':
                case '(':
                case ')':
                case '*':
                case '+':
                case ',':
                case '-':
                case '.':
                case '/':
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                case ':':
                case ';':
                default:
                    sb.append(cCharAt);
                    break;
                case '\n':
                    sb.append("&#xA;");
                    break;
                case '&':
                    sb.append("&amp;");
                    break;
                case '\'':
                    sb.append("&quot;");
                    break;
                case '<':
                    sb.append("&lt;");
                    break;
            }
        }
        return sb.toString();
    }

    public static String xmlCDataEscape(String str) {
        String strRemoveFrom = CONTROL_MATCHER.removeFrom(str);
        int iIndexOf = strRemoveFrom.indexOf("]]>");
        if (iIndexOf == -1) {
            return strRemoveFrom;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        do {
            sb.append(strRemoveFrom.substring(i, iIndexOf + 3));
            sb.append("]]&gt;<![CDATA[");
            i = iIndexOf + 3;
            iIndexOf = strRemoveFrom.indexOf("]]>", i);
        } while (iIndexOf != -1);
        sb.append(strRemoveFrom.substring(i));
        return sb.toString();
    }

    public static String javaEscape(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case '\t':
                    sb.append("\\t");
                    break;
                case '\n':
                    sb.append("\\n");
                    break;
                case '\r':
                    sb.append("\\r");
                    break;
                case '\"':
                    sb.append("\\\"");
                    break;
                case '&':
                    sb.append("&amp;");
                    break;
                case '\'':
                    sb.append("\\'");
                    break;
                case '<':
                    sb.append("&lt;");
                    break;
                case '>':
                    sb.append("&gt;");
                    break;
                case '\\':
                    sb.append("\\\\");
                    break;
                default:
                    sb.append(cCharAt);
                    break;
            }
        }
        return sb.toString();
    }

    public static String javaEscapeWithinAttribute(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case '\t':
                    sb.append("\\t");
                    break;
                case '\n':
                    sb.append("\\n");
                    break;
                case '\r':
                    sb.append("\\r");
                    break;
                case '\"':
                    sb.append("&quot;");
                    break;
                case '&':
                    sb.append("&amp;");
                    break;
                case '\'':
                    sb.append("\\'");
                    break;
                case '<':
                    sb.append("&lt;");
                    break;
                case '>':
                    sb.append("&gt;");
                    break;
                case '\\':
                    sb.append("\\\\");
                    break;
                default:
                    sb.append(cCharAt);
                    break;
            }
        }
        return sb.toString();
    }

    public static String xmlEscape(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case 0:
                    break;
                case '\t':
                    sb.append("&#x9;");
                    break;
                case '\n':
                    sb.append("&#xA;");
                    break;
                case '\r':
                    sb.append("&#xD;");
                    break;
                case '\"':
                    sb.append("&quot;");
                    break;
                case '&':
                    sb.append("&amp;");
                    break;
                case '\'':
                    sb.append("&apos;");
                    break;
                case '<':
                    sb.append("&lt;");
                    break;
                case '>':
                    sb.append("&gt;");
                    break;
                default:
                    sb.append(cCharAt);
                    break;
            }
        }
        return sb.toString();
    }

    public static String htmlEscape(String str) {
        String str2;
        int i = 0;
        StringBuilder sb = null;
        for (int i2 = 0; i2 < str.length(); i2++) {
            switch (str.charAt(i2)) {
                case '\"':
                    str2 = "&quot;";
                    break;
                case '&':
                    str2 = "&amp;";
                    break;
                case '<':
                    str2 = "&lt;";
                    break;
                case '>':
                    str2 = "&gt;";
                    break;
                default:
                    str2 = null;
                    break;
            }
            if (str2 != null) {
                if (sb == null) {
                    sb = new StringBuilder((str.length() + str2.length()) - 1);
                }
                if (i2 > i) {
                    sb.append(str.substring(i, i2));
                }
                sb.append(str2);
                i = i2 + 1;
            }
        }
        if (i > 0) {
            sb.append(str.substring(i));
        }
        if (sb != null) {
            return sb.toString();
        }
        return str;
    }

    public static String regexEscape(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ("()|*+?.{}[]$^\\".indexOf(cCharAt) != -1) {
                sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                sb.append(cCharAt);
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static String javaUtilRegexEscape(String str) {
        if (str.indexOf("\\E") == -1) {
            return "\\Q" + str + "\\E";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
            sb.append(str.charAt(i));
        }
        return sb.toString();
    }

    public static String regexReplacementEscape(String str) {
        StringBuilder sb = null;
        int length = str.length();
        int i = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case '$':
                case '\\':
                    if (sb == null) {
                        sb = new StringBuilder(str.substring(0, i));
                    }
                    sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                    break;
            }
            StringBuilder sb2 = sb;
            if (sb2 != null) {
                sb2.append(cCharAt);
            }
            i++;
            sb = sb2;
        }
        return sb == null ? str : sb.toString();
    }

    public static String cropBetween(String str, char c2) {
        return cropBetween(str, String.valueOf(new char[]{c2}));
    }

    public static String cropBetween(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str2.length();
        boolean z = true;
        int i = 0;
        while (true) {
            int iIndexOf = str.indexOf(str2, i);
            if (iIndexOf < 0) {
                break;
            }
            if (z) {
                sb.append(str.substring(i, iIndexOf));
            }
            z = !z;
            i = iIndexOf + length;
        }
        if (z) {
            sb.append(str.substring(i));
        }
        return sb.toString();
    }

    public static LinkedList<String> string2List(String str, String str2, boolean z) {
        if (str == null) {
            return null;
        }
        LinkedList<String> linkedList = new LinkedList<>();
        string2Collection(str, str2, z, linkedList);
        return linkedList;
    }

    public static Set string2Set(String str, String str2, boolean z) {
        if (str == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        string2Collection(str, str2, z, hashSet);
        return hashSet;
    }

    public static Collection<String> string2Collection(String str, String str2, boolean z, Collection<String> collection) {
        if (str == null) {
            return null;
        }
        Collection<String> arrayList = collection == null ? new ArrayList<>() : collection;
        if (str2 == null || str2.length() == 0) {
            arrayList.add(str);
            return arrayList;
        }
        int length = 0;
        while (true) {
            int iIndexOf = str.indexOf(str2, length);
            if (iIndexOf < 0) {
                break;
            }
            String strSubstring = str.substring(length, iIndexOf);
            if (z) {
                strSubstring = strip(strSubstring);
            }
            if (!z || strSubstring.length() > 0) {
                arrayList.add(strSubstring);
            }
            length = str2.length() + iIndexOf;
        }
        String strSubstring2 = str.substring(length);
        if (z) {
            strSubstring2 = strip(strSubstring2);
        }
        if (!z || strSubstring2.length() > 0) {
            arrayList.add(strSubstring2);
        }
        return arrayList;
    }

    @Deprecated
    public static String list2String(Collection<?> collection, String str) {
        return Collection2String(collection, str);
    }

    @Deprecated
    public static String Collection2String(Collection<?> collection, String str) {
        if (collection == null) {
            return null;
        }
        return Iterator2String(collection.iterator(), str);
    }

    @Deprecated
    public static String Iterator2String(Iterator<?> it, String str) {
        if (it == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        while (it.hasNext()) {
            if (sb.length() > 0) {
                sb.append(str);
            }
            sb.append(it.next().toString());
        }
        return sb.toString();
    }

    public static HashMap<String, String> string2Map(String str, String str2, String str3, boolean z) {
        if (str == null) {
            return null;
        }
        HashMap<String, String> map = new HashMap<>();
        if (isEmpty(str2) || isEmpty(str3)) {
            map.put(strip(str), "");
            return map;
        }
        int length = str3.length();
        for (String str4 : string2List(str, str2, false)) {
            int iIndexOf = str4.indexOf(str3);
            if (iIndexOf > 0) {
                String strSubstring = str4.substring(iIndexOf + length);
                if (z) {
                    strSubstring = strip(strSubstring);
                }
                map.put(strip(str4.substring(0, iIndexOf)), strSubstring);
            } else {
                map.put(strip(str4), "");
            }
        }
        return map;
    }

    public static <K, V> String map2String(Map<K, V> map, String str, String str2) {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append(str2);
            }
            sb.append(entry.getKey() + str + entry.getValue());
        }
        return sb.toString();
    }

    public static <V> Map lowercaseKeys(Map<String, V> map) {
        HashMap map2 = new HashMap(map.size());
        for (String str : map.keySet()) {
            if (map2.containsKey(str.toLowerCase())) {
                throw new IllegalArgumentException("Duplicate string key in map when lower casing");
            }
            map2.put(str.toLowerCase(), map.get(str));
        }
        return map2;
    }

    public static String collapseWhitespace(String str) {
        return collapse(str, WHITE_SPACES, " ");
    }

    public static String collapse(String str, String str2, String str3) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (str2.indexOf(cCharAt) != -1) {
                if (!z) {
                    z = true;
                    sb.append(str3);
                }
            } else {
                sb.append(cCharAt);
                z = false;
            }
        }
        return sb.toString();
    }

    public static String stream2String(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[4096];
        StringWriter stringWriter = new StringWriter();
        int i2 = 0;
        int i3 = 0;
        do {
            stringWriter.write(new String(bArr, 0, i2));
            i3 += i2;
            i2 = inputStream.read(bArr, 0, bArr.length);
            if (-1 != i && i3 >= i) {
                break;
            }
        } while (i2 != -1);
        return stringWriter.toString();
    }

    public static String[] parseDelimitedList(String str, char c2) {
        String str2 = "" + c2;
        StringTokenizer stringTokenizer = new StringTokenizer(str + str2 + " ", str2, true);
        ArrayList arrayList = new ArrayList();
        String str3 = "";
        String str4 = "";
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (str3 != null) {
                if (strNextToken.equals(str2)) {
                    str4 = str4 + str3;
                    if (str3.equals(str2)) {
                        str3 = null;
                    }
                } else {
                    if (!str4.equals("")) {
                        arrayList.add(str4);
                    }
                    str4 = "";
                    str3 = strNextToken;
                }
            }
            str3 = strNextToken;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static boolean isEmpty(String str) {
        return makeSafe(str).length() == 0;
    }

    public static boolean isEmptyOrWhitespace(String str) {
        String strMakeSafe = makeSafe(str);
        int length = strMakeSafe.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(strMakeSafe.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String makeSafe(String str) {
        return str == null ? "" : str;
    }

    public static String toNullIfEmpty(String str) {
        if (isEmpty(str)) {
            return null;
        }
        return str;
    }

    public static String toNullIfEmptyOrWhitespace(String str) {
        if (isEmptyOrWhitespace(str)) {
            return null;
        }
        return str;
    }

    public static String arrayMap2String(Map<String, String[]> map, String str, String str2) {
        Iterator<Map.Entry<String, String[]>> it = map.entrySet().iterator();
        StringWriter stringWriter = new StringWriter();
        while (it.hasNext()) {
            Map.Entry<String, String[]> next = it.next();
            next.getKey();
            String[] value = next.getValue();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= value.length) {
                    break;
                }
                stringWriter.write(next.getKey() + str + value[i2]);
                if (i2 < value.length - 1) {
                    stringWriter.write(str2);
                }
                i = i2 + 1;
            }
            if (it.hasNext()) {
                stringWriter.write(str2);
            }
        }
        return stringWriter.toString();
    }

    public static boolean equals(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str != null && str2 != null) {
            return str.equals(str2);
        }
        return false;
    }

    public static String lastToken(String str, String str2) {
        String[] strArrSplit = split(str, str2);
        return strArrSplit.length == 0 ? "" : strArrSplit[strArrSplit.length - 1];
    }

    public static boolean allAscii(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if ((str.charAt(i) & 65408) != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean containsCharRef(String str) {
        return characterReferencePattern.matcher(str).find();
    }

    public static boolean isHebrew(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (isHebrew(str.codePointAt(i))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isHebrew(int i) {
        return Character.UnicodeBlock.HEBREW.equals(Character.UnicodeBlock.of(i));
    }

    public static boolean isCjk(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (isCjk(str.codePointAt(i))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isCjk(char c2) {
        return isCjk((int) c2);
    }

    public static boolean isCjk(int i) {
        if ((i & InputDeviceCompat.SOURCE_ANY) == 0) {
            return false;
        }
        return CJK_BLOCKS.contains(Character.UnicodeBlock.of(i));
    }

    public static String unicodeEscape(String str) {
        if (!allAscii(str)) {
            StringBuilder sb = new StringBuilder(str.length());
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt <= 127) {
                    sb.append(cCharAt);
                } else {
                    sb.append("\\u");
                    String hexString = Integer.toHexString(cCharAt);
                    int length2 = 4 - hexString.length();
                    for (int i2 = 0; i2 < length2; i2++) {
                        sb.append('0');
                    }
                    sb.append(hexString);
                }
            }
            return sb.toString();
        }
        return str;
    }

    public static int displayWidth(String str) {
        int length = str.length();
        int iDisplayWidth = 0;
        for (int i = 0; i < length; i++) {
            iDisplayWidth += displayWidth(str.charAt(i));
        }
        return iDisplayWidth;
    }

    public static int displayWidth(char c2) {
        return (c2 <= 1273 || c2 == 1470 || (c2 >= 1488 && c2 <= 1514) || c2 == 1523 || c2 == 1524 || ((c2 >= 3584 && c2 <= 3711) || ((c2 >= 7680 && c2 <= 8367) || ((c2 >= 8448 && c2 <= 8506) || (c2 >= 65377 && c2 <= 65500))))) ? 1 : 2;
    }

    public static String toString(float[] fArr) {
        if (fArr == null) {
            return "NULL";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < fArr.length; i++) {
            sb.append(fArr[i]);
            if (i != fArr.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static String toString(long[] jArr) {
        if (jArr == null) {
            return "NULL";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < jArr.length; i++) {
            sb.append(jArr[i]);
            if (i != jArr.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static String toString(int[] iArr) {
        if (iArr == null) {
            return "NULL";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < iArr.length; i++) {
            sb.append(iArr[i]);
            if (i != iArr.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static String toString(String[] strArr) {
        if (strArr == null) {
            return "NULL";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < strArr.length; i++) {
            sb.append("'").append(strArr[i]).append("'");
            if (i != strArr.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static String toString(String str) {
        return str == null ? "NULL" : new StringBuilder(str.length() + 2).append("'").append(str).append("'").toString();
    }

    public static String toString(int[][] iArr) {
        if (iArr == null) {
            return "NULL";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < iArr.length; i++) {
            sb.append("[");
            for (int i2 = 0; i2 < iArr[i].length; i2++) {
                sb.append(iArr[i][i2]);
                if (i2 != iArr[i].length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            if (i != iArr.length - 1) {
                sb.append(" ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static String toString(long[][] jArr) {
        if (jArr == null) {
            return "NULL";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < jArr.length; i++) {
            sb.append("[");
            for (int i2 = 0; i2 < jArr[i].length; i2++) {
                sb.append(jArr[i][i2]);
                if (i2 != jArr[i].length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            if (i != jArr.length - 1) {
                sb.append(" ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static String toString(Object[] objArr) {
        if (objArr == null) {
            return "NULL";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < objArr.length; i++) {
            sb.append(objArr[i].toString());
            if (i != objArr.length - 1) {
                sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static InputStream toUTF8InputStream(String str) {
        try {
            return new ByteArrayInputStream(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError();
        }
    }

    public static void copyStreams(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (inputStream == null || outputStream == null) {
            throw new IllegalArgumentException();
        }
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr, 0, bArr.length);
            if (-1 != i) {
                outputStream.write(bArr, 0, i);
            } else {
                return;
            }
        }
    }

    public static String bytesToLatin1(byte[] bArr) {
        return bytesToEncoding(bArr, "ISO-8859-1");
    }

    public static String bytesToHexString(byte[] bArr) {
        return bytesToHexString(bArr, null);
    }

    public static String bytesToHexString(byte[] bArr, Character ch) {
        StringBuffer stringBuffer = new StringBuffer((ch == null ? 2 : 3) * bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int i2 = (bArr[i] >>> 4) & 15;
            int i3 = bArr[i] & Ascii.SI;
            if (i > 0 && ch != null) {
                stringBuffer.append(ch.charValue());
            }
            stringBuffer.append(hexChars[i2]);
            stringBuffer.append(hexChars[i3]);
        }
        return stringBuffer.toString();
    }

    public static byte[] latin1ToBytes(String str) {
        return encodingToBytes(str, "ISO-8859-1");
    }

    public static String bytesToUtf8(byte[] bArr) {
        return bytesToEncoding(bArr, org.mortbay.util.StringUtil.__UTF8Alt);
    }

    public static byte[] utf8ToBytes(String str) {
        return encodingToBytes(str, org.mortbay.util.StringUtil.__UTF8Alt);
    }

    private static String bytesToEncoding(byte[] bArr, String str) {
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, str);
        } catch (UnsupportedEncodingException e2) {
            throw new Error(str + " not supported! Original exception: " + e2);
        }
    }

    public static byte[] encodingToBytes(String str, String str2) {
        if (str == null) {
            return null;
        }
        try {
            return str.getBytes(str2);
        } catch (UnsupportedEncodingException e2) {
            throw new Error(str2 + " not supported! Original exception: " + e2);
        }
    }

    public static List<String> bytesToStringList(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        if (bArr != null) {
            try {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr), "UTF-8"));
                    try {
                        for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                            arrayList.add(line);
                        }
                    } finally {
                        bufferedReader.close();
                    }
                } catch (UnsupportedEncodingException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (IOException e3) {
                throw new RuntimeException(e3);
            }
        }
        return arrayList;
    }

    public static String toUpperCase(String str) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase();
    }

    public static String expandShardNames(String str) throws IllegalStateException, IllegalArgumentException {
        Matcher matcher = dbSpecPattern.matcher(str);
        if (matcher.find()) {
            try {
                String strSubstring = str.substring(matcher.start(1), matcher.end(1));
                int i = Integer.parseInt(str.substring(matcher.start(2), matcher.end(2)));
                int i2 = Integer.parseInt(str.substring(matcher.start(3), matcher.end(3)));
                String strSubstring2 = str.substring(matcher.start(4), matcher.end(4));
                if (i > i2) {
                    throw new IllegalArgumentException("Maximum shard must be greater than or equal to the minimum shard");
                }
                StringBuilder sb = new StringBuilder();
                while (i <= i2) {
                    sb.append(strSubstring).append(i).append(strSubstring2);
                    if (i != i2) {
                        sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                    }
                    i++;
                }
                return sb.toString();
            } catch (NumberFormatException e2) {
                throw new IllegalArgumentException("Malformed DB specification component: " + str);
            }
        }
        return str;
    }

    public static String repeat(String str, int i) {
        if (i < 1) {
            return "";
        }
        if (i != 1) {
            StringBuilder sb = new StringBuilder(str.length() * i);
            while (i > 0) {
                sb.append(str);
                i--;
            }
            return sb.toString();
        }
        return str;
    }

    public static String capitalize(String str) {
        char cCharAt;
        char upperCase;
        return (str.length() == 0 || cCharAt == (upperCase = Character.toUpperCase((cCharAt = str.charAt(0))))) ? str : upperCase + str.substring(1);
    }
}
