.class public Lcom/behance/sdk/BehanceSDKEditProfileOptions;
.super Ljava/lang/Object;
.source "BehanceSDKEditProfileOptions.java"


# instance fields
.field private enableAlternateImageSelectionSources:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/BehanceSDKEditProfileOptions;->enableAlternateImageSelectionSources:Z

    return-void
.end method


# virtual methods
.method public isEnableAlternateImageSelectionSources()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/behance/sdk/BehanceSDKEditProfileOptions;->enableAlternateImageSelectionSources:Z

    return v0
.end method

.method public setEnableAlternateImageSelectionSources(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/behance/sdk/BehanceSDKEditProfileOptions;->enableAlternateImageSelectionSources:Z

    .line 37
    return-void
.end method
