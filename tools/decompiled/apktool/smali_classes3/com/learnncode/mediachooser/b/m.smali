.class public Lcom/learnncode/mediachooser/b/m;
.super Ljava/lang/Object;
.source "VideoLoadAsyncModified.java"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/learnncode/mediachooser/b/m;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/learnncode/mediachooser/b/m;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(IILjava/lang/String;Lcom/learnncode/mediachooser/c/a;)V
    .locals 7

    .prologue
    .line 25
    invoke-static {p2}, Lcom/learnncode/mediachooser/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p3}, Lcom/learnncode/mediachooser/c/a;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 28
    invoke-static {}, Lcom/learnncode/mediachooser/b;->b()V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    sget-object v0, Lcom/learnncode/mediachooser/b/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/learnncode/mediachooser/b/n;

    const-wide/16 v2, 0x258

    move-object v1, p2

    move v4, p0

    move v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/learnncode/mediachooser/b/n;-><init>(Ljava/lang/String;JIILcom/learnncode/mediachooser/c/a;)V

    .line 32
    sget-object v1, Lcom/learnncode/mediachooser/b/b;->a:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/learnncode/mediachooser/b/n;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
