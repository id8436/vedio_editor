.class public Lcom/e/a/a/a/a/a/l;
.super Lcom/e/a/a/a/a/a/g;
.source "RemoveAnimationInfo.java"


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/e/a/a/a/a/a/g;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/e/a/a/a/a/a/l;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/e/a/a/a/a/a/l;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/e/a/a/a/a/a/l;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, p1, :cond_0

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/a/a/a/a/l;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 38
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RemoveAnimationInfo{holder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/e/a/a/a/a/a/l;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
