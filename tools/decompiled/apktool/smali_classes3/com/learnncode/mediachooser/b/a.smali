.class public Lcom/learnncode/mediachooser/b/a;
.super Lcom/learnncode/mediachooser/b/b;
.source "ImageLoadAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/learnncode/mediachooser/b/b",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/learnncode/mediachooser/b/b;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/learnncode/mediachooser/b/a;->c:Landroid/widget/ImageView;

    .line 44
    iput-object p1, p0, Lcom/learnncode/mediachooser/b/a;->d:Landroid/content/Context;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/learnncode/mediachooser/b/a;->e:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/learnncode/mediachooser/b/a;->f:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/learnncode/mediachooser/b/b;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/learnncode/mediachooser/b/a;->c:Landroid/widget/ImageView;

    .line 37
    iput-object p1, p0, Lcom/learnncode/mediachooser/b/a;->d:Landroid/content/Context;

    .line 38
    iput p3, p0, Lcom/learnncode/mediachooser/b/a;->e:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/learnncode/mediachooser/b/a;->f:Z

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/learnncode/mediachooser/b/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/learnncode/mediachooser/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/learnncode/mediachooser/b/a;->f:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/k/a/ak;->a(Landroid/content/Context;)Lcom/k/a/ak;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/k/a/ak;->a(Ljava/io/File;)Lcom/k/a/ba;

    move-result-object v0

    iget v1, p0, Lcom/learnncode/mediachooser/b/a;->e:I

    iget v2, p0, Lcom/learnncode/mediachooser/b/a;->e:I

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/k/a/ba;->a(II)Lcom/k/a/ba;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/k/a/ba;->c()Lcom/k/a/ba;

    move-result-object v0

    sget v1, Lcom/learnncode/mediachooser/i;->ic_loading:I

    invoke-virtual {v0, v1}, Lcom/k/a/ba;->a(I)Lcom/k/a/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/learnncode/mediachooser/b/a;->c:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v0, v1}, Lcom/k/a/ba;->a(Landroid/widget/ImageView;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/k/a/ak;->a(Landroid/content/Context;)Lcom/k/a/ak;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/k/a/ak;->a(Ljava/io/File;)Lcom/k/a/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/k/a/ba;->a()Lcom/k/a/ba;

    move-result-object v0

    sget v1, Lcom/learnncode/mediachooser/i;->ic_loading:I

    invoke-virtual {v0, v1}, Lcom/k/a/ba;->a(I)Lcom/k/a/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/learnncode/mediachooser/b/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/k/a/ba;->a(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
