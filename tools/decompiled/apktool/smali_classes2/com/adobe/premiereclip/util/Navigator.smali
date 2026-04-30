.class public Lcom/adobe/premiereclip/util/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goToLoginActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 62
    const-class v0, Lcom/adobe/premiereclip/TourViewActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/adobe/premiereclip/util/Navigator;->launchActivity(Landroid/app/Activity;Ljava/lang/Class;Z)V

    .line 63
    return-void
.end method

.method public static goToMainActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 66
    const-class v0, Lcom/adobe/premiereclip/MainActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/adobe/premiereclip/util/Navigator;->launchActivity(Landroid/app/Activity;Ljava/lang/Class;Z)V

    .line 67
    return-void
.end method

.method public static goToSplashActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 58
    const-class v0, Lcom/adobe/premiereclip/SplashScreenActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/adobe/premiereclip/util/Navigator;->launchActivity(Landroid/app/Activity;Ljava/lang/Class;Z)V

    .line 59
    return-void
.end method

.method private static launchActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/util/Navigator;->launchActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;ZLcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;Z)V

    .line 51
    return-void
.end method

.method private static launchActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;ZLcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            "Z",
            "Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    if-eqz p3, :cond_0

    .line 41
    const v2, 0x4008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    if-eqz p5, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 47
    :cond_2
    return-void
.end method

.method private static launchActivity(Landroid/app/Activity;Ljava/lang/Class;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/util/Navigator;->launchActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;ZLcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;Z)V

    .line 55
    return-void
.end method
