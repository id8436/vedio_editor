.class public Lcom/facebook/login/r;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/facebook/login/r;


# instance fields
.field private c:Lcom/facebook/login/g;

.field private d:Lcom/facebook/login/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/facebook/login/r;->c()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/r;->a:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/facebook/login/g;->a:Lcom/facebook/login/g;

    iput-object v0, p0, Lcom/facebook/login/r;->c:Lcom/facebook/login/g;

    .line 63
    sget-object v0, Lcom/facebook/login/a;->c:Lcom/facebook/login/a;

    iput-object v0, p0, Lcom/facebook/login/r;->d:Lcom/facebook/login/a;

    .line 66
    invoke-static {}, Lcom/facebook/i/az;->b()V

    .line 67
    return-void
.end method

.method private a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 457
    invoke-static {}, Lcom/facebook/w;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/m;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Lcom/facebook/login/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 463
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 464
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 466
    return-object v0
.end method

.method public static a()Lcom/facebook/login/r;
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/login/r;->b:Lcom/facebook/login/r;

    if-nez v0, :cond_1

    .line 75
    const-class v1, Lcom/facebook/login/r;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/facebook/login/r;->b:Lcom/facebook/login/r;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/facebook/login/r;

    invoke-direct {v0}, Lcom/facebook/login/r;-><init>()V

    sput-object v0, Lcom/facebook/login/r;->b:Lcom/facebook/login/r;

    .line 79
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    sget-object v0, Lcom/facebook/login/r;->b:Lcom/facebook/login/r;

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/x;
    .locals 3

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 478
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 482
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 483
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 484
    new-instance v0, Lcom/facebook/login/x;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/login/x;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    .prologue
    .line 385
    invoke-static {p1}, Lcom/facebook/login/w;->a(Landroid/content/Context;)Lcom/facebook/login/q;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 387
    invoke-virtual {v0, p2}, Lcom/facebook/login/q;->a(Lcom/facebook/login/LoginClient$Request;)V

    .line 389
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/facebook/login/m;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/m;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 398
    invoke-static {p1}, Lcom/facebook/login/w;->a(Landroid/content/Context;)Lcom/facebook/login/q;

    move-result-object v0

    .line 399
    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 402
    :cond_0
    if-nez p6, :cond_1

    .line 404
    const-string/jumbo v1, "fb_mobile_login_complete"

    const-string/jumbo v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 410
    const-string/jumbo v3, "try_login_activity"

    if-eqz p5, :cond_2

    const-string/jumbo v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 416
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/login/q;->a(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/m;Ljava/util/Map;Ljava/lang/Exception;)V

    goto :goto_0

    .line 410
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method private a(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/q;ZLcom/facebook/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/login/LoginClient$Request;",
            "Lcom/facebook/q;",
            "Z",
            "Lcom/facebook/o",
            "<",
            "Lcom/facebook/login/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    if-eqz p1, :cond_0

    .line 494
    invoke-static {p1}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 495
    invoke-static {}, Lcom/facebook/Profile;->b()V

    .line 498
    :cond_0
    if-eqz p5, :cond_2

    .line 499
    if-eqz p1, :cond_3

    .line 500
    invoke-static {p2, p1}, Lcom/facebook/login/r;->a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/x;

    move-result-object v0

    .line 503
    :goto_0
    if-nez p4, :cond_1

    if-eqz v0, :cond_4

    .line 505
    invoke-virtual {v0}, Lcom/facebook/login/x;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 506
    :cond_1
    invoke-interface {p5}, Lcom/facebook/o;->onCancel()V

    .line 513
    :cond_2
    :goto_1
    return-void

    .line 500
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 507
    :cond_4
    if-eqz p3, :cond_5

    .line 508
    invoke-interface {p5, p3}, Lcom/facebook/o;->onError(Lcom/facebook/q;)V

    goto :goto_1

    .line 509
    :cond_5
    if-eqz p1, :cond_2

    .line 510
    invoke-interface {p5, v0}, Lcom/facebook/o;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Lcom/facebook/login/y;Lcom/facebook/login/LoginClient$Request;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/q;
        }
    .end annotation

    .prologue
    .line 353
    invoke-interface {p1}, Lcom/facebook/login/y;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/r;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 356
    sget-object v0, Lcom/facebook/i/t;->a:Lcom/facebook/i/t;

    .line 357
    invoke-virtual {v0}, Lcom/facebook/i/t;->a()I

    move-result v0

    new-instance v1, Lcom/facebook/login/u;

    invoke-direct {v1, p0}, Lcom/facebook/login/u;-><init>(Lcom/facebook/login/r;)V

    .line 356
    invoke-static {v0, v1}, Lcom/facebook/i/r;->a(ILcom/facebook/i/s;)V

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/r;->b(Lcom/facebook/login/y;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v0

    .line 368
    if-nez v0, :cond_0

    .line 369
    new-instance v4, Lcom/facebook/q;

    const-string/jumbo v0, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v4, v0}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    .line 372
    const/4 v5, 0x0

    .line 374
    invoke-interface {p1}, Lcom/facebook/login/y;->a()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/login/m;->c:Lcom/facebook/login/m;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 373
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/r;->a(Landroid/content/Context;Lcom/facebook/login/m;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 380
    throw v4

    .line 382
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    if-nez p1, :cond_1

    .line 317
    :cond_0
    return-void

    .line 309
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    invoke-static {v0}, Lcom/facebook/login/r;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 311
    new-instance v1, Lcom/facebook/q;

    const-string/jumbo v2, "Cannot pass a read permission (%s) to a request for publish authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 312
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 447
    invoke-static {}, Lcom/facebook/w;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 448
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 449
    if-nez v1, :cond_0

    .line 452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 320
    if-eqz p0, :cond_1

    const-string/jumbo v0, "publish"

    .line 321
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "manage"

    .line 322
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/login/r;->a:Ljava/util/Set;

    .line 323
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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

.method private b(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/facebook/login/r;->c:Lcom/facebook/login/g;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 338
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/r;->d:Lcom/facebook/login/a;

    .line 341
    invoke-static {}, Lcom/facebook/w;->i()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/g;Ljava/util/Set;Lcom/facebook/login/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient$Request;->a(Z)V

    .line 345
    return-object v0

    .line 336
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 344
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private b(Lcom/facebook/login/y;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 429
    invoke-direct {p0, p2}, Lcom/facebook/login/r;->a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object v1

    .line 431
    invoke-direct {p0, v1}, Lcom/facebook/login/r;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    :goto_0
    return v0

    .line 438
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginClient;->d()I

    move-result v2

    .line 436
    invoke-interface {p1, v1, v2}, Lcom/facebook/login/y;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    const/4 v0, 0x1

    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/facebook/login/t;

    invoke-direct {v0}, Lcom/facebook/login/t;-><init>()V

    .line 332
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/login/a;)Lcom/facebook/login/r;
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/facebook/login/r;->d:Lcom/facebook/login/a;

    .line 231
    return-object p0
.end method

.method public a(Lcom/facebook/login/g;)Lcom/facebook/login/r;
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/facebook/login/r;->c:Lcom/facebook/login/g;

    .line 213
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0, p2}, Lcom/facebook/login/r;->a(Ljava/util/Collection;)V

    .line 274
    invoke-direct {p0, p2}, Lcom/facebook/login/r;->b(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/facebook/login/v;

    invoke-direct {v1, p1}, Lcom/facebook/login/v;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/r;->a(Lcom/facebook/login/y;Lcom/facebook/login/LoginClient$Request;)V

    .line 276
    return-void
.end method

.method public a(Lcom/facebook/k;Lcom/facebook/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/k;",
            "Lcom/facebook/o",
            "<",
            "Lcom/facebook/login/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    instance-of v0, p1, Lcom/facebook/i/r;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/facebook/q;

    const-string/jumbo v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    check-cast p1, Lcom/facebook/i/r;

    sget-object v0, Lcom/facebook/i/t;->a:Lcom/facebook/i/t;

    .line 132
    invoke-virtual {v0}, Lcom/facebook/i/t;->a()I

    move-result v0

    new-instance v1, Lcom/facebook/login/s;

    invoke-direct {v1, p0, p2}, Lcom/facebook/login/s;-><init>(Lcom/facebook/login/r;Lcom/facebook/o;)V

    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/facebook/i/r;->b(ILcom/facebook/i/s;)V

    .line 143
    return-void
.end method

.method a(ILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/r;->a(ILandroid/content/Intent;Lcom/facebook/o;)Z

    move-result v0

    return v0
.end method

.method a(ILandroid/content/Intent;Lcom/facebook/o;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/o",
            "<",
            "Lcom/facebook/login/x;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 150
    const/4 v4, 0x0

    .line 151
    const/4 v3, 0x0

    .line 152
    sget-object v7, Lcom/facebook/login/m;->c:Lcom/facebook/login/m;

    .line 153
    const/4 v6, 0x0

    .line 154
    const/4 v5, 0x0

    .line 156
    const/4 v2, 0x0

    .line 157
    if-eqz p2, :cond_4

    .line 158
    const-string/jumbo v1, "com.facebook.LoginFragment:Result"

    .line 159
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/login/LoginClient$Result;

    .line 160
    if-eqz v1, :cond_6

    .line 161
    iget-object v5, v1, Lcom/facebook/login/LoginClient$Result;->e:Lcom/facebook/login/LoginClient$Request;

    .line 162
    iget-object v6, v1, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/m;

    .line 163
    const/4 v7, -0x1

    move/from16 v0, p1

    if-ne v0, v7, :cond_3

    .line 164
    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/m;

    sget-object v8, Lcom/facebook/login/m;->a:Lcom/facebook/login/m;

    if-ne v7, v8, :cond_2

    .line 165
    iget-object v3, v1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    .line 172
    :cond_0
    :goto_0
    iget-object v1, v1, Lcom/facebook/login/LoginClient$Result;->f:Ljava/util/Map;

    move-object v14, v5

    move-object v5, v3

    move-object v3, v1

    move-object v1, v14

    move-object v15, v6

    move-object v6, v4

    move-object v4, v15

    :goto_1
    move v12, v2

    move-object v7, v1

    move-object v9, v5

    move-object v5, v6

    move-object v14, v3

    move-object v3, v4

    move-object v4, v14

    .line 179
    :goto_2
    if-nez v5, :cond_1

    if-nez v9, :cond_1

    if-nez v12, :cond_1

    .line 180
    new-instance v5, Lcom/facebook/q;

    const-string/jumbo v1, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v5, v1}, Lcom/facebook/q;-><init>(Ljava/lang/String;)V

    .line 183
    :cond_1
    const/4 v6, 0x1

    .line 184
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 185
    invoke-direct/range {v1 .. v7}, Lcom/facebook/login/r;->a(Landroid/content/Context;Lcom/facebook/login/m;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    move-object/from16 v8, p0

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v13, p3

    .line 193
    invoke-direct/range {v8 .. v13}, Lcom/facebook/login/r;->a(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/q;ZLcom/facebook/o;)V

    .line 195
    const/4 v1, 0x1

    return v1

    .line 167
    :cond_2
    new-instance v4, Lcom/facebook/n;

    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->c:Ljava/lang/String;

    invoke-direct {v4, v7}, Lcom/facebook/n;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_3
    if-nez p1, :cond_0

    .line 170
    const/4 v2, 0x1

    goto :goto_0

    .line 174
    :cond_4
    if-nez p1, :cond_5

    .line 175
    const/4 v2, 0x1

    .line 176
    sget-object v7, Lcom/facebook/login/m;->b:Lcom/facebook/login/m;

    move v12, v2

    move-object v9, v3

    move-object v3, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    goto :goto_2

    :cond_5
    move v12, v2

    move-object v9, v3

    move-object v3, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    goto :goto_2

    :cond_6
    move-object v1, v5

    move-object v5, v3

    move-object v3, v6

    move-object v6, v4

    move-object v4, v7

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-static {v0}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 239
    invoke-static {v0}, Lcom/facebook/Profile;->a(Lcom/facebook/Profile;)V

    .line 240
    return-void
.end method
