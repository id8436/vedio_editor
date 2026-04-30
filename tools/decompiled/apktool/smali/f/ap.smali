.class Lf/ap;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final a:Lf/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lf/ap;->c()Lf/ap;

    move-result-object v0

    sput-object v0, Lf/ap;->a:Lf/ap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lf/ap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lf/ap;->a:Lf/ap;

    return-object v0
.end method

.method private static c()Lf/ap;
    .locals 1

    .prologue
    .line 37
    :try_start_0
    const-string/jumbo v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lf/aq;

    invoke-direct {v0}, Lf/aq;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 44
    :cond_0
    :try_start_1
    const-string/jumbo v0, "java.util.Optional"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 45
    new-instance v0, Lf/as;

    invoke-direct {v0}, Lf/as;-><init>()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 48
    new-instance v0, Lf/ap;

    invoke-direct {v0}, Lf/ap;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/concurrent/Executor;)Lf/i;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Lf/o;

    invoke-direct {v0, p1}, Lf/o;-><init>(Ljava/util/concurrent/Executor;)V

    .line 59
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lf/m;->a:Lf/i;

    goto :goto_0
.end method

.method varargs a(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p4    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method a(Ljava/lang/reflect/Method;)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method b()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method
