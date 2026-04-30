.class Lcom/i/a/b/i;
.super Lcom/i/a/b/f/c;
.source "ImageLoader.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/i/a/b/f/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/i/a/b/h;)V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/i/a/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/i/a/b/i;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 756
    iput-object p3, p0, Lcom/i/a/b/i;->a:Landroid/graphics/Bitmap;

    .line 757
    return-void
.end method
