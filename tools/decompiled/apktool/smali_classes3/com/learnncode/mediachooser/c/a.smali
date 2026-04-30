.class public Lcom/learnncode/mediachooser/c/a;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/learnncode/mediachooser/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/learnncode/mediachooser/c/a;->b:Landroid/widget/ImageView;

    .line 26
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/learnncode/mediachooser/c/a;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public b()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/learnncode/mediachooser/c/a;->b:Landroid/widget/ImageView;

    return-object v0
.end method
