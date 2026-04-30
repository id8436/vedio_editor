.class Lcom/facebook/a/i;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Z

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1289
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/a/i;->c:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1300
    :try_start_0
    invoke-direct {p0, p2}, Lcom/facebook/a/i;->a(Ljava/lang/String;)V

    .line 1302
    iput-object p2, p0, Lcom/facebook/a/i;->d:Ljava/lang/String;

    .line 1303
    iput-boolean p5, p0, Lcom/facebook/a/i;->b:Z

    .line 1304
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    .line 1306
    iget-object v0, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "_eventName"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1307
    iget-object v0, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "_logTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1308
    iget-object v0, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "_ui"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1310
    if-eqz p3, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "_valueToSum"

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1314
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/a/i;->b:Z

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "_implicitlyLogged"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1318
    :cond_1
    if-eqz p4, :cond_4

    .line 1319
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1321
    invoke-direct {p0, v0}, Lcom/facebook/a/i;->a(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1324
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_3

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_3

    .line 1325
    new-instance v1, Lcom/facebook/q;

    const-string/jumbo v3, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    .line 1326
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/q; {:try_start_0 .. :try_end_0} :catch_1

    .line 1342
    :catch_0
    move-exception v0

    .line 1345
    sget-object v1, Lcom/facebook/av;->e:Lcom/facebook/av;

    const-string/jumbo v2, "AppEvents"

    const-string/jumbo v3, "JSON encoding for app event failed: \'%s\'"

    new-array v4, v7, [Ljava/lang/Object;

    .line 1346
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 1345
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/i/ag;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    iput-object v8, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    .line 1355
    :cond_2
    :goto_1
    return-void

    .line 1334
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/q; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1349
    :catch_1
    move-exception v0

    .line 1351
    sget-object v1, Lcom/facebook/av;->e:Lcom/facebook/av;

    const-string/jumbo v2, "AppEvents"

    const-string/jumbo v3, "Invalid app event name or parameter:"

    new-array v4, v7, [Ljava/lang/Object;

    .line 1352
    invoke-virtual {v0}, Lcom/facebook/q;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 1351
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/i/ag;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1353
    iput-object v8, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    goto :goto_1

    .line 1338
    :cond_4
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/a/i;->b:Z

    if-nez v0, :cond_2

    .line 1339
    sget-object v0, Lcom/facebook/av;->e:Lcom/facebook/av;

    const-string/jumbo v1, "AppEvents"

    const-string/jumbo v2, "Created app event \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    .line 1340
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1339
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/i/ag;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/facebook/q; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/q;
        }
    .end annotation

    .prologue
    const/16 v6, 0x28

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1379
    const-string/jumbo v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    .line 1382
    if-eqz p1, :cond_0

    .line 1383
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 1385
    :cond_0
    if-nez p1, :cond_1

    .line 1386
    const-string/jumbo p1, "<None Provided>"

    .line 1388
    :cond_1
    new-instance v0, Lcom/facebook/q;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "Identifier \'%s\' must be less than %d characters"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 1393
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1389
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1398
    :cond_2
    sget-object v1, Lcom/facebook/a/i;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 1399
    :try_start_0
    sget-object v0, Lcom/facebook/a/i;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1400
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    if-nez v0, :cond_3

    .line 1403
    const-string/jumbo v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1404
    sget-object v1, Lcom/facebook/a/i;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 1405
    :try_start_1
    sget-object v0, Lcom/facebook/a/i;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1406
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1418
    :cond_3
    return-void

    .line 1400
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1406
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1408
    :cond_4
    new-instance v0, Lcom/facebook/q;

    const-string/jumbo v1, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    .line 1409
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 1367
    iget-boolean v0, p0, Lcom/facebook/a/i;->b:Z

    return v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1441
    const-string/jumbo v0, "\"%s\", implicit: %b, json: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    const-string/jumbo v4, "_eventName"

    .line 1443
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/facebook/a/i;->b:Z

    .line 1444
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/a/i;->a:Lorg/json/JSONObject;

    .line 1445
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1441
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
