.class public Lorg/apache/http/conn/util/InetAddressUtilsHC4;
.super Ljava/lang/Object;
.source "InetAddressUtilsHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final COLON_CHAR:C = ':'

.field private static final IPV4_BASIC_PATTERN_STRING:Ljava/lang/String; = "(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])"

.field private static final IPV4_MAPPED_IPV6_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_HEX_COMPRESSED_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_COLON_COUNT:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    const-string/jumbo v0, "^::[fF]{4}:(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->IPV4_MAPPED_IPV6_PATTERN:Ljava/util/regex/Pattern;

    .line 55
    const-string/jumbo v0, "^[0-9a-fA-F]{1,4}(:[0-9a-fA-F]{1,4}){7}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

    .line 59
    const-string/jumbo v0, "^(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)::(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->IPV6_HEX_COMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static isIPv4Address(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isIPv4MappedIPv64Address(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->IPV4_MAPPED_IPV6_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isIPv6Address(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 120
    invoke-static {p0}, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->isIPv6StdAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->isIPv6HexCompressedAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIPv6HexCompressedAddress(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 104
    move v0, v1

    move v2, v1

    .line 105
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x7

    if-gt v2, v0, :cond_2

    sget-object v0, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->IPV6_HEX_COMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isIPv6StdAddress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
