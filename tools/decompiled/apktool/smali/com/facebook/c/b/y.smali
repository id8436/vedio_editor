.class Lcom/facebook/c/b/y;
.super Ljava/lang/Object;
.source "DynamicDefaultDiskStorage.java"


# instance fields
.field public final a:Lcom/facebook/c/b/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/facebook/c/b/p;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/c/b/p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/facebook/c/b/y;->a:Lcom/facebook/c/b/p;

    .line 50
    iput-object p1, p0, Lcom/facebook/c/b/y;->b:Ljava/io/File;

    .line 51
    return-void
.end method
