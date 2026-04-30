.class public abstract Lcom/adobe/creativeapps/settings/activity/base/SettingsBaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SettingsBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    invoke-static {p1}, Lg/a/a/a/c;->a(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public abstract getActivityName()Ljava/lang/String;
.end method

.method protected openUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/base/SettingsBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 19
    return-void
.end method
