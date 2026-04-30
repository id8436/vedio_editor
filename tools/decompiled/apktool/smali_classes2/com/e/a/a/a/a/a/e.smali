.class public Lcom/e/a/a/a/a/a/e;
.super Lcom/e/a/a/a/a/a/g;
.source "ChangeAnimationInfo.java"


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/e/a/a/a/a/a/g;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 28
    iput-object p2, p0, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 29
    iput p3, p0, Lcom/e/a/a/a/a/a/e;->c:I

    .line 30
    iput p4, p0, Lcom/e/a/a/a/a/a/e;->d:I

    .line 31
    iput p5, p0, Lcom/e/a/a/a/a/a/e;->e:I

    .line 32
    iput p6, p0, Lcom/e/a/a/a/a/a/e;->f:I

    .line 33
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, p1, :cond_0

    .line 43
    iput-object v2, p0, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, p1, :cond_1

    .line 46
    iput-object v2, p0, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_2

    .line 49
    iput v1, p0, Lcom/e/a/a/a/a/a/e;->c:I

    .line 50
    iput v1, p0, Lcom/e/a/a/a/a/a/e;->d:I

    .line 51
    iput v1, p0, Lcom/e/a/a/a/a/a/e;->e:I

    .line 52
    iput v1, p0, Lcom/e/a/a/a/a/a/e;->f:I

    .line 54
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChangeInfo{, oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/e/a/a/a/a/a/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/e/a/a/a/a/a/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/e/a/a/a/a/a/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/e/a/a/a/a/a/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
