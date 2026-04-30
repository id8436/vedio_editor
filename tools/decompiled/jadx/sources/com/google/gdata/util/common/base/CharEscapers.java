package com.google.gdata.util.common.base;

import java.io.IOException;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.CharUtils;

/* JADX INFO: loaded from: classes3.dex */
public final class CharEscapers {
    private static final CharEscaper NULL_ESCAPER = new CharEscaper() { // from class: com.google.gdata.util.common.base.CharEscapers.1
        @Override // com.google.gdata.util.common.base.CharEscaper, com.google.gdata.util.common.base.Escaper
        public String escape(String str) {
            Preconditions.checkNotNull(str);
            return str;
        }

        @Override // com.google.gdata.util.common.base.CharEscaper, com.google.gdata.util.common.base.Escaper
        public Appendable escape(final Appendable appendable) {
            Preconditions.checkNotNull(appendable);
            return new Appendable() { // from class: com.google.gdata.util.common.base.CharEscapers.1.1
                @Override // java.lang.Appendable
                public Appendable append(CharSequence charSequence) throws IOException {
                    Preconditions.checkNotNull(charSequence);
                    appendable.append(charSequence);
                    return this;
                }

                @Override // java.lang.Appendable
                public Appendable append(CharSequence charSequence, int i, int i2) throws IOException {
                    Preconditions.checkNotNull(charSequence);
                    appendable.append(charSequence, i, i2);
                    return this;
                }

                @Override // java.lang.Appendable
                public Appendable append(char c2) throws IOException {
                    appendable.append(c2);
                    return this;
                }
            };
        }

        @Override // com.google.gdata.util.common.base.CharEscaper
        protected char[] escape(char c2) {
            return null;
        }
    };
    private static final CharEscaper XML_ESCAPER = newBasicXmlEscapeBuilder().addEscape('\"', "&quot;").addEscape('\'', "&apos;").toEscaper();
    private static final CharEscaper XML_CONTENT_ESCAPER = newBasicXmlEscapeBuilder().toEscaper();
    private static final CharEscaper ASCII_HTML_ESCAPER = new CharEscaperBuilder().addEscape('\"', "&quot;").addEscape('\'', "&#39;").addEscape('&', "&amp;").addEscape('<', "&lt;").addEscape('>', "&gt;").toEscaper();
    private static final Escaper URI_ESCAPER = new PercentEscaper("-_.*", true);
    private static final Escaper URI_ESCAPER_NO_PLUS = new PercentEscaper("-_.*", false);
    private static final Escaper URI_PATH_ESCAPER = new PercentEscaper("-_.!~*'()@:$&,;=", false);
    private static final Escaper URI_QUERY_STRING_ESCAPER = new PercentEscaper("-_.!~*'()@:$,;/?:", false);
    private static final Escaper CPP_URI_ESCAPER = new PercentEscaper("!()*-._~,/:", true);
    private static final CharEscaper JAVA_STRING_ESCAPER = new JavaCharEscaper(new CharEscaperBuilder().addEscape('\b', "\\b").addEscape('\f', "\\f").addEscape('\n', "\\n").addEscape(CharUtils.CR, "\\r").addEscape('\t', "\\t").addEscape('\"', "\\\"").addEscape(IOUtils.DIR_SEPARATOR_WINDOWS, "\\\\").toArray());
    private static final CharEscaper JAVA_CHAR_ESCAPER = new JavaCharEscaper(new CharEscaperBuilder().addEscape('\b', "\\b").addEscape('\f', "\\f").addEscape('\n', "\\n").addEscape(CharUtils.CR, "\\r").addEscape('\t', "\\t").addEscape('\'', "\\'").addEscape('\"', "\\\"").addEscape(IOUtils.DIR_SEPARATOR_WINDOWS, "\\\\").toArray());
    private static final CharEscaper JAVA_STRING_UNICODE_ESCAPER = new CharEscaper() { // from class: com.google.gdata.util.common.base.CharEscapers.2
        @Override // com.google.gdata.util.common.base.CharEscaper
        protected char[] escape(char c2) {
            if (c2 <= 127) {
                return null;
            }
            char[] cArr = {IOUtils.DIR_SEPARATOR_WINDOWS, 'u', CharEscapers.HEX_DIGITS[((char) (c >>> 4)) & 15], CharEscapers.HEX_DIGITS[c & 15], CharEscapers.HEX_DIGITS[c & 15], CharEscapers.HEX_DIGITS[c2 & 15]};
            char c3 = (char) (c2 >>> 4);
            char c4 = (char) (c3 >>> 4);
            return cArr;
        }
    };
    private static final CharEscaper PYTHON_ESCAPER = new CharEscaperBuilder().addEscape('\n', "\\n").addEscape(CharUtils.CR, "\\r").addEscape('\t', "\\t").addEscape(IOUtils.DIR_SEPARATOR_WINDOWS, "\\\\").addEscape('\"', "\\\"").addEscape('\'', "\\'").toEscaper();
    private static final CharEscaper JAVASCRIPT_ESCAPER = new JavascriptCharEscaper(new CharEscaperBuilder().addEscape('\'', "\\x27").addEscape('\"', "\\x22").addEscape('<', "\\x3c").addEscape('=', "\\x3d").addEscape('>', "\\x3e").addEscape('&', "\\x26").addEscape('\b', "\\b").addEscape('\t', "\\t").addEscape('\n', "\\n").addEscape('\f', "\\f").addEscape(CharUtils.CR, "\\r").addEscape(IOUtils.DIR_SEPARATOR_WINDOWS, "\\\\").toArray());
    private static final char[] HEX_DIGITS = "0123456789abcdef".toCharArray();

