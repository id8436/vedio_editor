.class public Lcom/facebook/GraphRequest;
.super Ljava/lang/Object;
.source "GraphRequest.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/regex/Pattern;

.field private static volatile q:Ljava/lang/String;


# instance fields
.field private d:Lcom/facebook/AccessToken;

.field private e:Lcom/facebook/at;

.field private f:Ljava/lang/String;

.field private g:Lorg/json/JSONObject;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Landroid/os/Bundle;

.field private l:Lcom/facebook/ai;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/String;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->a:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "^/?v\\d+\\.\\d+/(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 153
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/at;Lcom/facebook/ai;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/at;Lcom/facebook/ai;)V
    .locals 7

    .prologue
    .line 217
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/at;Lcom/facebook/ai;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/at;Lcom/facebook/ai;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->j:Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->p:Z

    .line 246
    iput-object p1, p0, Lcom/facebook/GraphRequest;->d:Lcom/facebook/AccessToken;

    .line 247
    iput-object p2, p0, Lcom/facebook/GraphRequest;->f:Ljava/lang/String;

    .line 248
    iput-object p6, p0, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    .line 250
    invoke-virtual {p0, p5}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/ai;)V

    .line 251
    invoke-virtual {p0, p4}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/at;)V

    .line 253
    if-eqz p3, :cond_1

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 260
    invoke-static {}, Lcom/facebook/i/ar;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    .line 262
    :cond_0
    return-void

    .line 256
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static a(Lcom/facebook/AccessToken;Lcom/facebook/aj;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 300
    new-instance v5, Lcom/facebook/ad;

    invoke-direct {v5, p1}, Lcom/facebook/ad;-><init>(Lcom/facebook/aj;)V

    .line 308
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string/jumbo v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/at;Lcom/facebook/ai;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/ai;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 374
    new-instance v0, Lcom/facebook/GraphRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/at;Lcom/facebook/ai;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/ai;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 327
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/at;->b:Lcom/facebook/at;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/at;Lcom/facebook/ai;)V

    .line 333
    invoke-virtual {v0, p2}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;)V

    .line 334
    return-object v0
.end method

