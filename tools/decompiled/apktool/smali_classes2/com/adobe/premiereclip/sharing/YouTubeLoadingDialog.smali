.class public Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;
.super Landroid/app/Dialog;
.source "YouTubeLoadingDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f04011e

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;->setContentView(I)V

    .line 38
    const v0, 0x7f0a0527

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;->setTitle(I)V

    .line 39
    return-void
.end method
