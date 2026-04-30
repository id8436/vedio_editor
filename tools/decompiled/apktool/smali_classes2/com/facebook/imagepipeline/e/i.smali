.class Lcom/facebook/imagepipeline/e/i;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"

# interfaces
.implements Lcom/facebook/d/d/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/d/d/m",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/e/h;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/e/h;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/imagepipeline/e/i;->a:Lcom/facebook/imagepipeline/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/i;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
