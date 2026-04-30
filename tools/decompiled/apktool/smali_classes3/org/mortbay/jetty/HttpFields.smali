.class public Lorg/mortbay/jetty/HttpFields;
.super Ljava/lang/Object;
.source "HttpFields.java"


# static fields
.field private static DAYS:[Ljava/lang/String; = null

.field private static MONTHS:[Ljava/lang/String; = null

.field public static final __01Jan1970:Ljava/lang/String;

.field public static final __01Jan1970_BUFFER:Lorg/mortbay/io/Buffer;

.field private static __GMT:Ljava/util/TimeZone; = null

.field public static final __dateCache:Lorg/mortbay/io/BufferDateCache;

.field private static __dateReceive:[Ljava/text/SimpleDateFormat; = null

.field private static final __dateReceiveFmt:[Ljava/lang/String;

.field private static __dateReceiveInit:I = 0x0

.field private static __one:Ljava/lang/Float; = null

.field private static __qualities:Lorg/mortbay/util/StringMap; = null

.field public static final __separators:Ljava/lang/String; = ", \t"

.field private static __zero:Ljava/lang/Float;


# instance fields
.field protected _bufferMap:Ljava/util/HashMap;

.field private _calendar:Ljava/util/Calendar;

.field private _dateBuffer:Ljava/lang/StringBuffer;

.field protected _dateReceive:[Ljava/text/SimpleDateFormat;

.field protected _fields:Ljava/util/ArrayList;

.field protected _revision:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 65
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Sat"

    aput-object v2, v1, v0

    const-string/jumbo v2, "Sun"

    aput-object v2, v1, v5

    const-string/jumbo v2, "Mon"

    aput-object v2, v1, v6

    const-string/jumbo v2, "Tue"

    aput-object v2, v1, v4

    const-string/jumbo v2, "Wed"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "Thu"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "Fri"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "Sat"

    aput-object v3, v1, v2

    sput-object v1, Lorg/mortbay/jetty/HttpFields;->DAYS:[Ljava/lang/String;

    .line 67
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Jan"

    aput-object v2, v1, v0

    const-string/jumbo v2, "Feb"

    aput-object v2, v1, v5

    const-string/jumbo v2, "Mar"

    aput-object v2, v1, v6

    const-string/jumbo v2, "Apr"

    aput-object v2, v1, v4

    const-string/jumbo v2, "May"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "Jun"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "Jul"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "Aug"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "Sep"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "Oct"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "Nov"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "Dec"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "Jan"

    aput-object v3, v1, v2

    sput-object v1, Lorg/mortbay/jetty/HttpFields;->MONTHS:[Ljava/lang/String;

    .line 163
    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/HttpFields;->__GMT:Ljava/util/TimeZone;

    .line 164
    new-instance v1, Lorg/mortbay/io/BufferDateCache;

    const-string/jumbo v2, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lorg/mortbay/io/BufferDateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lorg/mortbay/jetty/HttpFields;->__dateCache:Lorg/mortbay/io/BufferDateCache;

    .line 167
    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v1, v0

    const-string/jumbo v2, "EEE, dd-MMM-yy HH:mm:ss"

    aput-object v2, v1, v5

    const-string/jumbo v2, "EEE MMM dd HH:mm:ss yyyy"

    aput-object v2, v1, v6

    const-string/jumbo v2, "EEE, dd MMM yyyy HH:mm:ss"

    aput-object v2, v1, v4

    const-string/jumbo v2, "EEE dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "EEE dd MMM yyyy HH:mm:ss"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "EEE MMM dd yyyy HH:mm:ss zzz"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "EEE MMM dd yyyy HH:mm:ss"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "EEE MMM-dd-yyyy HH:mm:ss zzz"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "EEE MMM-dd-yyyy HH:mm:ss"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "dd MMM yyyy HH:mm:ss zzz"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "dd MMM yyyy HH:mm:ss"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "dd-MMM-yy HH:mm:ss zzz"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "dd-MMM-yy HH:mm:ss"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "MMM dd HH:mm:ss yyyy zzz"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "MMM dd HH:mm:ss yyyy"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "EEE MMM dd HH:mm:ss yyyy zzz"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "EEE, MMM dd HH:mm:ss yyyy zzz"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "EEE, MMM dd HH:mm:ss yyyy"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "EEE dd-MMM-yy HH:mm:ss zzz"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "EEE dd-MMM-yy HH:mm:ss"

    aput-object v3, v1, v2

    sput-object v1, Lorg/mortbay/jetty/HttpFields;->__dateReceiveFmt:[Ljava/lang/String;

    .line 180
    sput v4, Lorg/mortbay/jetty/HttpFields;->__dateReceiveInit:I

    .line 184
    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__GMT:Ljava/util/TimeZone;

    const-string/jumbo v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 185
    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__dateCache:Lorg/mortbay/io/BufferDateCache;

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Lorg/mortbay/io/BufferDateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 186
    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__dateReceiveFmt:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/text/SimpleDateFormat;

    sput-object v1, Lorg/mortbay/jetty/HttpFields;->__dateReceive:[Ljava/text/SimpleDateFormat;

    .line 188
    :goto_0
    sget v1, Lorg/mortbay/jetty/HttpFields;->__dateReceiveInit:I

    if-ge v0, v1, :cond_0

    .line 190
    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__dateReceive:[Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/mortbay/jetty/HttpFields;->__dateReceiveFmt:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v1, v0

    .line 191
    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v1, v1, v0

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v5}, Lorg/mortbay/jetty/HttpFields;->formatDate(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->__01Jan1970:Ljava/lang/String;

    .line 195
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__01Jan1970:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->__01Jan1970_BUFFER:Lorg/mortbay/io/Buffer;

    .line 1180
    new-instance v0, Ljava/lang/Float;

    const-string/jumbo v1, "1.0"

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->__one:Ljava/lang/Float;

    .line 1181
    new-instance v0, Ljava/lang/Float;

    const-string/jumbo v1, "0.0"

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->__zero:Ljava/lang/Float;

    .line 1182
    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    .line 1185
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const/4 v1, 0x0

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__one:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "1.0"

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__one:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "1"

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__one:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.9"

    new-instance v2, Ljava/lang/Float;

    const-string/jumbo v3, "0.9"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.8"

    new-instance v2, Ljava/lang/Float;

    const-string/jumbo v3, "0.8"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.7"

    new-instance v2, Ljava/lang/Float;

    const-string/jumbo v3, "0.7"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.66"

    new-instance v2, Ljava/lang/Float;

    const-string/jumbo v3, "0.66"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.6"

    new-instance v2, Ljava/lang/Float;

    const-string/jumbo v3, "0.6"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.5"

    new-instance v2, Ljava/lang/Float;

    const-string/jumbo v3, "0.5"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.4"

    new-instance v2, Ljava/lang/Float;

    const-string/jumbo v3, "0.4"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.33"

    new-instance v2, Ljava/lang/Float;

    const-string/jumbo v3, "0.33"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.3"

    new-instance v2, Ljava/lang/Float;

    const-string/jumbo v3, "0.3"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.2"

    new-instance v2, Ljava/lang/Float;

    const-string/jumbo v3, "0.2"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.1"

    new-instance v2, Ljava/lang/Float;

    const-string/jumbo v3, "0.1"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0"

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__zero:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    const-string/jumbo v1, "0.0"

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__zero:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    .line 201
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__dateReceive:[Ljava/text/SimpleDateFormat;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    .line 211
    return-void
.end method

.method private add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 644
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    instance-of v0, p1, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_5

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v2

    .line 648
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    .line 650
    if-eqz v0, :cond_1

    move-object v1, v0

    move-object v0, v7

    .line 652
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v3

    iget v4, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v3, v4, :cond_2

    .line 655
    invoke-static {v1}, Lorg/mortbay/jetty/HttpFields$Field;->access$400(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :cond_1
    move-object v1, v0

    move-object v0, v7

    .line 659
    :cond_2
    if-eqz v1, :cond_3

    .line 660
    iget v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    invoke-static {v1, p2, p3, p4, v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$500(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/io/Buffer;JI)V

    .line 677
    :goto_2
    return-void

    .line 664
    :cond_3
    new-instance v1, Lorg/mortbay/jetty/HttpFields$Field;

    iget v6, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/mortbay/jetty/HttpFields$Field;-><init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;JILorg/mortbay/jetty/HttpFields$1;)V

    .line 667
    if-eqz v0, :cond_4

    .line 669
    invoke-static {v1, v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$002(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    .line 670
    invoke-static {v0, v1}, Lorg/mortbay/jetty/HttpFields$Field;->access$402(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    .line 675
    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 673
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpFields$Field;->getNameBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, p1

    goto :goto_0
.end method

.method public static formatDate(JZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 78
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 79
    invoke-virtual {v1, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 80
    invoke-static {v0, v1, p2}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/lang/StringBuffer;JZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 104
    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 105
    invoke-static {p0, v0, p3}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V

    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    invoke-static {v0, p0, p1}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V
    .locals 13

    .prologue
    const/16 v12, 0x3a

    const/16 v11, 0x2d

    const/16 v10, 0x20

    .line 119
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 120
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 121
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 122
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 123
    div-int/lit8 v4, v3, 0x64

    .line 124
    rem-int/lit8 v3, v3, 0x64

    .line 126
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/32 v8, 0x15180

    rem-long/2addr v6, v8

    long-to-int v5, v6

    .line 127
    rem-int/lit8 v6, v5, 0x3c

    .line 128
    div-int/lit8 v5, v5, 0x3c

    .line 129
    rem-int/lit8 v7, v5, 0x3c

    .line 130
    div-int/lit8 v5, v5, 0x3c

    .line 132
    sget-object v8, Lorg/mortbay/jetty/HttpFields;->DAYS:[Ljava/lang/String;

    aget-object v0, v8, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    invoke-static {p0, v1}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    .line 137
    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->MONTHS:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 142
    invoke-static {p0, v4}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    .line 143
    invoke-static {p0, v3}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    .line 153
    :goto_0
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    invoke-static {p0, v5}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    .line 155
    invoke-virtual {p0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    invoke-static {p0, v7}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    .line 157
    invoke-virtual {p0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    invoke-static {p0, v6}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    .line 159
    const-string/jumbo v0, " GMT"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->MONTHS:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    invoke-static {p0, v4}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    .line 151
    invoke-static {p0, v3}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    goto :goto_0
.end method

.method private getField(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    return-object v0
.end method

.method private getField(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    return-object v0
.end method

.method public static getQuality(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3

    .prologue
    .line 1206
    if-nez p0, :cond_0

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__zero:Ljava/lang/Float;

    .line 1233
    :goto_0
    return-object v0

    .line 1208
    :cond_0
    const-string/jumbo v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1209
    add-int/lit8 v1, v0, 0x1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_2

    :cond_1
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__one:Ljava/lang/Float;

    goto :goto_0

    .line 1211
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x71

    if-ne v1, v2, :cond_3

    .line 1213
    add-int/lit8 v0, v0, 0x1

    .line 1214
    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, p0, v0, v2}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1215
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_0

    .line 1218
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1219
    invoke-static {p0, v0}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1220
    const-string/jumbo v1, "q"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1221
    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__qualities:Lorg/mortbay/util/StringMap;

    invoke-virtual {v1, v0}, Lorg/mortbay/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1222
    if-nez v1, :cond_4

    .line 1226
    :try_start_0
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    move-object v0, v1

    .line 1233
    goto :goto_0

    .line 1228
    :catch_0
    move-exception v0

    .line 1230
    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__one:Ljava/lang/Float;

    goto :goto_1
.end method

.method public static qualityList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 1245
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1287
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 1251
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1253
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1254
    invoke-static {v2}, Lorg/mortbay/jetty/HttpFields;->getQuality(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 1256
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    .line 1258
    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1259
    invoke-static {v0, v3}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 1263
    :cond_3
    invoke-static {v1, v8}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v1

    .line 1264
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    move-object v0, v1

    goto :goto_0

    .line 1266
    :cond_4
    invoke-static {v0, v8}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v4

    .line 1269
    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__zero:Ljava/lang/Float;

    .line 1270
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move-object v3, v2

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_6

    .line 1272
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1273
    invoke-virtual {v3, v0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v3

    if-lez v3, :cond_5

    .line 1275
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1276
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1277
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1278
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1279
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v4, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1280
    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__zero:Ljava/lang/Float;

    .line 1281
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move-object v3, v2

    .line 1282
    goto :goto_2

    :cond_5
    move-object v3, v0

    move v0, v2

    .line 1285
    goto :goto_2

    .line 1286
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->clear()V

    move-object v0, v1

    .line 1287
    goto/16 :goto_0
.end method

.method public static valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1156
    if-nez p0, :cond_0

    .line 1176
    :goto_0
    return-object v1

    .line 1158
    :cond_0
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1159
    if-gez v2, :cond_1

    move-object v1, p0

    goto :goto_0

    .line 1160
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1162
    :cond_2
    new-instance v3, Lorg/mortbay/util/QuotedStringTokenizer;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ";"

    const/4 v5, 0x1

    invoke-direct {v3, v0, v4, v6, v5}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1163
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1165
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1166
    new-instance v4, Lorg/mortbay/util/QuotedStringTokenizer;

    const-string/jumbo v5, "= "

    invoke-direct {v4, v0, v5}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1169
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1171
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1172
    :goto_2
    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1176
    :cond_4
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 612
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 613
    sget-object v1, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v1, p2}, Lorg/mortbay/jetty/HttpHeaderValues;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v1

    .line 614
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 615
    return-void
.end method

.method public add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 629
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 630
    return-void
.end method

.method public add(Lorg/mortbay/jetty/HttpFields;)V
    .locals 4

    .prologue
    .line 1127
    if-nez p1, :cond_1

    .line 1137
    :cond_0
    return-void

    .line 1129
    :cond_1
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpFields;->getFieldNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 1130
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1133
    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 1134
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1135
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addDateField(Ljava/lang/String;J)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 932
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateBuffer:Ljava/lang/StringBuffer;

    .line 935
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_calendar:Ljava/util/Calendar;

    .line 937
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 938
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 939
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields;->_calendar:Ljava/util/Calendar;

    invoke-static {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V

    .line 940
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 941
    new-instance v1, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields;->_dateBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-direct {p0, v0, v1, p2, p3}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 943
    return-void
.end method

.method public addLongField(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 871
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 872
    invoke-static {p2, p3}, Lorg/mortbay/io/BufferUtil;->toBuffer(J)Lorg/mortbay/io/Buffer;

    move-result-object v1

    .line 873
    invoke-direct {p0, v0, v1, p2, p3}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 874
    return-void
.end method

.method public addLongField(Lorg/mortbay/io/Buffer;J)V
    .locals 2

    .prologue
    .line 885
    invoke-static {p2, p3}, Lorg/mortbay/io/BufferUtil;->toBuffer(J)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 886
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 887
    return-void
.end method

.method public addSetCookie(Ljavax/servlet/http/Cookie;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 954
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 956
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getVersion()I

    move-result v2

    .line 959
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad cookie name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 964
    monitor-enter v3

    .line 966
    :try_start_0
    invoke-static {v3, v0}, Lorg/mortbay/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 967
    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 968
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 969
    invoke-static {v3, v1}, Lorg/mortbay/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 971
    :cond_2
    if-lez v2, :cond_3

    .line 973
    const-string/jumbo v0, ";Version="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 974
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 975
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 976
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 978
    const-string/jumbo v1, ";Comment="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 979
    invoke-static {v3, v0}, Lorg/mortbay/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 982
    :cond_3
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 983
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 985
    const-string/jumbo v1, ";Path="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 986
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 987
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 991
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 992
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 994
    const-string/jumbo v1, ";Domain="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 995
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/mortbay/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 998
    :cond_5
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getMaxAge()I

    move-result v0

    int-to-long v0, v0

    .line 999
    cmp-long v4, v0, v6

    if-ltz v4, :cond_c

    .line 1001
    if-nez v2, :cond_b

    .line 1003
    const-string/jumbo v2, ";Expires="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1004
    cmp-long v2, v0, v6

    if-nez v2, :cond_a

    .line 1005
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__01Jan1970:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1020
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1022
    const-string/jumbo v0, ";Secure"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1024
    :cond_7
    instance-of v0, p1, Lorg/mortbay/jetty/HttpOnlyCookie;

    if-eqz v0, :cond_8

    .line 1025
    const-string/jumbo v0, ";HttpOnly"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1028
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1029
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->EXPIRES_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->__01Jan1970_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 1031
    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->SET_COOKIE_BUFFER:Lorg/mortbay/io/Buffer;

    new-instance v2, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v2, v0}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 1032
    return-void

    .line 989
    :cond_9
    :try_start_1
    invoke-static {v3, v0}, Lorg/mortbay/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1007
    :cond_a
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    const/4 v2, 0x1

    invoke-static {v3, v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;JZ)Ljava/lang/String;

    goto :goto_1

    .line 1011
    :cond_b
    const-string/jumbo v2, ";Max-Age="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1012
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1015
    :cond_c
    if-lez v2, :cond_6

    .line 1017
    const-string/jumbo v0, ";Discard"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1083
    iget v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    .line 1084
    iget v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    const v1, 0xf4240

    if-le v0, v1, :cond_1

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    .line 1087
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 1089
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    .line 1090
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$600(Lorg/mortbay/jetty/HttpFields$Field;)V

    :cond_0
    move v0, v1

    .line 1091
    goto :goto_0

    .line 1093
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getField(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v0

    iget v1, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsKey(Lorg/mortbay/io/Buffer;)Z
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getField(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v0

    iget v1, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1101
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 1105
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    .line 1106
    if-eqz v0, :cond_0

    .line 1107
    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields$Field;->getNameBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$900(Lorg/mortbay/jetty/HttpFields$Field;)V

    :cond_0
    move v0, v1

    .line 1110
    goto :goto_0

    .line 1112
    :cond_1
    iput-object v4, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    .line 1113
    iput-object v4, p0, Lorg/mortbay/jetty/HttpFields;->_dateBuffer:Ljava/lang/StringBuffer;

    .line 1114
    iput-object v4, p0, Lorg/mortbay/jetty/HttpFields;->_calendar:Ljava/util/Calendar;

    .line 1115
    iput-object v4, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    .line 1116
    return-void
.end method

.method public get(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;
    .locals 3

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getField(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v1

    iget v2, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v1, v2, :cond_0

    .line 364
    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$300(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDateField(Ljava/lang/String;)J
    .locals 9

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 750
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getField(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v4

    .line 751
    if-eqz v4, :cond_0

    invoke-static {v4}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v3

    iget v5, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-eq v3, v5, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-wide v0

    .line 753
    :cond_1
    invoke-static {v4}, Lorg/mortbay/jetty/HttpFields$Field;->access$800(Lorg/mortbay/jetty/HttpFields$Field;)J

    move-result-wide v6

    cmp-long v3, v6, v0

    if-eqz v3, :cond_2

    invoke-static {v4}, Lorg/mortbay/jetty/HttpFields$Field;->access$800(Lorg/mortbay/jetty/HttpFields$Field;)J

    move-result-wide v0

    goto :goto_0

    .line 755
    :cond_2
    invoke-static {v4}, Lorg/mortbay/jetty/HttpFields$Field;->access$300(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 756
    if-eqz v3, :cond_0

    move v1, v2

    .line 760
    :goto_1
    sget v0, Lorg/mortbay/jetty/HttpFields;->__dateReceiveInit:I

    if-ge v1, v0, :cond_4

    .line 762
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    iget-object v5, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    aput-object v0, v5, v1

    .line 766
    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 767
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lorg/mortbay/jetty/HttpFields$Field;->access$802(Lorg/mortbay/jetty/HttpFields$Field;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 769
    :catch_0
    move-exception v0

    .line 760
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 773
    :cond_4
    const-string/jumbo v0, " GMT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 775
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 776
    :goto_2
    sget v0, Lorg/mortbay/jetty/HttpFields;->__dateReceiveInit:I

    if-ge v1, v0, :cond_5

    .line 780
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 781
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lorg/mortbay/jetty/HttpFields$Field;->access$802(Lorg/mortbay/jetty/HttpFields$Field;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 783
    :catch_1
    move-exception v0

    .line 776
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    move-object v1, v3

    .line 791
    sget-object v5, Lorg/mortbay/jetty/HttpFields;->__dateReceive:[Ljava/text/SimpleDateFormat;

    monitor-enter v5

    .line 793
    :try_start_2
    sget v0, Lorg/mortbay/jetty/HttpFields;->__dateReceiveInit:I

    move v3, v0

    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    array-length v0, v0

    if-ge v3, v0, :cond_8

    .line 795
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v3

    if-nez v0, :cond_7

    .line 797
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v3

    if-nez v0, :cond_6

    .line 799
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__dateReceive:[Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Lorg/mortbay/jetty/HttpFields;->__dateReceiveFmt:[Ljava/lang/String;

    aget-object v7, v7, v3

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v0, v3

    .line 800
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v3

    sget-object v6, Lorg/mortbay/jetty/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 802
    :cond_6
    iget-object v6, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    aput-object v0, v6, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 807
    :cond_7
    :try_start_3
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 808
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lorg/mortbay/jetty/HttpFields$Field;->access$802(Lorg/mortbay/jetty/HttpFields$Field;J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    :try_start_4
    monitor-exit v5

    goto/16 :goto_0

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 810
    :catch_2
    move-exception v0

    .line 793
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 814
    :cond_8
    :try_start_5
    const-string/jumbo v0, " GMT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 816
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 817
    :goto_4
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    array-length v0, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ge v2, v0, :cond_9

    .line 821
    :try_start_6
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 822
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lorg/mortbay/jetty/HttpFields$Field;->access$802(Lorg/mortbay/jetty/HttpFields$Field;J)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v0

    :try_start_7
    monitor-exit v5

    goto/16 :goto_0

    .line 824
    :catch_3
    move-exception v0

    .line 817
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 829
    :cond_9
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 832
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Cannot convert date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldNames()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    .line 221
    new-instance v1, Lorg/mortbay/jetty/HttpFields$1;

    invoke-direct {v1, p0, v0}, Lorg/mortbay/jetty/HttpFields$1;-><init>(Lorg/mortbay/jetty/HttpFields;I)V

    return-object v1
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    .line 261
    new-instance v1, Lorg/mortbay/jetty/HttpFields$2;

    invoke-direct {v1, p0, v0}, Lorg/mortbay/jetty/HttpFields$2;-><init>(Lorg/mortbay/jetty/HttpFields;I)V

    return-object v1
.end method

.method public getLongField(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getField(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    .line 721
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v1

    iget v2, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields$Field;->getLongValue()J

    move-result-wide v0

    .line 723
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getLongField(Lorg/mortbay/io/Buffer;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getField(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    .line 737
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v1

    iget v2, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields$Field;->getLongValue()J

    move-result-wide v0

    .line 738
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getStringField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getField(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v1

    iget v2, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStringField(Lorg/mortbay/io/Buffer;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getField(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v1

    iget v2, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v1, v2, :cond_0

    .line 350
    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$300(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValues(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getField(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v1

    .line 378
    if-nez v1, :cond_0

    .line 379
    const/4 v0, 0x0

    .line 382
    :goto_0
    return-object v0

    .line 380
    :cond_0
    iget v2, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    .line 382
    new-instance v0, Lorg/mortbay/jetty/HttpFields$3;

    invoke-direct {v0, p0, v1, v2}, Lorg/mortbay/jetty/HttpFields$3;-><init>(Lorg/mortbay/jetty/HttpFields;Lorg/mortbay/jetty/HttpFields$Field;I)V

    goto :goto_0
.end method

.method public getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 455
    if-nez v1, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 457
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/mortbay/jetty/HttpFields$5;

    invoke-direct {v0, p0, v1, p2}, Lorg/mortbay/jetty/HttpFields$5;-><init>(Lorg/mortbay/jetty/HttpFields;Ljava/util/Enumeration;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getValues(Lorg/mortbay/io/Buffer;)Ljava/util/Enumeration;
    .locals 3

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getField(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v1

    .line 415
    if-nez v1, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    .line 417
    :cond_0
    iget v2, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    .line 419
    new-instance v0, Lorg/mortbay/jetty/HttpFields$4;

    invoke-direct {v0, p0, v1, v2}, Lorg/mortbay/jetty/HttpFields$4;-><init>(Lorg/mortbay/jetty/HttpFields;Lorg/mortbay/jetty/HttpFields$Field;I)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 493
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v1

    .line 494
    const/4 v0, 0x0

    .line 495
    if-eqz p2, :cond_0

    .line 496
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/mortbay/jetty/HttpHeaderValues;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 497
    :cond_0
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 498
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 575
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 577
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->remove(Ljava/lang/String;)V

    .line 598
    :cond_1
    return-void

    .line 580
    :cond_2
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 582
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_4

    .line 584
    sget-object v2, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/mortbay/jetty/HttpHeaderValues;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 588
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 590
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 591
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 592
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 595
    if-eqz v2, :cond_3

    sget-object v3, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_1

    .line 586
    :cond_4
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    goto :goto_0
.end method

.method public put(Lorg/mortbay/io/Buffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1037
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1039
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    .line 1040
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v2

    iget v3, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    .line 1037
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1042
    :cond_1
    invoke-static {p1}, Lorg/mortbay/io/BufferUtil;->putCRLF(Lorg/mortbay/io/Buffer;)V

    .line 1043
    return-void
.end method

.method public put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 509
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/mortbay/jetty/HttpHeaderValues;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 510
    const-wide/16 v2, -0x1

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 511
    return-void
.end method

.method public put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V
    .locals 2

    .prologue
    .line 522
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 523
    return-void
.end method

.method public put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V
    .locals 9

    .prologue
    .line 535
    if-nez p2, :cond_1

    .line 537
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    instance-of v0, p1, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_3

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v2

    .line 543
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    .line 546
    if-eqz v0, :cond_2

    .line 548
    iget v1, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    invoke-static {v0, p2, p3, p4, v1}, Lorg/mortbay/jetty/HttpFields$Field;->access$500(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/io/Buffer;JI)V

    .line 549
    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$400(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    .line 550
    :goto_2
    if-eqz v0, :cond_0

    .line 552
    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$600(Lorg/mortbay/jetty/HttpFields$Field;)V

    .line 553
    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$400(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    goto :goto_2

    .line 560
    :cond_2
    new-instance v1, Lorg/mortbay/jetty/HttpFields$Field;

    iget v6, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    const/4 v7, 0x0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/mortbay/jetty/HttpFields$Field;-><init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;JILorg/mortbay/jetty/HttpFields$1;)V

    .line 561
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpFields$Field;->getNameBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object v2, p1

    goto :goto_1
.end method

.method public putDateField(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 919
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 920
    invoke-virtual {p0, v0, p2, p3}, Lorg/mortbay/jetty/HttpFields;->putDateField(Lorg/mortbay/io/Buffer;J)V

    .line 921
    return-void
.end method

.method public putDateField(Lorg/mortbay/io/Buffer;J)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 898
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateBuffer:Ljava/lang/StringBuffer;

    .line 901
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_calendar:Ljava/util/Calendar;

    .line 903
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 904
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 905
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields;->_calendar:Ljava/util/Calendar;

    invoke-static {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V

    .line 906
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields;->_dateBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 908
    return-void
.end method

.method public putLongField(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 857
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 858
    invoke-static {p2, p3}, Lorg/mortbay/io/BufferUtil;->toBuffer(J)Lorg/mortbay/io/Buffer;

    move-result-object v1

    .line 859
    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 860
    return-void
.end method

.method public putLongField(Lorg/mortbay/io/Buffer;J)V
    .locals 2

    .prologue
    .line 844
    invoke-static {p2, p3}, Lorg/mortbay/io/BufferUtil;->toBuffer(J)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 845
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 846
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 687
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    .line 688
    return-void
.end method

.method public remove(Lorg/mortbay/io/Buffer;)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    .line 700
    if-eqz v0, :cond_0

    .line 702
    :goto_0
    if-eqz v0, :cond_0

    .line 704
    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$600(Lorg/mortbay/jetty/HttpFields$Field;)V

    .line 705
    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$400(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    goto :goto_0

    .line 708
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1050
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1052
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1054
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    .line 1055
    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v3

    iget v4, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v3, v4, :cond_2

    .line 1057
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields$Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1058
    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1059
    :cond_0
    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1060
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1061
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1062
    :cond_1
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1052
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1065
    :cond_3
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1066
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1074
    :goto_1
    return-object v0

    .line 1069
    :catch_0
    move-exception v0

    .line 1071
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1074
    const/4 v0, 0x0

    goto :goto_1
.end method
