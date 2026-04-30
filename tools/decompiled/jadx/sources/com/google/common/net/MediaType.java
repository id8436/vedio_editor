package com.google.common.net;

import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Charsets;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multimaps;
import com.google.gdata.data.analytics.Engagement;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
@Beta
@GwtCompatible
@Immutable
public final class MediaType {
    private static final String APPLICATION_TYPE = "application";
    private static final String AUDIO_TYPE = "audio";
    private static final String CHARSET_ATTRIBUTE = "charset";
    private static final String IMAGE_TYPE = "image";
    private static final String TEXT_TYPE = "text";
    private static final String VIDEO_TYPE = "video";
    private static final String WILDCARD = "*";
    private final ImmutableListMultimap<String, String> parameters;
    private final String subtype;
    private final String type;
    private static final ImmutableListMultimap<String, String> UTF_8_CONSTANT_PARAMETERS = ImmutableListMultimap.of("charset", Ascii.toLowerCase(Charsets.UTF_8.name()));
    private static final CharMatcher TOKEN_MATCHER = CharMatcher.ASCII.and(CharMatcher.JAVA_ISO_CONTROL.negate()).and(CharMatcher.isNot(' ')).and(CharMatcher.noneOf("()<>@,;:\\\"/[]?="));
    private static final CharMatcher QUOTED_TEXT_MATCHER = CharMatcher.ASCII.and(CharMatcher.noneOf("\"\\\r"));
    private static final CharMatcher LINEAR_WHITE_SPACE = CharMatcher.anyOf(" \t\r\n");
    private static final Map<MediaType, MediaType> KNOWN_TYPES = Maps.newHashMap();
    public static final MediaType ANY_TYPE = createConstant("*", "*");
    public static final MediaType ANY_TEXT_TYPE = createConstant("text", "*");
    public static final MediaType ANY_IMAGE_TYPE = createConstant("image", "*");
    public static final MediaType ANY_AUDIO_TYPE = createConstant("audio", "*");
    public static final MediaType ANY_VIDEO_TYPE = createConstant("video", "*");
    public static final MediaType ANY_APPLICATION_TYPE = createConstant("application", "*");
    public static final MediaType CACHE_MANIFEST_UTF_8 = createConstantUtf8("text", "cache-manifest");
    public static final MediaType CSS_UTF_8 = createConstantUtf8("text", "css");
    public static final MediaType CSV_UTF_8 = createConstantUtf8("text", "csv");
    public static final MediaType HTML_UTF_8 = createConstantUtf8("text", BehanceSDKPublishConstants.KEY_HTML);
    public static final MediaType I_CALENDAR_UTF_8 = createConstantUtf8("text", "calendar");
    public static final MediaType PLAIN_TEXT_UTF_8 = createConstantUtf8("text", "plain");
    public static final MediaType TEXT_JAVASCRIPT_UTF_8 = createConstantUtf8("text", "javascript");
    public static final MediaType TSV_UTF_8 = createConstantUtf8("text", "tab-separated-values");
    public static final MediaType VCARD_UTF_8 = createConstantUtf8("text", "vcard");
    public static final MediaType WML_UTF_8 = createConstantUtf8("text", "vnd.wap.wml");
    public static final MediaType XML_UTF_8 = createConstantUtf8("text", "xml");
    public static final MediaType BMP = createConstant("image", AdobeAssetFileExtensions.kAdobeFileExtensionTypeBMP);
    public static final MediaType CRW = createConstant("image", "x-canon-crw");
    public static final MediaType GIF = createConstant("image", AdobeAssetFileExtensions.kAdobeFileExtensionTypeGIF);
    public static final MediaType ICO = createConstant("image", "vnd.microsoft.icon");
    public static final MediaType JPEG = createConstant("image", "jpeg");
    public static final MediaType PNG = createConstant("image", "png");
    public static final MediaType PSD = createConstant("image", "vnd.adobe.photoshop");
    public static final MediaType SVG_UTF_8 = createConstantUtf8("image", "svg+xml");
    public static final MediaType TIFF = createConstant("image", AdobeAssetFileExtensions.kAdobeFileExtensionTypeTIFF);
    public static final MediaType WEBP = createConstant("image", "webp");
    public static final MediaType MP4_AUDIO = createConstant("audio", AdobeAssetFileExtensions.kAdobeFileExtensionTypeMP4);
    public static final MediaType MPEG_AUDIO = createConstant("audio", "mpeg");
    public static final MediaType OGG_AUDIO = createConstant("audio", "ogg");
    public static final MediaType WEBM_AUDIO = createConstant("audio", "webm");
    public static final MediaType MP4_VIDEO = createConstant("video", AdobeAssetFileExtensions.kAdobeFileExtensionTypeMP4);
    public static final MediaType MPEG_VIDEO = createConstant("video", "mpeg");
    public static final MediaType OGG_VIDEO = createConstant("video", "ogg");
    public static final MediaType QUICKTIME = createConstant("video", "quicktime");
    public static final MediaType WEBM_VIDEO = createConstant("video", "webm");
    public static final MediaType WMV = createConstant("video", "x-ms-wmv");
    public static final MediaType APPLICATION_XML_UTF_8 = createConstantUtf8("application", "xml");
    public static final MediaType ATOM_UTF_8 = createConstantUtf8("application", "atom+xml");
    public static final MediaType BZIP2 = createConstant("application", "x-bzip2");
    public static final MediaType EOT = createConstant("application", "vnd.ms-fontobject");
    public static final MediaType EPUB = createConstant("application", "epub+zip");
    public static final MediaType FORM_DATA = createConstant("application", "x-www-form-urlencoded");
    public static final MediaType KEY_ARCHIVE = createConstant("application", "pkcs12");
    public static final MediaType APPLICATION_BINARY = createConstant("application", "binary");
    public static final MediaType GZIP = createConstant("application", "x-gzip");
    public static final MediaType JAVASCRIPT_UTF_8 = createConstantUtf8("application", "javascript");
    public static final MediaType JSON_UTF_8 = createConstantUtf8("application", "json");
    public static final MediaType KML = createConstant("application", "vnd.google-earth.kml+xml");
    public static final MediaType KMZ = createConstant("application", "vnd.google-earth.kmz");
    public static final MediaType MBOX = createConstant("application", "mbox");
    public static final MediaType MICROSOFT_EXCEL = createConstant("application", "vnd.ms-excel");
    public static final MediaType MICROSOFT_POWERPOINT = createConstant("application", "vnd.ms-powerpoint");
    public static final MediaType MICROSOFT_WORD = createConstant("application", "msword");
    public static final MediaType OCTET_STREAM = createConstant("application", "octet-stream");
    public static final MediaType OGG_CONTAINER = createConstant("application", "ogg");
    public static final MediaType OOXML_DOCUMENT = createConstant("application", "vnd.openxmlformats-officedocument.wordprocessingml.document");
    public static final MediaType OOXML_PRESENTATION = createConstant("application", "vnd.openxmlformats-officedocument.presentationml.presentation");
    public static final MediaType OOXML_SHEET = createConstant("application", "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
    public static final MediaType OPENDOCUMENT_GRAPHICS = createConstant("application", "vnd.oasis.opendocument.graphics");
    public static final MediaType OPENDOCUMENT_PRESENTATION = createConstant("application", "vnd.oasis.opendocument.presentation");
    public static final MediaType OPENDOCUMENT_SPREADSHEET = createConstant("application", "vnd.oasis.opendocument.spreadsheet");
    public static final MediaType OPENDOCUMENT_TEXT = createConstant("application", "vnd.oasis.opendocument.text");
    public static final MediaType PDF = createConstant("application", "pdf");
    public static final MediaType POSTSCRIPT = createConstant("application", "postscript");
    public static final MediaType PROTOBUF = createConstant("application", "protobuf");
    public static final MediaType RDF_XML_UTF_8 = createConstantUtf8("application", "rdf+xml");
    public static final MediaType RTF_UTF_8 = createConstantUtf8("application", "rtf");
    public static final MediaType SFNT = createConstant("application", "font-sfnt");
    public static final MediaType SHOCKWAVE_FLASH = createConstant("application", "x-shockwave-flash");
    public static final MediaType SKETCHUP = createConstant("application", "vnd.sketchup.skp");
    public static final MediaType TAR = createConstant("application", "x-tar");
    public static final MediaType WOFF = createConstant("application", "font-woff");
    public static final MediaType XHTML_UTF_8 = createConstantUtf8("application", "xhtml+xml");
    public static final MediaType XRD_UTF_8 = createConstantUtf8("application", "xrd+xml");
    public static final MediaType ZIP = createConstant("application", AdobeAssetFileExtensions.kAdobeFileExtensionTypeZip);
    private static final Joiner.MapJoiner PARAMETER_JOINER = Joiner.on("; ").withKeyValueSeparator(Engagement.Comparison.EQ);

    private static MediaType createConstant(String str, String str2) {
        return addKnownType(new MediaType(str, str2, ImmutableListMultimap.of()));
    }

    private static MediaType createConstantUtf8(String str, String str2) {
        return addKnownType(new MediaType(str, str2, UTF_8_CONSTANT_PARAMETERS));
    }

    private static MediaType addKnownType(MediaType mediaType) {
        KNOWN_TYPES.put(mediaType, mediaType);
        return mediaType;
    }

    private MediaType(String str, String str2, ImmutableListMultimap<String, String> immutableListMultimap) {
        this.type = str;
        this.subtype = str2;
        this.parameters = immutableListMultimap;
    }

    public String type() {
        return this.type;
    }

    public String subtype() {
        return this.subtype;
    }

    public ImmutableListMultimap<String, String> parameters() {
        return this.parameters;
    }

    private Map<String, ImmutableMultiset<String>> parametersAsMap() {
        return Maps.transformValues(this.parameters.asMap(), new Function<Collection<String>, ImmutableMultiset<String>>() { // from class: com.google.common.net.MediaType.1
            @Override // com.google.common.base.Function
            public ImmutableMultiset<String> apply(Collection<String> collection) {
                return ImmutableMultiset.copyOf(collection);
            }
        });
    }

    public Optional<Charset> charset() {
        ImmutableSet immutableSetCopyOf = ImmutableSet.copyOf((Collection) this.parameters.get("charset"));
        switch (immutableSetCopyOf.size()) {
            case 0:
                return Optional.absent();
            case 1:
                return Optional.of(Charset.forName((String) Iterables.getOnlyElement(immutableSetCopyOf)));
            default:
                throw new IllegalStateException("Multiple charset values defined: " + immutableSetCopyOf);
        }
    }

    public MediaType withoutParameters() {
        return this.parameters.isEmpty() ? this : create(this.type, this.subtype);
    }

    public MediaType withParameters(Multimap<String, String> multimap) {
        return create(this.type, this.subtype, multimap);
    }

    public MediaType withParameter(String str, String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        String strNormalizeToken = normalizeToken(str);
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        Iterator it = this.parameters.entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str3 = (String) entry.getKey();
            if (!strNormalizeToken.equals(str3)) {
                builder.put(str3, entry.getValue());
            }
        }
        builder.put(strNormalizeToken, normalizeParameterValue(strNormalizeToken, str2));
        MediaType mediaType = new MediaType(this.type, this.subtype, builder.build());
        return (MediaType) Objects.firstNonNull(KNOWN_TYPES.get(mediaType), mediaType);
    }

