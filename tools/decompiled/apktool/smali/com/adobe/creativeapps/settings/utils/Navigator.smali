.class public Lcom/adobe/creativeapps/settings/utils/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goToCloudPickerActivity(Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 40
    return-void
.end method

.method private static launchActivity(Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 29
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/adobe/creativeapps/settings/utils/Navigator;->launchActivity(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;ZLcom/adobe/creativeapps/settings/utils/Navigator$LAUNCH_STYLE;Z)V

    .line 30
    return-void
.end method

.method private static launchActivity(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/adobe/creativeapps/settings/utils/Navigator;->launchActivity(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;ZLcom/adobe/creativeapps/settings/utils/Navigator$LAUNCH_STYLE;Z)V

    .line 34
    return-void
.end method

.method private static launchActivity(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;ZLcom/adobe/creativeapps/settings/utils/Navigator$LAUNCH_STYLE;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;I",
            "Landroid/os/Bundle;",
            "Z",
            "Lcom/adobe/creativeapps/settings/utils/Navigator$LAUNCH_STYLE;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 16
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    const/high16 v0, 0x1000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    if-eqz p4, :cond_0

    .line 20
    const v0, 0x4008000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    :cond_1
    invoke-virtual {p0, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 25
    if-eqz p6, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    :cond_2
    return-void
.end method
