.class Lcom/facebook/imagepipeline/e/m;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"

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
.field final synthetic a:Lcom/facebook/imagepipeline/e/l;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/e/l;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/facebook/imagepipeline/e/m;->a:Lcom/facebook/imagepipeline/e/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/m;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
