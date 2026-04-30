.class Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xf
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 997
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasOnClickListeners(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1000
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    return v0
.end method
