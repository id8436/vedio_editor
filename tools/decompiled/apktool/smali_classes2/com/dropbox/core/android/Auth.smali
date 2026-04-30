.class public Lcom/dropbox/core/android/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOAuth2Token()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 74
    sget-object v2, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 76
    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    const-string/jumbo v1, "ACCESS_TOKEN"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    const-string/jumbo v1, "ACCESS_SECRET"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string/jumbo v4, "UID"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    if-eqz v3, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v3, ""

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    const-string/jumbo v3, ""

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 87
    goto :goto_0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 94
    sget-object v1, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 96
    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    const-string/jumbo v2, "ACCESS_TOKEN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string/jumbo v3, "ACCESS_SECRET"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    const-string/jumbo v4, "UID"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    if-eqz v2, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    const-string/jumbo v2, ""

    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 107
    goto :goto_0
.end method

.method public static startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-static {p0, p1, v0, v0, v0}, Lcom/dropbox/core/android/Auth;->startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/dropbox/core/android/AuthActivity;->checkAppBeforeAuth(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 54
    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "desiredUid cannot be present in alreadyAuthedUids"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    const-string/jumbo v6, "1"

    .line 60
    const-string/jumbo v5, "www.dropbox.com"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 61
    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/android/AuthActivity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 68
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
