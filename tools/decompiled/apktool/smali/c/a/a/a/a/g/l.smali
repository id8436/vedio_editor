.class Lc/a/a/a/a/g/l;
.super Lc/a/a/a/a/b/a;
.source "DefaultSettingsSpiCall.java"

# interfaces
.implements Lc/a/a/a/a/g/aa;


# direct methods
.method public constructor <init>(Lc/a/a/a/q;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/m;)V
    .locals 6

    .prologue
    .line 59
    sget-object v5, Lc/a/a/a/a/e/d;->a:Lc/a/a/a/a/e/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lc/a/a/a/a/g/l;-><init>(Lc/a/a/a/q;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/m;Lc/a/a/a/a/e/d;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lc/a/a/a/q;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/m;Lc/a/a/a/a/e/d;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lc/a/a/a/a/b/a;-><init>(Lc/a/a/a/q;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/m;Lc/a/a/a/a/e/d;)V

    .line 68
    return-void
.end method

.method private a(Lc/a/a/a/a/e/e;Lc/a/a/a/a/g/z;)Lc/a/a/a/a/e/e;
    .locals 3

    .prologue
    .line 150
    const-string/jumbo v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Lc/a/a/a/a/g/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/e;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/e;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-D"

    iget-object v2, p2, Lc/a/a/a/a/g/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/e;

    move-result-object v0

    const-string/jumbo v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, Lc/a/a/a/a/g/l;->kit:Lc/a/a/a/q;

    invoke-virtual {v2}, Lc/a/a/a/q;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/e;

    move-result-object v0

    const-string/jumbo v1, "Accept"

    const-string/jumbo v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/e/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 123
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse settings JSON from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lc/a/a/a/a/g/l;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Settings response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lc/a/a/a/a/g/z;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/a/a/g/z;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    const-string/jumbo v1, "build_version"

    iget-object v2, p1, Lc/a/a/a/a/g/z;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v1, "display_version"

    iget-object v2, p1, Lc/a/a/a/a/g/z;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "source"

    iget v2, p1, Lc/a/a/a/a/g/z;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p1, Lc/a/a/a/a/g/z;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 138
    const-string/jumbo v1, "icon_hash"

    iget-object v2, p1, Lc/a/a/a/a/g/z;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    iget-object v1, p1, Lc/a/a/a/a/g/z;->c:Ljava/lang/String;

    .line 142
    invoke-static {v1}, Lc/a/a/a/a/b/m;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    const-string/jumbo v2, "instance"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    return-object v0
.end method


# virtual methods
.method a(Lc/a/a/a/a/e/e;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 96
    invoke-virtual {p1}, Lc/a/a/a/a/e/e;->b()I

    move-result v0

    .line 97
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Settings result was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v0}, Lc/a/a/a/a/g/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lc/a/a/a/a/e/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/a/a/a/g/l;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to retrieve settings from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lc/a/a/a/a/g/l;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lc/a/a/a/a/g/z;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 72
    .line 73
    const/4 v1, 0x0

    .line 76
    :try_start_0
    invoke-direct {p0, p1}, Lc/a/a/a/a/g/l;->b(Lc/a/a/a/a/g/z;)Ljava/util/Map;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lc/a/a/a/a/g/l;->getHttpRequest(Ljava/util/Map;)Lc/a/a/a/a/e/e;

    move-result-object v1

    .line 78
    invoke-direct {p0, v1, p1}, Lc/a/a/a/a/g/l;->a(Lc/a/a/a/a/e/e;Lc/a/a/a/a/g/z;)Lc/a/a/a/a/e/e;

    move-result-object v1

    .line 80
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requesting settings from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lc/a/a/a/a/g/l;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings query params were: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v1}, Lc/a/a/a/a/g/l;->a(Lc/a/a/a/a/e/e;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings request ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "X-REQUEST-ID"

    invoke-virtual {v1, v5}, Lc/a/a/a/a/e/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 86
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings request ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "X-REQUEST-ID"

    invoke-virtual {v1, v5}, Lc/a/a/a/a/e/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    throw v0
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xca

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
