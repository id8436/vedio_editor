.class public Lcom/alertdialogpro/internal/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 563
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alertdialogpro/internal/AlertController$RecycleListView;->a:Z

    .line 564
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 567
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alertdialogpro/internal/AlertController$RecycleListView;->a:Z

    .line 568
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 571
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alertdialogpro/internal/AlertController$RecycleListView;->a:Z

    .line 572
    return-void
.end method