    public MediaType withCharset(Charset charset) {
        Preconditions.checkNotNull(charset);
        return withParameter("charset", charset.name());
    }

    public boolean hasWildcard() {
        return "*".equals(this.type) || "*".equals(this.subtype);
    }

    public boolean is(MediaType mediaType) {
        return (mediaType.type.equals("*") || mediaType.type.equals(this.type)) && (mediaType.subtype.equals("*") || mediaType.subtype.equals(this.subtype)) && this.parameters.entries().containsAll(mediaType.parameters.entries());
    }

    public static MediaType create(String str, String str2) {
        return create(str, str2, ImmutableListMultimap.of());
    }

    static MediaType createApplicationType(String str) {
        return create("application", str);
    }

    static MediaType createAudioType(String str) {
        return create("audio", str);
    }

    static MediaType createImageType(String str) {
        return create("image", str);
    }

    static MediaType createTextType(String str) {
        return create("text", str);
    }

    static MediaType createVideoType(String str) {
        return create("video", str);
    }

    private static MediaType create(String str, String str2, Multimap<String, String> multimap) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        Preconditions.checkNotNull(multimap);
        String strNormalizeToken = normalizeToken(str);
        String strNormalizeToken2 = normalizeToken(str2);
        Preconditions.checkArgument(!"*".equals(strNormalizeToken) || "*".equals(strNormalizeToken2), "A wildcard type cannot be used with a non-wildcard subtype");
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        for (Map.Entry<String, String> entry : multimap.entries()) {
            String strNormalizeToken3 = normalizeToken(entry.getKey());
            builder.put(strNormalizeToken3, normalizeParameterValue(strNormalizeToken3, entry.getValue()));
        }
        MediaType mediaType = new MediaType(strNormalizeToken, strNormalizeToken2, builder.build());
        return (MediaType) Objects.firstNonNull(KNOWN_TYPES.get(mediaType), mediaType);
    }

    private static String normalizeToken(String str) {
        Preconditions.checkArgument(TOKEN_MATCHER.matchesAllOf(str));
        return Ascii.toLowerCase(str);
    }

    private static String normalizeParameterValue(String str, String str2) {
        return "charset".equals(str) ? Ascii.toLowerCase(str2) : str2;
    }

    public static MediaType parse(String str) {
        String strConsumeToken;
        Preconditions.checkNotNull(str);
        Tokenizer tokenizer = new Tokenizer(str);
        try {
            String strConsumeToken2 = tokenizer.consumeToken(TOKEN_MATCHER);
            tokenizer.consumeCharacter(IOUtils.DIR_SEPARATOR_UNIX);
            String strConsumeToken3 = tokenizer.consumeToken(TOKEN_MATCHER);
            ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
            while (tokenizer.hasMore()) {
                tokenizer.consumeCharacter(';');
                tokenizer.consumeTokenIfPresent(LINEAR_WHITE_SPACE);
                String strConsumeToken4 = tokenizer.consumeToken(TOKEN_MATCHER);
                tokenizer.consumeCharacter('=');
                if ('\"' == tokenizer.previewChar()) {
                    tokenizer.consumeCharacter('\"');
                    StringBuilder sb = new StringBuilder();
                    while ('\"' != tokenizer.previewChar()) {
                        if ('\\' == tokenizer.previewChar()) {
                            tokenizer.consumeCharacter(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb.append(tokenizer.consumeCharacter(CharMatcher.ASCII));
                        } else {
                            sb.append(tokenizer.consumeToken(QUOTED_TEXT_MATCHER));
                        }
                    }
                    strConsumeToken = sb.toString();
                    tokenizer.consumeCharacter('\"');
                } else {
                    strConsumeToken = tokenizer.consumeToken(TOKEN_MATCHER);
                }
                builder.put(strConsumeToken4, strConsumeToken);
            }
            return create(strConsumeToken2, strConsumeToken3, builder.build());
        } catch (IllegalStateException e2) {
            throw new IllegalArgumentException("Could not parse '" + str + "'", e2);
        }
    }

    final class Tokenizer {
        final String input;
        int position = 0;

        Tokenizer(String str) {
            this.input = str;
        }

        String consumeTokenIfPresent(CharMatcher charMatcher) {
            Preconditions.checkState(hasMore());
            int i = this.position;
            this.position = charMatcher.negate().indexIn(this.input, i);
            return hasMore() ? this.input.substring(i, this.position) : this.input.substring(i);
        }

        String consumeToken(CharMatcher charMatcher) {
            int i = this.position;
            String strConsumeTokenIfPresent = consumeTokenIfPresent(charMatcher);
            Preconditions.checkState(this.position != i);
            return strConsumeTokenIfPresent;
        }

        char consumeCharacter(CharMatcher charMatcher) {
            Preconditions.checkState(hasMore());
            char cPreviewChar = previewChar();
            Preconditions.checkState(charMatcher.matches(cPreviewChar));
            this.position++;
            return cPreviewChar;
        }

        char consumeCharacter(char c2) {
            Preconditions.checkState(hasMore());
            Preconditions.checkState(previewChar() == c2);
            this.position++;
            return c2;
        }

        char previewChar() {
            Preconditions.checkState(hasMore());
            return this.input.charAt(this.position);
        }

        boolean hasMore() {
            return this.position >= 0 && this.position < this.input.length();
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MediaType)) {
            return false;
        }
        MediaType mediaType = (MediaType) obj;
        return this.type.equals(mediaType.type) && this.subtype.equals(mediaType.subtype) && parametersAsMap().equals(mediaType.parametersAsMap());
    }

    public int hashCode() {
        return Objects.hashCode(this.type, this.subtype, parametersAsMap());
    }

    public String toString() {
        StringBuilder sbAppend = new StringBuilder().append(this.type).append(IOUtils.DIR_SEPARATOR_UNIX).append(this.subtype);
        if (!this.parameters.isEmpty()) {
            sbAppend.append("; ");
            PARAMETER_JOINER.appendTo(sbAppend, Multimaps.transformValues((ListMultimap) this.parameters, (Function) new Function<String, String>() { // from class: com.google.common.net.MediaType.2
                @Override // com.google.common.base.Function
                public String apply(String str) {
                    return MediaType.TOKEN_MATCHER.matchesAllOf(str) ? str : MediaType.escapeAndQuote(str);
                }
            }).entries());
        }
        return sbAppend.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String escapeAndQuote(String str) {
        StringBuilder sbAppend = new StringBuilder(str.length() + 16).append('\"');
        for (char c2 : str.toCharArray()) {
            if (c2 == '\r' || c2 == '\\' || c2 == '\"') {
                sbAppend.append(IOUtils.DIR_SEPARATOR_WINDOWS);
            }
            sbAppend.append(c2);
        }
        return sbAppend.append('\"').toString();
    }
}