    private CharEscapers() {
    }

    public static CharEscaper nullEscaper() {
        return NULL_ESCAPER;
    }

    public static CharEscaper xmlEscaper() {
        return XML_ESCAPER;
    }

    public static CharEscaper xmlContentEscaper() {
        return XML_CONTENT_ESCAPER;
    }

    public static CharEscaper htmlEscaper() {
        return HtmlEscaperHolder.HTML_ESCAPER;
    }

    class HtmlEscaperHolder {
        private static final CharEscaper HTML_ESCAPER = new HtmlCharEscaper(new CharEscaperBuilder().addEscape('\"', "&quot;").addEscape('\'', "&#39;").addEscape('&', "&amp;").addEscape('<', "&lt;").addEscape('>', "&gt;").addEscape(160, "&nbsp;").addEscape(161, "&iexcl;").addEscape(162, "&cent;").addEscape(163, "&pound;").addEscape(164, "&curren;").addEscape(165, "&yen;").addEscape(166, "&brvbar;").addEscape(167, "&sect;").addEscape(168, "&uml;").addEscape(169, "&copy;").addEscape(170, "&ordf;").addEscape(171, "&laquo;").addEscape(172, "&not;").addEscape(173, "&shy;").addEscape(174, "&reg;").addEscape(175, "&macr;").addEscape(176, "&deg;").addEscape(177, "&plusmn;").addEscape(178, "&sup2;").addEscape(179, "&sup3;").addEscape(180, "&acute;").addEscape(181, "&micro;").addEscape(182, "&para;").addEscape(183, "&middot;").addEscape(184, "&cedil;").addEscape(185, "&sup1;").addEscape(186, "&ordm;").addEscape(187, "&raquo;").addEscape(188, "&frac14;").addEscape(189, "&frac12;").addEscape(190, "&frac34;").addEscape(191, "&iquest;").addEscape(192, "&Agrave;").addEscape(193, "&Aacute;").addEscape(194, "&Acirc;").addEscape(195, "&Atilde;").addEscape(196, "&Auml;").addEscape(197, "&Aring;").addEscape(198, "&AElig;").addEscape(199, "&Ccedil;").addEscape(200, "&Egrave;").addEscape(201, "&Eacute;").addEscape(202, "&Ecirc;").addEscape(203, "&Euml;").addEscape(204, "&Igrave;").addEscape(205, "&Iacute;").addEscape(206, "&Icirc;").addEscape(207, "&Iuml;").addEscape(208, "&ETH;").addEscape(209, "&Ntilde;").addEscape(210, "&Ograve;").addEscape(211, "&Oacute;").addEscape(212, "&Ocirc;").addEscape(213, "&Otilde;").addEscape(214, "&Ouml;").addEscape(215, "&times;").addEscape(216, "&Oslash;").addEscape(217, "&Ugrave;").addEscape(218, "&Uacute;").addEscape(219, "&Ucirc;").addEscape(220, "&Uuml;").addEscape(221, "&Yacute;").addEscape(222, "&THORN;").addEscape(223, "&szlig;").addEscape(224, "&agrave;").addEscape(225, "&aacute;").addEscape(226, "&acirc;").addEscape(227, "&atilde;").addEscape(228, "&auml;").addEscape(229, "&aring;").addEscape(230, "&aelig;").addEscape(231, "&ccedil;").addEscape(232, "&egrave;").addEscape(233, "&eacute;").addEscape(234, "&ecirc;").addEscape(235, "&euml;").addEscape(236, "&igrave;").addEscape(237, "&iacute;").addEscape(238, "&icirc;").addEscape(239, "&iuml;").addEscape(240, "&eth;").addEscape(241, "&ntilde;").addEscape(242, "&ograve;").addEscape(243, "&oacute;").addEscape(244, "&ocirc;").addEscape(245, "&otilde;").addEscape(246, "&ouml;").addEscape(247, "&divide;").addEscape(248, "&oslash;").addEscape(249, "&ugrave;").addEscape(250, "&uacute;").addEscape(251, "&ucirc;").addEscape(252, "&uuml;").addEscape(253, "&yacute;").addEscape(254, "&thorn;").addEscape(255, "&yuml;").addEscape(338, "&OElig;").addEscape(339, "&oelig;").addEscape(352, "&Scaron;").addEscape(353, "&scaron;").addEscape(376, "&Yuml;").addEscape(402, "&fnof;").addEscape(710, "&circ;").addEscape(732, "&tilde;").addEscape(913, "&Alpha;").addEscape(914, "&Beta;").addEscape(915, "&Gamma;").addEscape(916, "&Delta;").addEscape(917, "&Epsilon;").addEscape(918, "&Zeta;").addEscape(919, "&Eta;").addEscape(920, "&Theta;").addEscape(921, "&Iota;").addEscape(922, "&Kappa;").addEscape(923, "&Lambda;").addEscape(924, "&Mu;").addEscape(925, "&Nu;").addEscape(926, "&Xi;").addEscape(927, "&Omicron;").addEscape(928, "&Pi;").addEscape(929, "&Rho;").addEscape(931, "&Sigma;").addEscape(932, "&Tau;").addEscape(933, "&Upsilon;").addEscape(934, "&Phi;").addEscape(935, "&Chi;").addEscape(936, "&Psi;").addEscape(937, "&Omega;").addEscape(945, "&alpha;").addEscape(946, "&beta;").addEscape(947, "&gamma;").addEscape(948, "&delta;").addEscape(949, "&epsilon;").addEscape(950, "&zeta;").addEscape(951, "&eta;").addEscape(952, "&theta;").addEscape(953, "&iota;").addEscape(954, "&kappa;").addEscape(955, "&lambda;").addEscape(956, "&mu;").addEscape(957, "&nu;").addEscape(958, "&xi;").addEscape(959, "&omicron;").addEscape(960, "&pi;").addEscape(961, "&rho;").addEscape(962, "&sigmaf;").addEscape(963, "&sigma;").addEscape(964, "&tau;").addEscape(965, "&upsilon;").addEscape(966, "&phi;").addEscape(967, "&chi;").addEscape(968, "&psi;").addEscape(969, "&omega;").addEscape(977, "&thetasym;").addEscape(978, "&upsih;").addEscape(982, "&piv;").addEscape(8194, "&ensp;").addEscape(8195, "&emsp;").addEscape(8201, "&thinsp;").addEscape(8204, "&zwnj;").addEscape(8205, "&zwj;").addEscape(8206, "&lrm;").addEscape(8207, "&rlm;").addEscape(8211, "&ndash;").addEscape(8212, "&mdash;").addEscape(8216, "&lsquo;").addEscape(8217, "&rsquo;").addEscape(8218, "&sbquo;").addEscape(8220, "&ldquo;").addEscape(8221, "&rdquo;").addEscape(8222, "&bdquo;").addEscape(8224, "&dagger;").addEscape(8225, "&Dagger;").addEscape(8226, "&bull;").addEscape(8230, "&hellip;").addEscape(8240, "&permil;").addEscape(8242, "&prime;").addEscape(8243, "&Prime;").addEscape(8249, "&lsaquo;").addEscape(8250, "&rsaquo;").addEscape(8254, "&oline;").addEscape(8260, "&frasl;").addEscape(8364, "&euro;").addEscape(8465, "&image;").addEscape(8472, "&weierp;").addEscape(8476, "&real;").addEscape(8482, "&trade;").addEscape(8501, "&alefsym;").addEscape(8592, "&larr;").addEscape(8593, "&uarr;").addEscape(8594, "&rarr;").addEscape(8595, "&darr;").addEscape(8596, "&harr;").addEscape(8629, "&crarr;").addEscape(8656, "&lArr;").addEscape(8657, "&uArr;").addEscape(8658, "&rArr;").addEscape(8659, "&dArr;").addEscape(8660, "&hArr;").addEscape(8704, "&forall;").addEscape(8706, "&part;").addEscape(8707, "&exist;").addEscape(8709, "&empty;").addEscape(8711, "&nabla;").addEscape(8712, "&isin;").addEscape(8713, "&notin;").addEscape(8715, "&ni;").addEscape(8719, "&prod;").addEscape(8721, "&sum;").addEscape(8722, "&minus;").addEscape(8727, "&lowast;").addEscape(8730, "&radic;").addEscape(8733, "&prop;").addEscape(8734, "&infin;").addEscape(8736, "&ang;").addEscape(8743, "&and;").addEscape(8744, "&or;").addEscape(8745, "&cap;").addEscape(8746, "&cup;").addEscape(8747, "&int;").addEscape(8756, "&there4;").addEscape(8764, "&sim;").addEscape(8773, "&cong;").addEscape(8776, "&asymp;").addEscape(8800, "&ne;").addEscape(8801, "&equiv;").addEscape(8804, "&le;").addEscape(8805, "&ge;").addEscape(8834, "&sub;").addEscape(8835, "&sup;").addEscape(8836, "&nsub;").addEscape(8838, "&sube;").addEscape(8839, "&supe;").addEscape(8853, "&oplus;").addEscape(8855, "&otimes;").addEscape(8869, "&perp;").addEscape(8901, "&sdot;").addEscape(8968, "&lceil;").addEscape(8969, "&rceil;").addEscape(8970, "&lfloor;").addEscape(8971, "&rfloor;").addEscape(9001, "&lang;").addEscape(9002, "&rang;").addEscape(9674, "&loz;").addEscape(9824, "&spades;").addEscape(9827, "&clubs;").addEscape(9829, "&hearts;").addEscape(9830, "&diams;").toArray());

