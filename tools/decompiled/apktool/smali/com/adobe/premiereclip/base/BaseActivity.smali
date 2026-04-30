.class public abstract Lcom/adobe/premiereclip/base/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p1}, Lg/a/a/a/c;->a(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public abstract getActivityName()Ljava/lang/String;
.end method
