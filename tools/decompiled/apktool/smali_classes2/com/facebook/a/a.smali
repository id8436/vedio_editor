.class public Lcom/facebook/a/a;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/a/h;",
            "Lcom/facebook/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static f:Lcom/facebook/a/j;

.field private static g:Z

.field private static h:Landroid/content/Context;

.field private static i:Ljava/lang/Object;

.field private static j:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/facebook/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    .line 186
    sget-object v0, Lcom/facebook/a/j;->a:Lcom/facebook/a/j;

    sput-object v0, Lcom/facebook/a/a;->f:Lcom/facebook/a/j;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    const-string/jumbo v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/i/az;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-static {p1}, Lcom/facebook/i/as;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/a;->b:Ljava/lang/String;

    .line 655
    if-nez p3, :cond_0

    .line 656
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 660
    :cond_0
    if-eqz p3, :cond_3

    if-eqz p2, :cond_1

    .line 661
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    :cond_1
    new-instance v0, Lcom/facebook/a/h;

    invoke-direct {v0, p3}, Lcom/facebook/a/h;-><init>(Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lcom/facebook/a/a;->c:Lcom/facebook/a/h;

    .line 672
    :goto_0
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 674
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 675
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    .line 677
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    invoke-static {}, Lcom/facebook/a/a;->h()V

    .line 680
    return-void

    .line 666
    :cond_3
    if-nez p2, :cond_4

    .line 667
    invoke-static {p1}, Lcom/facebook/i/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 669
    :cond_4
    new-instance v0, Lcom/facebook/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/a/a;->c:Lcom/facebook/a/h;

    goto :goto_0

    .line 677
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/facebook/a/h;Lcom/facebook/a/q;ZLcom/facebook/a/m;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 910
    invoke-virtual {p0}, Lcom/facebook/a/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-static {v0, v5}, Lcom/facebook/i/as;->a(Ljava/lang/String;Z)Lcom/facebook/i/ax;

    move-result-object v3

    .line 915
    const-string/jumbo v2, "%s/activities"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 917
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-static {v1, v0, v1, v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/ai;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 921
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 922
    if-nez v0, :cond_0

    .line 923
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 925
    :cond_0
    const-string/jumbo v4, "access_token"

    invoke-virtual {p0}, Lcom/facebook/a/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {v2, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 928
    if-nez v3, :cond_1

    move-object v0, v1

    .line 950
    :goto_0
    return-object v0

    .line 934
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/i/ax;->a()Z

    move-result v0

    .line 932
    invoke-virtual {p1, v2, v0, p2}, Lcom/facebook/a/q;->a(Lcom/facebook/GraphRequest;ZZ)I

    move-result v0

    .line 937
    if-nez v0, :cond_2

    move-object v0, v1

    .line 938
    goto :goto_0

    .line 941
    :cond_2
    iget v1, p3, Lcom/facebook/a/m;->a:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/facebook/a/m;->a:I

    .line 943
    new-instance v0, Lcom/facebook/a/g;

    invoke-direct {v0, p0, v2, p1, p3}, Lcom/facebook/a/g;-><init>(Lcom/facebook/a/h;Lcom/facebook/GraphRequest;Lcom/facebook/a/q;Lcom/facebook/a/m;)V

    invoke-virtual {v2, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/ai;)V

    move-object v0, v2

    .line 950
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/a/a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    new-instance v0, Lcom/facebook/a/a;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/a/a;
    .locals 2

    .prologue
    .line 417
    new-instance v0, Lcom/facebook/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static a()Lcom/facebook/a/j;
    .locals 2

    .prologue
    .line 439
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->f:Lcom/facebook/a/j;

    monitor-exit v1

    return-object v0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lcom/facebook/a/k;Ljava/util/Set;)Lcom/facebook/a/m;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/a/k;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/a/h;",
            ">;)",
            "Lcom/facebook/a/m;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 863
    new-instance v1, Lcom/facebook/a/m;

    invoke-direct {v1, v2}, Lcom/facebook/a/m;-><init>(Lcom/facebook/a/b;)V

    .line 865
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/w;->b(Landroid/content/Context;)Z

    move-result v3

    .line 867
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 868
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/h;

    .line 869
    invoke-static {v0}, Lcom/facebook/a/a;->a(Lcom/facebook/a/h;)Lcom/facebook/a/q;

    move-result-object v6

    .line 870
    if-eqz v6, :cond_0

    .line 874
    invoke-static {v0, v6, v3, v1}, Lcom/facebook/a/a;->a(Lcom/facebook/a/h;Lcom/facebook/a/q;ZLcom/facebook/a/m;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_0

    .line 880
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 884
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 885
    sget-object v0, Lcom/facebook/av;->e:Lcom/facebook/av;

    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string/jumbo v3, "Flushing %d events due to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/facebook/a/m;->a:I

    .line 886
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 887
    invoke-virtual {p0}, Lcom/facebook/a/k;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 885
    invoke-static {v0, v2, v3, v5}, Lcom/facebook/i/ag;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 892
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/as;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 897
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method static synthetic a(Landroid/content/Context;Lcom/facebook/a/h;)Lcom/facebook/a/q;
    .locals 1

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/facebook/a/a;->b(Landroid/content/Context;Lcom/facebook/a/h;)Lcom/facebook/a/q;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/a/h;)Lcom/facebook/a/q;
    .locals 2

    .prologue
    .line 813
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 814
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/q;

    monitor-exit v1

    return-object v0

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 350
    sget-object v1, Lcom/facebook/a/a;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/a/a;->c:Lcom/facebook/a/h;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/facebook/a/n;->a(Landroid/content/Context;Lcom/facebook/a/h;Lcom/facebook/a/a;JLjava/lang/String;)V

    .line 356
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/a/i;Lcom/facebook/a/h;)V
    .locals 2

    .prologue
    .line 746
    invoke-static {}, Lcom/facebook/w;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/a/e;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/a/e;-><init>(Landroid/content/Context;Lcom/facebook/a/h;Lcom/facebook/a/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 754
    return-void
.end method

.method static synthetic a(Lcom/facebook/a/a;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/a/a;->a(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/a/h;Lcom/facebook/GraphRequest;Lcom/facebook/as;Lcom/facebook/a/q;Lcom/facebook/a/m;)V
    .locals 0

    .prologue
    .line 147
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/a/a;->b(Lcom/facebook/a/h;Lcom/facebook/GraphRequest;Lcom/facebook/as;Lcom/facebook/a/q;Lcom/facebook/a/m;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/a/k;)V
    .locals 0

    .prologue
    .line 147
    invoke-static {p0}, Lcom/facebook/a/a;->c(Lcom/facebook/a/k;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .locals 6

    .prologue
    .line 734
    new-instance v0, Lcom/facebook/a/i;

    iget-object v1, p0, Lcom/facebook/a/a;->b:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 740
    sget-object v1, Lcom/facebook/a/a;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/a/a;->c:Lcom/facebook/a/h;

    invoke-static {v1, v0, v2}, Lcom/facebook/a/a;->a(Landroid/content/Context;Lcom/facebook/a/i;Lcom/facebook/a/h;)V

    .line 741
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/facebook/a/h;)Lcom/facebook/a/q;
    .locals 5

    .prologue
    .line 790
    sget-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/q;

    .line 791
    const/4 v1, 0x0

    .line 792
    if-nez v0, :cond_0

    .line 795
    invoke-static {p0}, Lcom/facebook/i/d;->a(Landroid/content/Context;)Lcom/facebook/i/d;

    move-result-object v0

    move-object v1, v0

    .line 798
    :cond_0
    sget-object v2, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 800
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/q;

    .line 801
    if-nez v0, :cond_1

    .line 802
    new-instance v0, Lcom/facebook/a/q;

    .line 804
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 805
    invoke-static {p0}, Lcom/facebook/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/a/q;-><init>(Lcom/facebook/i/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    sget-object v1, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :cond_1
    monitor-exit v2

    return-object v0

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1119
    sget-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1120
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 1121
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1123
    const-string/jumbo v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1126
    const-string/jumbo v2, "anonymousAppDeviceGUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    .line 1127
    sget-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "XZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    .line 1131
    const-string/jumbo v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1132
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "anonymousAppDeviceGUID"

    sget-object v3, Lcom/facebook/a/a;->j:Ljava/lang/String;

    .line 1133
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1137
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    :cond_1
    sget-object v0, Lcom/facebook/a/a;->j:Ljava/lang/String;

    return-object v0

    .line 1137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static b(Lcom/facebook/a/h;Lcom/facebook/GraphRequest;Lcom/facebook/as;Lcom/facebook/a/q;Lcom/facebook/a/m;)V
    .locals 10

    .prologue
    .line 959
    invoke-virtual {p2}, Lcom/facebook/as;->a()Lcom/facebook/s;

    move-result-object v3

    .line 960
    const-string/jumbo v1, "Success"

    .line 962
    sget-object v0, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    .line 964
    if-eqz v3, :cond_5

    .line 966
    invoke-virtual {v3}, Lcom/facebook/s;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 967
    const-string/jumbo v1, "Failed: No Connectivity"

    .line 968
    sget-object v0, Lcom/facebook/a/l;->c:Lcom/facebook/a/l;

    move-object v2, v1

    move-object v1, v0

    .line 977
    :goto_0
    sget-object v0, Lcom/facebook/av;->e:Lcom/facebook/av;

    invoke-static {v0}, Lcom/facebook/w;->a(Lcom/facebook/av;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 982
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 983
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 988
    :goto_1
    sget-object v4, Lcom/facebook/av;->e:Lcom/facebook/av;

    sget-object v5, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string/jumbo v6, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 990
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->a()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    aput-object v0, v7, v2

    .line 988
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/i/ag;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 995
    :cond_0
    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Lcom/facebook/a/q;->a(Z)V

    .line 997
    sget-object v0, Lcom/facebook/a/l;->c:Lcom/facebook/a/l;

    if-ne v1, v0, :cond_1

    .line 1003
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    invoke-static {v0, p0, p3}, Lcom/facebook/a/p;->a(Landroid/content/Context;Lcom/facebook/a/h;Lcom/facebook/a/q;)V

    .line 1006
    :cond_1
    sget-object v0, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    if-eq v1, v0, :cond_2

    .line 1008
    iget-object v0, p4, Lcom/facebook/a/m;->b:Lcom/facebook/a/l;

    sget-object v2, Lcom/facebook/a/l;->c:Lcom/facebook/a/l;

    if-eq v0, v2, :cond_2

    .line 1009
    iput-object v1, p4, Lcom/facebook/a/m;->b:Lcom/facebook/a/l;

    .line 1012
    :cond_2
    return-void

    .line 970
    :cond_3
    const-string/jumbo v0, "Failed:\n  Response: %s\n  Error %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 971
    invoke-virtual {p2}, Lcom/facebook/as;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 972
    invoke-virtual {v3}, Lcom/facebook/s;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 970
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 973
    sget-object v0, Lcom/facebook/a/l;->b:Lcom/facebook/a/l;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 984
    :catch_0
    move-exception v0

    .line 985
    const-string/jumbo v0, "<Can\'t encode events for debug logging>"

    goto :goto_1

    .line 995
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method private static b(Lcom/facebook/a/k;)V
    .locals 2

    .prologue
    .line 820
    invoke-static {}, Lcom/facebook/w;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/a/f;

    invoke-direct {v1, p0}, Lcom/facebook/a/f;-><init>(Lcom/facebook/a/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    return-object v0
.end method

.method private static c(Lcom/facebook/a/k;)V
    .locals 4

    .prologue
    .line 831
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 832
    :try_start_0
    sget-boolean v0, Lcom/facebook/a/a;->g:Z

    if-eqz v0, :cond_1

    .line 833
    monitor-exit v1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/a;->g:Z

    .line 836
    new-instance v2, Ljava/util/HashSet;

    sget-object v0, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 837
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    invoke-static {}, Lcom/facebook/a/a;->k()I

    .line 841
    const/4 v0, 0x0

    .line 843
    :try_start_1
    invoke-static {p0, v2}, Lcom/facebook/a/a;->a(Lcom/facebook/a/k;Ljava/util/Set;)Lcom/facebook/a/m;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 848
    :goto_1
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 849
    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/facebook/a/a;->g:Z

    .line 850
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 852
    if-eqz v0, :cond_0

    .line 853
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    const-string/jumbo v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v3, v0, Lcom/facebook/a/m;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 855
    const-string/jumbo v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v0, v0, Lcom/facebook/a/m;->b:Lcom/facebook/a/l;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 856
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 837
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 844
    :catch_0
    move-exception v1

    .line 845
    sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;

    const-string/jumbo v3, "Caught unexpected exception while flushing: "

    invoke-static {v2, v3, v1}, Lcom/facebook/i/as;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 850
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic d()V
    .locals 0

    .prologue
    .line 147
    invoke-static {}, Lcom/facebook/a/a;->i()V

    return-void
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/a/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private static h()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 683
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 684
    :try_start_0
    sget-object v0, Lcom/facebook/a/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 685
    monitor-exit v1

    .line 727
    :goto_0
    return-void

    .line 687
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/a/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 688
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    new-instance v1, Lcom/facebook/a/c;

    invoke-direct {v1}, Lcom/facebook/a/c;-><init>()V

    .line 699
    sget-object v0, Lcom/facebook/a/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 706
    new-instance v1, Lcom/facebook/a/d;

    invoke-direct {v1}, Lcom/facebook/a/d;-><init>()V

    .line 721
    sget-object v0, Lcom/facebook/a/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/32 v4, 0x15180

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 688
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static i()V
    .locals 3

    .prologue
    .line 763
    sget-object v1, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    :try_start_0
    invoke-static {}, Lcom/facebook/a/a;->a()Lcom/facebook/a/j;

    move-result-object v0

    sget-object v2, Lcom/facebook/a/j;->b:Lcom/facebook/a/j;

    if-eq v0, v2, :cond_0

    .line 765
    invoke-static {}, Lcom/facebook/a/a;->j()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 766
    sget-object v0, Lcom/facebook/a/k;->e:Lcom/facebook/a/k;

    invoke-static {v0}, Lcom/facebook/a/a;->b(Lcom/facebook/a/k;)V

    .line 769
    :cond_0
    monitor-exit v1

    .line 770
    return-void

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static j()I
    .locals 4

    .prologue
    .line 773
    sget-object v2, Lcom/facebook/a/a;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 775
    const/4 v0, 0x0

    .line 776
    :try_start_0
    sget-object v1, Lcom/facebook/a/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/q;

    .line 777
    invoke-virtual {v0}, Lcom/facebook/a/q;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 778
    goto :goto_0

    .line 779
    :cond_0
    monitor-exit v2

    return v1

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static k()I
    .locals 5

    .prologue
    .line 1015
    sget-object v0, Lcom/facebook/a/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/a/p;->a(Landroid/content/Context;)Lcom/facebook/a/p;

    move-result-object v2

    .line 1017
    const/4 v0, 0x0

    .line 1018
    invoke-virtual {v2}, Lcom/facebook/a/p;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/h;

    .line 1019
    sget-object v4, Lcom/facebook/a/a;->h:Landroid/content/Context;

    .line 1020
    invoke-static {v4, v0}, Lcom/facebook/a/a;->b(Landroid/content/Context;Lcom/facebook/a/h;)Lcom/facebook/a/q;

    move-result-object v4

    .line 1022
    invoke-virtual {v2, v0}, Lcom/facebook/a/p;->a(Lcom/facebook/a/h;)Ljava/util/List;

    move-result-object v0

    .line 1023
    invoke-virtual {v4, v0}, Lcom/facebook/a/q;->a(Ljava/util/List;)V

    .line 1024
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1025
    goto :goto_0

    .line 1027
    :cond_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 532
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/facebook/a/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 533
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 507
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/a/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 508
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/a/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 615
    return-void
.end method
