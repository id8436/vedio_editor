.class public Lcom/learnncode/mediachooser/c/c;
.super Lcom/learnncode/mediachooser/c/a;
.source "GridViewHolder.java"


# instance fields
.field private a:Landroid/widget/CheckedTextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/learnncode/mediachooser/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CheckedTextView;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/learnncode/mediachooser/c/c;->a:Landroid/widget/CheckedTextView;

    .line 19
    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/learnncode/mediachooser/c/c;->b:Landroid/widget/TextView;

    .line 27
    return-void
.end method

.method public c()Landroid/widget/CheckedTextView;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/learnncode/mediachooser/c/c;->a:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method public d()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/learnncode/mediachooser/c/c;->b:Landroid/widget/TextView;

    return-object v0
.end method
