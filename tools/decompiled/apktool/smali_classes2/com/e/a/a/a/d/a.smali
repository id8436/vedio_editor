.class public abstract Lcom/e/a/a/a/d/a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AbstractDraggableItemViewHolder.java"

# interfaces
.implements Lcom/e/a/a/a/b/f;


# instance fields
.field private mDragStateFlags:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getDragStateFlags()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/e/a/a/a/d/a;->mDragStateFlags:I

    return v0
.end method

.method public setDragStateFlags(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/e/a/a/a/d/a;->mDragStateFlags:I

    .line 36
    return-void
.end method
