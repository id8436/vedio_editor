.class Lcom/twitter/sdk/android/core/internal/b;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/b;->a:Ljava/util/Set;

    .line 82
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/b;->b:Landroid/app/Application;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/twitter/sdk/android/core/internal/b;Lcom/twitter/sdk/android/core/internal/d;)Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/b;->a(Lcom/twitter/sdk/android/core/internal/d;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/twitter/sdk/android/core/internal/d;)Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/b;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/twitter/sdk/android/core/internal/c;

    invoke-direct {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/c;-><init>(Lcom/twitter/sdk/android/core/internal/b;Lcom/twitter/sdk/android/core/internal/d;)V

    .line 133
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/b;->b:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 134
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/b;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
