.class public Lcom/google/gdata/util/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ANY:Lcom/google/gdata/util/ContentType;

.field public static final APPLICATION_XML:Lcom/google/gdata/util/ContentType;

.field public static final ATOM:Lcom/google/gdata/util/ContentType;

.field public static final ATOM_ENTRY:Lcom/google/gdata/util/ContentType;

.field public static final ATOM_FEED:Lcom/google/gdata/util/ContentType;

.field public static final ATOM_SERVICE:Lcom/google/gdata/util/ContentType;

.field public static final ATTR_CHARSET:Ljava/lang/String; = "charset"

.field private static ATTR_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "charset=UTF-8"

.field public static final GDATA_ERROR:Lcom/google/gdata/util/ContentType;

.field public static final JAVASCRIPT:Lcom/google/gdata/util/ContentType;

.field public static final JSON:Lcom/google/gdata/util/ContentType;

.field public static final MESSAGE_RFC822:Lcom/google/gdata/util/ContentType;

.field public static final MULTIPART_RELATED:Lcom/google/gdata/util/ContentType;

.field public static final OPENSEARCH:Lcom/google/gdata/util/ContentType;

.field public static final RSS:Lcom/google/gdata/util/ContentType;

.field private static final STAR:Ljava/lang/String; = "*"

.field public static final TEXT_HTML:Lcom/google/gdata/util/ContentType;

.field public static final TEXT_PLAIN:Lcom/google/gdata/util/ContentType;

.field public static final TEXT_XML:Lcom/google/gdata/util/ContentType;

.field private static TOKEN:Ljava/lang/String;

.field private static TOKEN_PATTERN:Ljava/util/regex/Pattern;

.field private static TYPE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inferredCharset:Z

.field private locked:Z