        private HtmlEscaperHolder() {
        }
    }

    public static CharEscaper asciiHtmlEscaper() {
        return ASCII_HTML_ESCAPER;
    }

    public static Escaper uriEscaper() {
        return uriEscaper(true);
    }

    public static Escaper uriPathEscaper() {
        return URI_PATH_ESCAPER;
    }

    public static Escaper uriQueryStringEscaper() {
        return URI_QUERY_STRING_ESCAPER;
    }

    public static Escaper uriEscaper(boolean z) {
        return z ? URI_ESCAPER : URI_ESCAPER_NO_PLUS;
    }

    public static Escaper cppUriEscaper() {
        return CPP_URI_ESCAPER;
    }

    public static CharEscaper javaStringEscaper() {
        return JAVA_STRING_ESCAPER;
    }

    public static CharEscaper javaCharEscaper() {
        return JAVA_CHAR_ESCAPER;
    }

    public static CharEscaper javaStringUnicodeEscaper() {
        return JAVA_STRING_UNICODE_ESCAPER;
    }

    public static CharEscaper pythonEscaper() {
        return PYTHON_ESCAPER;
    }

    public static CharEscaper javascriptEscaper() {
        return JAVASCRIPT_ESCAPER;
    }

    private static CharEscaperBuilder newBasicXmlEscapeBuilder() {
        return new CharEscaperBuilder().addEscape('&', "&amp;").addEscape('<', "&lt;").addEscape('>', "&gt;").addEscapes(new char[]{0, 1, 2, 3, 4, 5, 6, 7, '\b', 11, '\f', 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31}, "");
    }

