.class public Lcom/facebook/drawee/view/SimpleDraweeView;
.super Lcom/facebook/drawee/view/e;
.source "SimpleDraweeView.java"


# static fields
.field private static a:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<+",
            "Lcom/facebook/drawee/h/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/facebook/drawee/h/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/e;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/view/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/f/a;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/e;-><init>(Landroid/content/Context;Lcom/facebook/drawee/f/a;)V

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public static a(Lcom/facebook/d/d/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/d/m",
            "<+",
            "Lcom/facebook/drawee/h/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    sput-object p0, Lcom/facebook/drawee/view/SimpleDraweeView;->a:Lcom/facebook/d/d/m;

    .line 42
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget-object v0, Lcom/facebook/drawee/view/SimpleDraweeView;->a:Lcom/facebook/d/d/m;

    const-string/jumbo v1, "SimpleDraweeView was not initialized!"

    invoke-static {v0, v1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/facebook/drawee/view/SimpleDraweeView;->a:Lcom/facebook/d/d/m;

    invoke-interface {v0}, Lcom/facebook/d/d/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/h/d;

    iput-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->b:Lcom/facebook/drawee/h/d;

    .line 86
    if-eqz p2, :cond_0

    .line 87
    sget-object v0, Lcom/facebook/drawee/b;->SimpleDraweeView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 91
    :try_start_0
    sget v0, Lcom/facebook/drawee/b;->SimpleDraweeView_actualImageUri:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    sget v0, Lcom/facebook/drawee/b;->SimpleDraweeView_actualImageUri:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->a(Landroid/net/Uri;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->b:Lcom/facebook/drawee/h/d;

    .line 132
    invoke-interface {v0, p2}, Lcom/facebook/drawee/h/d;->e(Ljava/lang/Object;)Lcom/facebook/drawee/h/d;

    move-result-object v0

    .line 133
    invoke-interface {v0, p1}, Lcom/facebook/drawee/h/d;->b(Landroid/net/Uri;)Lcom/facebook/drawee/h/d;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/h/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/drawee/h/d;->b(Lcom/facebook/drawee/h/a;)Lcom/facebook/drawee/h/d;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Lcom/facebook/drawee/h/d;->p()Lcom/facebook/drawee/h/a;

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/h/a;)V

    .line 137
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 146
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->a(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 148
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getControllerBuilder()Lcom/facebook/drawee/h/d;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->b:Lcom/facebook/drawee/h/d;

    return-object v0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public setImageURI(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method
