.class public Lcom/behance/sdk/mobeta/android/dslv/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKABLE_CHILD_INDEX:I = 0x1


# instance fields
.field private child:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/CheckableLinearLayout;->child:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/CheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/CheckableLinearLayout;->child:Landroid/widget/Checkable;

    .line 21
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/CheckableLinearLayout;->child:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 31
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/CheckableLinearLayout;->child:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 36
    return-void
.end method