.field private subType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+"

    sput-object v0, Lcom/google/gdata/util/ContentType;->TOKEN:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->TOKEN_PATTERN:Ljava/util/regex/Pattern;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\s*(.*)\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\s*;\\s*("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\s*=\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"([^\"]*)\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->ATTR_PATTERN:Ljava/util/regex/Pattern;

    .line 85
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "application/atom+xml;charset=UTF-8"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    .line 94
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "application/atom+xml;type=entry;charset=UTF-8"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->ATOM_ENTRY:Lcom/google/gdata/util/ContentType;

    .line 104
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "application/atom+xml;type=feed;charset=UTF-8"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->ATOM_FEED:Lcom/google/gdata/util/ContentType;

    .line 131
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "application/atomsvc+xml;charset=UTF-8"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->ATOM_SERVICE:Lcom/google/gdata/util/ContentType;

    .line 137
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "application/rss+xml;charset=UTF-8"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->RSS:Lcom/google/gdata/util/ContentType;

    .line 143
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "application/json;charset=UTF-8"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->JSON:Lcom/google/gdata/util/ContentType;

    .line 149
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "text/javascript;charset=UTF-8"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->JAVASCRIPT:Lcom/google/gdata/util/ContentType;

    .line 155
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "text/xml;charset=UTF-8"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->TEXT_XML:Lcom/google/gdata/util/ContentType;

    .line 161
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "text/html;charset=UTF-8"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->TEXT_HTML:Lcom/google/gdata/util/ContentType;

    .line 167
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "text/plain;charset=UTF-8"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->TEXT_PLAIN:Lcom/google/gdata/util/ContentType;

    .line 173
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "application/vnd.google.gdata.error+xml"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->GDATA_ERROR:Lcom/google/gdata/util/ContentType;

    .line 179
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "application/opensearchdescription+xml"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->OPENSEARCH:Lcom/google/gdata/util/ContentType;

    .line 187
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "multipart/related"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->MULTIPART_RELATED:Lcom/google/gdata/util/ContentType;

    .line 194
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "application/xml"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->APPLICATION_XML:Lcom/google/gdata/util/ContentType;

    .line 201
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "message/rfc822"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->MESSAGE_RFC822:Lcom/google/gdata/util/ContentType;

    .line 207
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "*/*"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->lock()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/ContentType;->ANY:Lcom/google/gdata/util/ContentType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/util/ContentType;->inferredCharset:Z

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    .line 313
    if-nez p1, :cond_1

    .line 314
    const-string/jumbo v0, "application"

    iput-object v0, p0, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    .line 315
    const-string/jumbo v0, "octet-stream"

    iput-object v0, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    const-string/jumbo v1, "charset"

    const-string/jumbo v2, "iso-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    sget-object v0, Lcom/google/gdata/util/ContentType;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid media type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    .line 327
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    .line 328
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 333
    sget-object v1, Lcom/google/gdata/util/ContentType;->ATTR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 334
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    if-nez v0, :cond_3

    .line 338
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    if-nez v0, :cond_3

    .line 340
    const-string/jumbo v0, ""

    .line 344
    :cond_3
    iget-object v2, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    const-string/jumbo v1, "charset"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iput-boolean v4, p0, Lcom/google/gdata/util/ContentType;->inferredCharset:Z

    .line 350
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 351
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    const-string/jumbo v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    const-string/jumbo v1, "charset"

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    const-string/jumbo v1, "charset"

    const-string/jumbo v2, "us-ascii"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 360
    :cond_6
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    const-string/jumbo v1, "json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 361
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    const-string/jumbo v1, "charset"

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 363
    :cond_7
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    const-string/jumbo v1, "charset"

    const-string/jumbo v2, "iso-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private assertNotLocked()V
    .locals 2

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/google/gdata/util/ContentType;->locked:Z

    if-eqz v0, :cond_0

    .line 416
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unmodifiable instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    return-void
.end method

.method public static getAtomEntry()Lcom/google/gdata/util/ContentType;
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gdata/util/ContentType;->ATOM_ENTRY:Lcom/google/gdata/util/ContentType;

    goto :goto_0
.end method

.method public static getAtomFeed()Lcom/google/gdata/util/ContentType;
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gdata/util/ContentType;->ATOM_FEED:Lcom/google/gdata/util/ContentType;

    goto :goto_0
.end method

.method public static getBestContentType(Ljava/lang/String;Ljava/util/List;)Lcom/google/gdata/util/ContentType;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ContentType;",
            ">;)",
            "Lcom/google/gdata/util/ContentType;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 226
    if-nez p0, :cond_0

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/ContentType;

    .line 292
    :goto_0
    return-object v0

    .line 233
    :cond_0
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 234
    array-length v9, v8

    move v6, v0

    move-object v1, v5

    move v2, v7

    :goto_1
    if-ge v6, v9, :cond_7

    aget-object v0, v8, v6

    .line 239
    :try_start_0
    new-instance v10, Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    const-string/jumbo v0, "q"

    invoke-virtual {v10, v0}, Lcom/google/gdata/util/ContentType;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_2

    .line 250
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 251
    cmpg-float v0, v3, v7

    if-lez v0, :cond_1

    cmpl-float v0, v3, v4

    if-lez v0, :cond_3

    :cond_1
    move-object v0, v1

    move v1, v2

    .line 234
    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    move-object v0, v1

    move v1, v2

    .line 242
    goto :goto_2

    .line 256
    :catch_1
    move-exception v0

    move-object v0, v1

    move v1, v2

    .line 258
    goto :goto_2

    :cond_2
    move v3, v4

    .line 262
    :cond_3
    cmpg-float v0, v3, v2

    if-gez v0, :cond_4

    move-object v0, v1

    move v1, v2

    .line 263
    goto :goto_2

    .line 268
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/ContentType;

    .line 272
    cmpl-float v12, v3, v2

    if-nez v12, :cond_6

    if-ne v1, v0, :cond_6

    move-object v0, v1

    move v1, v2

    .line 273
    goto :goto_2

    .line 278
    :cond_6
    invoke-virtual {v0, v10}, Lcom/google/gdata/util/ContentType;->match(Lcom/google/gdata/util/ContentType;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v1, v3

    .line 281
    goto :goto_2

    .line 287
    :cond_7
    cmpl-float v0, v2, v7

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 288
    goto :goto_0

    :cond_8
    move-object v0, v5

    .line 292
    goto :goto_0

    :cond_9
    move-object v0, v1

    move v1, v2

    goto :goto_2
.end method

.method private isAtom()Z
    .locals 2

    .prologue
    .line 472
    const-string/jumbo v0, "application"

    iget-object v1, p0, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "atom+xml"

    iget-object v1, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchAtom(Lcom/google/gdata/util/ContentType;)Z
    .locals 2

    .prologue
    .line 482
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/ContentType;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lcom/google/gdata/util/ContentType;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 522
    if-ne p0, p1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v0

    .line 525
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 526
    goto :goto_0

    .line 528
    :cond_3
    check-cast p1, Lcom/google/gdata/util/ContentType;

    .line 529
    iget-object v2, p0, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/google/gdata/util/ContentType;->locked:Z

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    const-string/jumbo v1, "charset"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const-string/jumbo v0, ";type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public lock()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/util/ContentType;->locked:Z

    .line 411
    return-object p0
.end method

.method public match(Lcom/google/gdata/util/ContentType;)Z
    .locals 3

    .prologue
    .line 463
    invoke-virtual {p1}, Lcom/google/gdata/util/ContentType;->getType()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-virtual {p1}, Lcom/google/gdata/util/ContentType;->getSubType()Ljava/lang/String;

    move-result-object v1

    .line 465
    const-string/jumbo v2, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/google/gdata/util/ContentType;->isAtom()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/gdata/util/ContentType;->matchAtom(Lcom/google/gdata/util/ContentType;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/google/gdata/util/ContentType;->assertNotLocked()V

    .line 386
    iput-object p1, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/google/gdata/util/ContentType;->assertNotLocked()V

    .line 378
    iput-object p1, p0, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 495
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 496
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    iget-object v0, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 502
    iget-boolean v3, p0, Lcom/google/gdata/util/ContentType;->inferredCharset:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "charset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 505
    :cond_1
    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    iget-object v3, p0, Lcom/google/gdata/util/ContentType;->attributes:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 509
    sget-object v3, Lcom/google/gdata/util/ContentType;->TOKEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 510
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 511
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 513
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 516
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
