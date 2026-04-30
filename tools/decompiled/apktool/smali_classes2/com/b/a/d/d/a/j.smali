.class public Lcom/b/a/d/d/a/j;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDataLoadProvider.java"

# interfaces
.implements Lcom/b/a/g/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/g/b",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/b/a/d/d/a/k;

.field private final c:Lcom/b/a/d/d/a/b;

.field private final d:Lcom/b/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/b",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/b/a/d/d/c/c;

    new-instance v1, Lcom/b/a/d/d/a/y;

    invoke-direct {v1, p1, p2}, Lcom/b/a/d/d/a/y;-><init>(Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V

    invoke-direct {v0, v1}, Lcom/b/a/d/d/c/c;-><init>(Lcom/b/a/d/e;)V

    iput-object v0, p0, Lcom/b/a/d/d/a/j;->a:Lcom/b/a/d/e;

    .line 29
    new-instance v0, Lcom/b/a/d/d/a/k;

    invoke-direct {v0, p1, p2}, Lcom/b/a/d/d/a/k;-><init>(Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V

    iput-object v0, p0, Lcom/b/a/d/d/a/j;->b:Lcom/b/a/d/d/a/k;

    .line 30
    new-instance v0, Lcom/b/a/d/d/a/b;

    invoke-direct {v0}, Lcom/b/a/d/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/d/a/j;->c:Lcom/b/a/d/d/a/b;

    .line 31
    invoke-static {}, Lcom/b/a/d/d/a;->b()Lcom/b/a/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/d/a/j;->d:Lcom/b/a/d/b;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/b/a/d/d/a/j;->a:Lcom/b/a/d/e;

    return-object v0
.end method

.method public b()Lcom/b/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/e",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/b/a/d/d/a/j;->b:Lcom/b/a/d/d/a/k;

    return-object v0
.end method

.method public c()Lcom/b/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/b",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/b/a/d/d/a/j;->d:Lcom/b/a/d/b;

    return-object v0
.end method

.method public d()Lcom/b/a/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/b/a/d/d/a/j;->c:Lcom/b/a/d/d/a/b;

    return-object v0
.end method
