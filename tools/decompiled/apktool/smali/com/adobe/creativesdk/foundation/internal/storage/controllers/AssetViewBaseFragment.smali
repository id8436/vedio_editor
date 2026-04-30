.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "AssetViewBaseFragment.java"


# static fields
.field protected static tabLayoutLoki:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public setVisibilityTab(Z)V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->tabLayoutLoki:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    if-eqz v0, :cond_0

    .line 32
    if-eqz p1, :cond_1

    .line 33
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->tabLayoutLoki:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->setVisibility(I)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->tabLayoutLoki:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->setVisibility(I)V

    goto :goto_0
.end method
