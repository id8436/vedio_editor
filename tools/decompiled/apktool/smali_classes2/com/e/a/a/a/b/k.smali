.class Lcom/e/a/a/a/b/k;
.super Lcom/e/a/a/a/b/c;
.source "LeftRightEdgeEffectDecorator.java"


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/e/a/a/a/b/c;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 30
    :pswitch_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
