.class public Lcom/learnncode/mediachooser/c/b;
.super Lcom/learnncode/mediachooser/c/a;
.source "BucketGridViewHolder.java"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/learnncode/mediachooser/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/learnncode/mediachooser/c/b;->a:Landroid/widget/TextView;

    .line 14
    return-void
.end method

.method public c()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/learnncode/mediachooser/c/b;->a:Landroid/widget/TextView;

    return-object v0
.end method