.method public static a(Lcom/facebook/GraphRequest;)Lcom/facebook/as;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1083
    new-array v0, v3, [Lcom/facebook/GraphRequest;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/facebook/GraphRequest;->a([Lcom/facebook/GraphRequest;)Ljava/util/List;

    move-result-object v0

    .line 1085
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1086
    :cond_0
    new-instance v0, Lcom/facebook/q;

    const-string/jumbo v1, "invalid state: expected a single response"

    invoke-direct {v0, v1}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/as;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1434
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1436
    iget-object v0, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1437
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1438
    iget-object v1, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1440
    if-nez v1, :cond_1

    .line 1441
    const-string/jumbo v1, ""

    .line 1444
    :cond_1
    invoke-static {v1}, Lcom/facebook/GraphRequest;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1445
    invoke-static {v1}, Lcom/facebook/GraphRequest;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1457
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1447
    :cond_2
    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/at;

    sget-object v4, Lcom/facebook/at;->a:Lcom/facebook/at;

    if-ne v0, v4, :cond_0

    .line 1448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "Unsupported parameter type for GET request: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1452
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 1449
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1460
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/ap;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1039
    invoke-static {p0}, Lcom/facebook/GraphRequest;->d(Lcom/facebook/ap;)V

    .line 1043
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1045
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ap;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 1048
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/facebook/GraphRequest;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1062
    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/ap;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1069
    return-object v0

    .line 1052
    :cond_0
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/i/ar;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    new-instance v1, Lcom/facebook/q;

    const-string/jumbo v2, "could not construct URL for request"

    invoke-direct {v1, v2, v0}, Lcom/facebook/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1063
    :catch_1
    move-exception v0

    .line 1064
    new-instance v1, Lcom/facebook/q;

    const-string/jumbo v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/facebook/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1065
    :catch_2
    move-exception v0

    .line 1066
    new-instance v1, Lcom/facebook/q;

    const-string/jumbo v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/facebook/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1395
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1397
    const-string/jumbo v1, "User-Agent"

    invoke-static {}, Lcom/facebook/GraphRequest;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string/jumbo v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1401
    return-object v0
.end method

.method public static a(Ljava/net/HttpURLConnection;Lcom/facebook/ap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/ap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/as;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1255
    invoke-static {p0, p1}, Lcom/facebook/as;->a(Ljava/net/HttpURLConnection;Lcom/facebook/ap;)Ljava/util/List;

    move-result-object v0

    .line 1257
    invoke-static {p0}, Lcom/facebook/i/as;->a(Ljava/net/URLConnection;)V

    .line 1259
    invoke-virtual {p1}, Lcom/facebook/ap;->size()I

    move-result v1

    .line 1260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1261
    new-instance v2, Lcom/facebook/q;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "Received %d responses while expecting %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    .line 1265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1262
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1268
    :cond_0
    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/ap;Ljava/util/List;)V

    .line 1271
    invoke-static {}, Lcom/facebook/d;->a()Lcom/facebook/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/d;->d()V

    .line 1273
    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/as;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    new-instance v0, Lcom/facebook/ap;

    invoke-direct {v0, p0}, Lcom/facebook/ap;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->b(Lcom/facebook/ap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Lcom/facebook/GraphRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/GraphRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/as;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1106
    const-string/jumbo v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/i/az;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/os/Bundle;Lcom/facebook/an;Lcom/facebook/GraphRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1946
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1948
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1949
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1950
    invoke-static {v2}, Lcom/facebook/GraphRequest;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1951
    invoke-virtual {p1, v0, v2, p2}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    .line 1954
    :cond_1
    return-void
.end method

.method private static a(Lcom/facebook/an;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/an;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ah;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1975
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1976
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1977
    invoke-direct {v0, v1, p2}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    .line 1980
    :cond_0
    const-string/jumbo v0, "batch"

    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/an;->a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 1981
    return-void
.end method

.method private static a(Lcom/facebook/ap;Lcom/facebook/i/ag;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1727
    new-instance v1, Lcom/facebook/an;

    invoke-direct {v1, p4, p1, p5}, Lcom/facebook/an;-><init>(Ljava/io/OutputStream;Lcom/facebook/i/ag;Z)V

    .line 1729
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 1730
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ap;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 1732
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1733
    iget-object v0, v2, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1734
    iget-object v5, v2, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1735
    invoke-static {v5}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1736
    new-instance v6, Lcom/facebook/ah;

    invoke-direct {v6, v2, v5}, Lcom/facebook/ah;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1740
    :cond_1
    if-eqz p1, :cond_2

    .line 1741
    const-string/jumbo v0, "  Parameters:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/i/ag;->c(Ljava/lang/String;)V

    .line 1743
    :cond_2
    iget-object v0, v2, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;Lcom/facebook/an;Lcom/facebook/GraphRequest;)V

    .line 1745
    if-eqz p1, :cond_3

    .line 1746
    const-string/jumbo v0, "  Attachments:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/i/ag;->c(Ljava/lang/String;)V

    .line 1748
    :cond_3
    invoke-static {v3, v1}, Lcom/facebook/GraphRequest;->a(Ljava/util/Map;Lcom/facebook/an;)V

    .line 1750
    iget-object v0, v2, Lcom/facebook/GraphRequest;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 1751
    iget-object v0, v2, Lcom/facebook/GraphRequest;->g:Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/ak;)V

    .line 1772
    :cond_4
    :goto_1
    return-void

    .line 1754
    :cond_5
    invoke-static {p0}, Lcom/facebook/GraphRequest;->g(Lcom/facebook/ap;)Ljava/lang/String;

    move-result-object v0

    .line 1755
    invoke-static {v0}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1756
    new-instance v0, Lcom/facebook/q;

    const-string/jumbo v1, "App ID was not specified at the request or Settings."

    invoke-direct {v0, v1}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1760
    :cond_6
    const-string/jumbo v2, "batch_app_id"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1765
    invoke-static {v1, p0, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/an;Ljava/util/Collection;Ljava/util/Map;)V

    .line 1767
    if-eqz p1, :cond_7

    .line 1768
    const-string/jumbo v2, "  Attachments:\n"

    invoke-virtual {p1, v2}, Lcom/facebook/i/ag;->c(Ljava/lang/String;)V

    .line 1770
    :cond_7
    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->a(Ljava/util/Map;Lcom/facebook/an;)V

    goto :goto_1
.end method

.method static final a(Lcom/facebook/ap;Ljava/net/HttpURLConnection;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 1665
    new-instance v12, Lcom/facebook/i/ag;

    sget-object v0, Lcom/facebook/av;->a:Lcom/facebook/av;

    const-string/jumbo v2, "Request"

    invoke-direct {v12, v0, v2}, Lcom/facebook/i/ag;-><init>(Lcom/facebook/av;Ljava/lang/String;)V

    .line 1667
    invoke-virtual {p0}, Lcom/facebook/ap;->size()I

    move-result v2

    .line 1668
    invoke-static {p0}, Lcom/facebook/GraphRequest;->f(Lcom/facebook/ap;)Z

    move-result v5

    .line 1670
    if-ne v2, v1, :cond_0

    .line 1671
    invoke-virtual {p0, v6}, Lcom/facebook/ap;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/at;

    .line 1672
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/at;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1673
    invoke-static {p1, v5}, Lcom/facebook/GraphRequest;->a(Ljava/net/HttpURLConnection;Z)V

    .line 1675
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 1676
    const-string/jumbo v7, "Request:\n"

    invoke-virtual {v12, v7}, Lcom/facebook/i/ag;->c(Ljava/lang/String;)V

    .line 1677
    const-string/jumbo v7, "Id"

    invoke-virtual {p0}, Lcom/facebook/ap;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/i/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1678
    const-string/jumbo v7, "URL"

    invoke-virtual {v12, v7, v3}, Lcom/facebook/i/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1679
    const-string/jumbo v7, "Method"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/i/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1680
    const-string/jumbo v7, "User-Agent"

    const-string/jumbo v8, "User-Agent"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/i/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1681
    const-string/jumbo v7, "Content-Type"

    const-string/jumbo v8, "Content-Type"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/i/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1683
    invoke-virtual {p0}, Lcom/facebook/ap;->a()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1684
    invoke-virtual {p0}, Lcom/facebook/ap;->a()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1688
    sget-object v7, Lcom/facebook/at;->b:Lcom/facebook/at;

    if-ne v0, v7, :cond_1

    move v0, v1

    .line 1689
    :goto_1
    if-nez v0, :cond_2

    .line 1690
    invoke-virtual {v12}, Lcom/facebook/i/ag;->a()V

    .line 1722
    :goto_2
    return-void

    .line 1671
    :cond_0
    sget-object v0, Lcom/facebook/at;->b:Lcom/facebook/at;

    goto :goto_0

    :cond_1
    move v0, v6

    .line 1688
    goto :goto_1

    .line 1694
    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1698
    :try_start_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1699
    if-eqz v5, :cond_3

    .line 1700
    :try_start_1
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v0

    .line 1703
    :cond_3
    invoke-static {p0}, Lcom/facebook/GraphRequest;->e(Lcom/facebook/ap;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1705
    new-instance v4, Lcom/facebook/ba;

    invoke-virtual {p0}, Lcom/facebook/ap;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/facebook/ba;-><init>(Landroid/os/Handler;)V

    .line 1706
    const/4 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/ap;Lcom/facebook/i/ag;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 1708
    invoke-virtual {v4}, Lcom/facebook/ba;->a()I

    move-result v0

    .line 1709
    invoke-virtual {v4}, Lcom/facebook/ba;->b()Ljava/util/Map;

    move-result-object v9

    .line 1711
    new-instance v6, Lcom/facebook/bb;

    int-to-long v10, v0

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/bb;-><init>(Ljava/io/OutputStream;Lcom/facebook/ap;Ljava/util/Map;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v6

    :goto_3
    move-object v0, p0

    move-object v1, v12

    .line 1714
    :try_start_2
    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/ap;Lcom/facebook/i/ag;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1716
    if-eqz v4, :cond_4

    .line 1717
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1721
    :cond_4
    invoke-virtual {v12}, Lcom/facebook/i/ag;->a()V

    goto :goto_2

    .line 1716
    :catchall_0
    move-exception v0

    move-object v7, v4

    :goto_4
    if-eqz v7, :cond_5

    .line 1717
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v0

    .line 1716
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v4

    goto :goto_4

    :cond_6
    move-object v4, v7

    goto :goto_3
.end method

.method static a(Lcom/facebook/ap;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ap;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/as;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1351
    invoke-virtual {p0}, Lcom/facebook/ap;->size()I

    move-result v1

    .line 1355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1357
    invoke-virtual {p0, v0}, Lcom/facebook/ap;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 1358
    iget-object v4, v3, Lcom/facebook/GraphRequest;->l:Lcom/facebook/ai;

    if-eqz v4, :cond_0

    .line 1359
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/facebook/GraphRequest;->l:Lcom/facebook/ai;

    .line 1360
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1359
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1364
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1365
    new-instance v0, Lcom/facebook/af;

    invoke-direct {v0, v2, p0}, Lcom/facebook/af;-><init>(Ljava/util/ArrayList;Lcom/facebook/ap;)V

    .line 1378
    invoke-virtual {p0}, Lcom/facebook/ap;->c()Landroid/os/Handler;

    move-result-object v1

    .line 1379
    if-nez v1, :cond_3

    .line 1381
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1387
    :cond_2
    :goto_1
    return-void

    .line 1384
    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/ak;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1879
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1881
    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1882
    check-cast p1, Lorg/json/JSONObject;

    .line 1883
    if-eqz p3, :cond_0

    .line 1886
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1887
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1888
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1889
    const-string/jumbo v3, "%s[%s]"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1892
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1890
    invoke-static {v3, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/ak;Z)V

    goto :goto_0

    .line 1899
    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1900
    const-string/jumbo v0, "id"

    .line 1902
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1900
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/ak;Z)V

    .line 1939
    :cond_1
    :goto_1
    return-void

    .line 1905
    :cond_2
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1906
    const-string/jumbo v0, "url"

    .line 1908
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1906
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/ak;Z)V

    goto :goto_1

    .line 1911
    :cond_3
    const-string/jumbo v0, "fbsdk:create_object"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1912
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/ak;Z)V

    goto :goto_1

    .line 1915
    :cond_4
    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1916
    check-cast p1, Lorg/json/JSONArray;

    .line 1917
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v0, v1

    .line 1918
    :goto_2
    if-ge v0, v2, :cond_1

    .line 1919
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v4, "%s[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1920
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/ak;Z)V

    .line 1918
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1922
    :cond_5
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Ljava/lang/Number;

    .line 1923
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Ljava/lang/Boolean;

    .line 1924
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1925
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1926
    :cond_7
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1927
    check-cast p1, Ljava/util/Date;

    .line 1934
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1937
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static a(Ljava/net/HttpURLConnection;Z)V
    .locals 2

    .prologue
    .line 1603
    if-eqz p1, :cond_0

    .line 1604
    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const-string/jumbo v0, "Content-Encoding"

    const-string/jumbo v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    :goto_0
    return-void

    .line 1607
    :cond_0
    const-string/jumbo v0, "Content-Type"

    invoke-static {}, Lcom/facebook/GraphRequest;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Lcom/facebook/an;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ah;",
            ">;",
            "Lcom/facebook/an;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1960
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1962
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1963
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ah;

    .line 1964
    invoke-virtual {v1}, Lcom/facebook/ah;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1965
    invoke-virtual {v1}, Lcom/facebook/ah;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/ah;->a()Lcom/facebook/GraphRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    .line 1968
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ah;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1522
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1524
    iget-object v0, p0, Lcom/facebook/GraphRequest;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1525
    const-string/jumbo v0, "name"

    iget-object v2, p0, Lcom/facebook/GraphRequest;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1526
    const-string/jumbo v0, "omit_response_on_success"

    iget-boolean v2, p0, Lcom/facebook/GraphRequest;->j:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1531
    const-string/jumbo v0, "depends_on"

    iget-object v2, p0, Lcom/facebook/GraphRequest;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1534
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->k()Ljava/lang/String;

    move-result-object v2

    .line 1535
    const-string/jumbo v0, "relative_url"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1536
    const-string/jumbo v0, "method"

    iget-object v3, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/at;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1537
    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_2

    .line 1538
    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->b()Ljava/lang/String;

    move-result-object v0

    .line 1539
    invoke-static {v0}, Lcom/facebook/i/ag;->a(Ljava/lang/String;)V

    .line 1543
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    iget-object v0, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1545
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1546
    iget-object v5, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1547
    invoke-static {v0}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1549
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v6, "%s%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "file"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1553
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1549
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1554
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    new-instance v6, Lcom/facebook/ah;

    invoke-direct {v6, p0, v0}, Lcom/facebook/ah;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1559
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1560
    const-string/jumbo v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    const-string/jumbo v3, "attached_files"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1564
    :cond_5
    iget-object v0, p0, Lcom/facebook/GraphRequest;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    .line 1566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    iget-object v3, p0, Lcom/facebook/GraphRequest;->g:Lorg/json/JSONObject;

    new-instance v4, Lcom/facebook/ag;

    invoke-direct {v4, p0, v0}, Lcom/facebook/ag;-><init>(Lcom/facebook/GraphRequest;Ljava/util/ArrayList;)V

    invoke-static {v3, v2, v4}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/ak;)V

    .line 1577
    const-string/jumbo v2, "&"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1578
    const-string/jumbo v2, "body"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1581
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1582
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/ak;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1797
    .line 1798
    invoke-static {p1}, Lcom/facebook/GraphRequest;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1799
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1800
    const-string/jumbo v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1801
    const/4 v4, 0x3

    if-le v0, v4, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    move v3, v0

    .line 1805
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1806
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1807
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1808
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1809
    if-eqz v3, :cond_2

    const-string/jumbo v4, "image"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    .line 1810
    :goto_3
    invoke-static {v0, v6, p2, v4}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/ak;Z)V

    goto :goto_2

    :cond_1
    move v0, v2

    .line 1801
    goto :goto_0

    :cond_2
    move v4, v2

    .line 1809
    goto :goto_3

    .line 1812
    :cond_3
    return-void

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method public static b(Ljava/util/Collection;)Lcom/facebook/ao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Lcom/facebook/ao;"
        }
    .end annotation

    .prologue
    .line 1193
    new-instance v0, Lcom/facebook/ap;

    invoke-direct {v0, p0}, Lcom/facebook/ap;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->c(Lcom/facebook/ap;)Lcom/facebook/ao;

    move-result-object v0

    return-object v0
