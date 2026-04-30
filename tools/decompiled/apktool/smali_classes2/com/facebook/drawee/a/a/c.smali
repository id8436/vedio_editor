.class public Lcom/facebook/drawee/a/a/c;
.super Ljava/lang/Object;
.source "Fresco.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/facebook/drawee/a/a/h;

.field private static volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/facebook/drawee/a/a/c;

    sput-object v0, Lcom/facebook/drawee/a/a/c;->a:Ljava/lang/Class;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/drawee/a/a/c;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/drawee/a/a/f;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/facebook/drawee/a/a/c;->b:Lcom/facebook/drawee/a/a/h;

    invoke-virtual {v0}, Lcom/facebook/drawee/a/a/h;->a()Lcom/facebook/drawee/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0, v0}, Lcom/facebook/drawee/a/a/c;->a(Landroid/content/Context;Lcom/facebook/imagepipeline/e/h;Lcom/facebook/drawee/a/a/b;)V

    .line 40
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/drawee/a/a/b;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/a/a/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    new-instance v0, Lcom/facebook/drawee/a/a/h;

    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/a/a/h;-><init>(Landroid/content/Context;Lcom/facebook/drawee/a/a/b;)V

    sput-object v0, Lcom/facebook/drawee/a/a/c;->b:Lcom/facebook/drawee/a/a/h;

    .line 78
    sget-object v0, Lcom/facebook/drawee/a/a/c;->b:Lcom/facebook/drawee/a/a/h;

    invoke-static {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a(Lcom/facebook/d/d/m;)V

    .line 79
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/imagepipeline/e/h;Lcom/facebook/drawee/a/a/b;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/e/h;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/a/a/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    sget-boolean v0, Lcom/facebook/drawee/a/a/c;->c:Z

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/facebook/drawee/a/a/c;->a:Ljava/lang/Class;

    const-string/jumbo v1, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!"

    invoke-static {v0, v1}, Lcom/facebook/d/e/a;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    if-nez p1, :cond_1

    .line 65
    invoke-static {v0}, Lcom/facebook/imagepipeline/e/o;->a(Landroid/content/Context;)V

    .line 69
    :goto_1
    invoke-static {v0, p2}, Lcom/facebook/drawee/a/a/c;->a(Landroid/content/Context;Lcom/facebook/drawee/a/a/b;)V

    .line 70
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/drawee/a/a/c;->c:Z

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/o;->a(Lcom/facebook/imagepipeline/e/h;)V

    goto :goto_1
.end method