    public static CharEscaper fallThrough(CharEscaper charEscaper, CharEscaper charEscaper2) {
        Preconditions.checkNotNull(charEscaper);
        Preconditions.checkNotNull(charEscaper2);
        return new FallThroughCharEscaper(charEscaper, charEscaper2);
    }

    abstract class FastCharEscaper extends CharEscaper {
        protected final int replacementLength;
        protected final char[][] replacements;
        protected final char safeMax;
        protected final char safeMin;

        public FastCharEscaper(char[][] cArr, char c2, char c3) {
            this.replacements = cArr;
            this.replacementLength = cArr.length;
            this.safeMin = c2;
            this.safeMax = c3;
        }

        @Override // com.google.gdata.util.common.base.CharEscaper, com.google.gdata.util.common.base.Escaper
        public String escape(String str) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if ((cCharAt < this.replacementLength && this.replacements[cCharAt] != null) || cCharAt < this.safeMin || cCharAt > this.safeMax) {
                    return escapeSlow(str, i);
                }
            }
            return str;
        }
    }

    class JavaCharEscaper extends FastCharEscaper {
        public JavaCharEscaper(char[][] cArr) {
            super(cArr, ' ', '~');
        }

        @Override // com.google.gdata.util.common.base.CharEscaper
        protected char[] escape(char c2) {
            char[] cArr;
            if (c2 >= this.replacementLength || (cArr = this.replacements[c2]) == null) {
                if (this.safeMin <= c2 && c2 <= this.safeMax) {
                    return null;
                }
                if (c2 <= 255) {
                    char[] cArr2 = {IOUtils.DIR_SEPARATOR_WINDOWS, CharEscapers.HEX_DIGITS[((char) (c >>> 3)) & 7], CharEscapers.HEX_DIGITS[c & 7], CharEscapers.HEX_DIGITS[c2 & 7]};
                    char c3 = (char) (c2 >>> 3);
                    return cArr2;
                }
                char[] cArr3 = {IOUtils.DIR_SEPARATOR_WINDOWS, 'u', CharEscapers.HEX_DIGITS[((char) (c >>> 4)) & 15], CharEscapers.HEX_DIGITS[c & 15], CharEscapers.HEX_DIGITS[c & 15], CharEscapers.HEX_DIGITS[c2 & 15]};
                char c4 = (char) (c2 >>> 4);
                char c5 = (char) (c4 >>> 4);
                return cArr3;
            }
            return cArr;
        }
    }

    class JavascriptCharEscaper extends FastCharEscaper {
        public JavascriptCharEscaper(char[][] cArr) {
            super(cArr, ' ', '~');
        }

        @Override // com.google.gdata.util.common.base.CharEscaper
        protected char[] escape(char c2) {
            char[] cArr;
            if (c2 >= this.replacementLength || (cArr = this.replacements[c2]) == null) {
                if (this.safeMin <= c2 && c2 <= this.safeMax) {
                    return null;
                }
                if (c2 < 256) {
                    return new char[]{IOUtils.DIR_SEPARATOR_WINDOWS, 'x', CharEscapers.HEX_DIGITS[((char) (c2 >>> 4)) & 15], CharEscapers.HEX_DIGITS[c2 & 15]};
                }
                char[] cArr2 = {IOUtils.DIR_SEPARATOR_WINDOWS, 'u', CharEscapers.HEX_DIGITS[((char) (c >>> 4)) & 15], CharEscapers.HEX_DIGITS[c & 15], CharEscapers.HEX_DIGITS[c & 15], CharEscapers.HEX_DIGITS[c2 & 15]};
                char c3 = (char) (c2 >>> 4);
                char c4 = (char) (c3 >>> 4);
                return cArr2;
            }
            return cArr;
        }
    }

    class HtmlCharEscaper extends FastCharEscaper {
        public HtmlCharEscaper(char[][] cArr) {
            super(cArr, (char) 0, '~');
        }

        @Override // com.google.gdata.util.common.base.CharEscaper
        protected char[] escape(char c2) {
            int i;
            char[] cArr;
            if (c2 >= this.replacementLength || (cArr = this.replacements[c2]) == null) {
                if (c2 <= this.safeMax) {
                    return null;
                }
                if (c2 < 1000) {
                    i = 4;
                } else if (c2 < 10000) {
                    i = 5;
                } else {
                    i = 6;
                }
                char[] cArr2 = new char[i + 2];
                cArr2[0] = '&';
                cArr2[1] = '#';
                cArr2[i + 1] = ';';
                int i2 = c2;
                while (i > 1) {
                    cArr2[i] = CharEscapers.HEX_DIGITS[i2 % 10];
                    i--;
                    i2 /= 10;
                }
                return cArr2;
            }
            return cArr;
        }
    }

    class FallThroughCharEscaper extends CharEscaper {
        private final CharEscaper primary;
        private final CharEscaper secondary;

        public FallThroughCharEscaper(CharEscaper charEscaper, CharEscaper charEscaper2) {
            this.primary = charEscaper;
            this.secondary = charEscaper2;
        }

        @Override // com.google.gdata.util.common.base.CharEscaper
        protected char[] escape(char c2) {
            char[] cArrEscape = this.primary.escape(c2);
            if (cArrEscape == null) {
                return this.secondary.escape(c2);
            }
            return cArrEscape;
        }
    }
}