.end method

.method public static varargs b([Lcom/facebook/GraphRequest;)Lcom/facebook/ao;
    .locals 1

    .prologue
    .line 1174
    const-string/jumbo v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/i/az;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->b(Ljava/util/Collection;)Lcom/facebook/ao;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/facebook/ap;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/as;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1143
    const-string/jumbo v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/i/az;->c(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1147
    :try_start_0
    invoke-static {p0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/ap;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1157
    invoke-static {v0, p0}, Lcom/facebook/GraphRequest;->a(Ljava/net/HttpURLConnection;Lcom/facebook/ap;)Ljava/util/List;

    move-result-object v0

    .line 1158
    :goto_0
    return-object v0

    .line 1148
    :catch_0
    move-exception v0

    .line 1150
    invoke-virtual {p0}, Lcom/facebook/ap;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/q;

    invoke-direct {v3, v0}, Lcom/facebook/q;-><init>(Ljava/lang/Throwable;)V

    .line 1149
    invoke-static {v1, v2, v3}, Lcom/facebook/as;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/q;)Ljava/util/List;

    move-result-object v0

    .line 1153
    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/ap;Ljava/util/List;)V

    goto :goto_0
.end method

.method static final b(Lcom/facebook/GraphRequest;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1624
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->d()Ljava/lang/String;

    move-result-object v0

    .line 1625
    invoke-static {v0}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1637
    :goto_0
    return v2

    .line 1629
    :cond_0
    const-string/jumbo v3, "v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1630
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1632
    :cond_1
    const-string/jumbo v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1634
    array-length v3, v0

    if-lt v3, v4, :cond_2

    aget-object v3, v0, v1

    .line 1635
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v4, :cond_3

    :cond_2
    aget-object v3, v0, v1

    .line 1636
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v4, :cond_4

    aget-object v0, v0, v2

    .line 1637
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_4

    :cond_3
    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/facebook/GraphRequest;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1775
    sget-object v1, Lcom/facebook/GraphRequest;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1776
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1778
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1780
    :cond_0
    const-string/jumbo v1, "me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "/me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1783
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/facebook/ap;)Lcom/facebook/ao;
    .locals 3

    .prologue
    .line 1211
    const-string/jumbo v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/i/az;->c(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1213
    new-instance v0, Lcom/facebook/ao;

    invoke-direct {v0, p0}, Lcom/facebook/ao;-><init>(Lcom/facebook/ap;)V

    .line 1214
    invoke-static {}, Lcom/facebook/w;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ao;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1215
    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/facebook/GraphRequest;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final d(Lcom/facebook/ap;)V
    .locals 8

    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/facebook/ap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1643
    sget-object v2, Lcom/facebook/at;->a:Lcom/facebook/at;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->c()Lcom/facebook/at;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/at;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1644
    invoke-static {v0}, Lcom/facebook/GraphRequest;->b(Lcom/facebook/GraphRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1645
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->e()Landroid/os/Bundle;

    move-result-object v2

    .line 1646
    const-string/jumbo v3, "fields"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "fields"

    .line 1647
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1648
    :cond_1
    sget-object v2, Lcom/facebook/av;->f:Lcom/facebook/av;

    const/4 v3, 0x5

    const-string/jumbo v4, "Request"

    const-string/jumbo v5, "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1654
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 1648
    invoke-static {v2, v3, v4, v5, v6}, Lcom/facebook/i/ag;->a(Lcom/facebook/av;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1659
    :cond_2
    return-void
.end method

.method private static d(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2028
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Lcom/facebook/ap;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1585
    invoke-virtual {p0}, Lcom/facebook/ap;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/aq;

    .line 1586
    instance-of v0, v0, Lcom/facebook/ar;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1597
    :goto_0
    return v0

    .line 1591
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1592
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->g()Lcom/facebook/ai;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/al;

    if-eqz v0, :cond_2

    move v0, v1

    .line 1593
    goto :goto_0

    .line 1597
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2036
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2041
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2042
    check-cast p0, Ljava/lang/String;

    .line 2048
    :goto_0
    return-object p0

    .line 2043
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 2044
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2045
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 2046
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2048
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2050
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f(Lcom/facebook/ap;)Z
    .locals 5

    .prologue
    .line 1612
    invoke-virtual {p0}, Lcom/facebook/ap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1613
    iget-object v1, v0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1614
    iget-object v4, v0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1615
    invoke-static {v1}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1616
    const/4 v0, 0x0

    .line 1620
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static g(Lcom/facebook/ap;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/facebook/ap;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2009
    invoke-virtual {p0}, Lcom/facebook/ap;->f()Ljava/lang/String;

    move-result-object v0

    .line 2024
    :goto_0
    return-object v0

    .line 2012
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 2013
    iget-object v0, v0, Lcom/facebook/GraphRequest;->d:Lcom/facebook/AccessToken;

    .line 2014
    if-eqz v0, :cond_1

    .line 2015
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    move-result-object v0

    .line 2016
    if-eqz v0, :cond_1

    goto :goto_0

    .line 2021
    :cond_2
    sget-object v0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2022
    sget-object v0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    goto :goto_0

    .line 2024
    :cond_3
    invoke-static {}, Lcom/facebook/w;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_2

    .line 1407
    iget-object v0, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    const-string/jumbo v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->b()Ljava/lang/String;

    move-result-object v0

    .line 1409
    invoke-static {v0}, Lcom/facebook/i/ag;->a(Ljava/lang/String;)V

    .line 1410
    iget-object v1, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    const-string/jumbo v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    const-string/jumbo v1, "sdk"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    const-string/jumbo v1, "format"

    const-string/jumbo v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    sget-object v0, Lcom/facebook/av;->h:Lcom/facebook/av;

    invoke-static {v0}, Lcom/facebook/w;->a(Lcom/facebook/av;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1427
    iget-object v0, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    const-string/jumbo v1, "debug"

    const-string/jumbo v2, "info"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    :cond_1
    :goto_1
    return-void

    .line 1412
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    const-string/jumbo v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1413
    invoke-static {}, Lcom/facebook/w;->i()Ljava/lang/String;

    move-result-object v0

    .line 1414
    invoke-static {}, Lcom/facebook/w;->j()Ljava/lang/String;

    move-result-object v1

    .line 1415
    invoke-static {v0}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1417
    iget-object v1, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    const-string/jumbo v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1419
    :cond_3
    sget-object v0, Lcom/facebook/GraphRequest;->a:Ljava/lang/String;

    const-string/jumbo v1, "Warning: Request without access token missing application ID or client token."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1428
    :cond_4
    sget-object v0, Lcom/facebook/av;->g:Lcom/facebook/av;

    invoke-static {v0}, Lcom/facebook/w;->a(Lcom/facebook/av;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1429
    iget-object v0, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    const-string/jumbo v1, "debug"

    const-string/jumbo v2, "warning"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private n()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1493
    sget-object v0, Lcom/facebook/GraphRequest;->c:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1494
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/facebook/GraphRequest;->f:Ljava/lang/String;

    .line 1497
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/GraphRequest;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1984
    const-string/jumbo v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static p()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1990
    sget-object v0, Lcom/facebook/GraphRequest;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1991
    const-string/jumbo v0, "%s.%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "FBAndroidSDK"

    aput-object v2, v1, v5

    const-string/jumbo v2, "4.6.0"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->q:Ljava/lang/String;

    .line 1994
    invoke-static {}, Lcom/facebook/i/ad;->a()Ljava/lang/String;

    move-result-object v0

    .line 1995
    invoke-static {v0}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1996
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "%s/%s"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/facebook/GraphRequest;->q:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->q:Ljava/lang/String;

    .line 2004
    :cond_0
    sget-object v0, Lcom/facebook/GraphRequest;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/facebook/GraphRequest;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    .line 767
    return-void
.end method

.method public final a(Lcom/facebook/ai;)V
    .locals 1

    .prologue
    .line 898
    sget-object v0, Lcom/facebook/av;->h:Lcom/facebook/av;

    invoke-static {v0}, Lcom/facebook/w;->a(Lcom/facebook/av;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/av;->g:Lcom/facebook/av;

    .line 899
    invoke-static {v0}, Lcom/facebook/w;->a(Lcom/facebook/av;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    :cond_0
    new-instance v0, Lcom/facebook/ae;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ae;-><init>(Lcom/facebook/GraphRequest;Lcom/facebook/ai;)V

    .line 937
    iput-object v0, p0, Lcom/facebook/GraphRequest;->l:Lcom/facebook/ai;

    .line 942
    :goto_0
    return-void

    .line 939
    :cond_1
    iput-object p1, p0, Lcom/facebook/GraphRequest;->l:Lcom/facebook/ai;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/at;)V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/at;->a:Lcom/facebook/at;

    if-eq p1, v0, :cond_0

    .line 719
    new-instance v0, Lcom/facebook/q;

    const-string/jumbo v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/at;

    .line 722
    return-void

    .line 721
    :cond_1
    sget-object p1, Lcom/facebook/at;->a:Lcom/facebook/at;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 952
    iput-object p1, p0, Lcom/facebook/GraphRequest;->n:Ljava/lang/Object;

    .line 953
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/facebook/GraphRequest;->g:Lorg/json/JSONObject;

    .line 683
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 748
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->p:Z

    .line 749
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/facebook/GraphRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/facebook/at;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/at;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    return-object v0
.end method

.method public final f()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public final g()Lcom/facebook/ai;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/facebook/GraphRequest;->l:Lcom/facebook/ai;

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/facebook/GraphRequest;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()Lcom/facebook/as;
    .locals 1

    .prologue
    .line 977
    invoke-static {p0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/as;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/facebook/ao;
    .locals 2

    .prologue
    .line 992
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/facebook/GraphRequest;->b([Lcom/facebook/GraphRequest;)Lcom/facebook/ao;

    move-result-object v0

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1465
    new-instance v0, Lcom/facebook/q;

    const-string/jumbo v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1468
    :cond_0
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->n()Ljava/lang/String;

    move-result-object v0

    .line 1469
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->m()V

    .line 1470
    invoke-direct {p0, v0}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final l()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1489
    :goto_0
    return-object v0

    .line 1479
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->c()Lcom/facebook/at;

    move-result-object v0

    sget-object v1, Lcom/facebook/at;->b:Lcom/facebook/at;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->f:Ljava/lang/String;

    const-string/jumbo v1, "/videos"

    .line 1481
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1482
    invoke-static {}, Lcom/facebook/i/ar;->c()Ljava/lang/String;

    move-result-object v0

    .line 1486
    :goto_1
    const-string/jumbo v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1488
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->m()V

    .line 1489
    invoke-direct {p0, v0}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1484
    :cond_1
    invoke-static {}, Lcom/facebook/i/ar;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Request: "

    .line 1335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " accessToken: "

    .line 1336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .line 1337
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", graphPath: "

    .line 1338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->f:Ljava/lang/String;

    .line 1339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", graphObject: "

    .line 1340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->g:Lorg/json/JSONObject;

    .line 1341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", httpMethod: "

    .line 1342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/at;

    .line 1343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parameters: "

    .line 1344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->k:Landroid/os/Bundle;

    .line 1345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 1346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Lcom/facebook/AccessToken;

    goto :goto_0
.end method
