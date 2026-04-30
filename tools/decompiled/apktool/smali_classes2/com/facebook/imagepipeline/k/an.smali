.class Lcom/facebook/imagepipeline/k/an;
.super Ljava/lang/Object;
.source "JobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/al;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/al;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/an;->a:Lcom/facebook/imagepipeline/k/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/an;->a:Lcom/facebook/imagepipeline/k/al;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/al;->b(Lcom/facebook/imagepipeline/k/al;)V

    .line 85
    return-void
.end method
