.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher;
.super Ljava/lang/Object;
.source "Adobe360WorkflowRequestDispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchRequest(Landroid/app/Activity;Landroid/content/Intent;ILcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V
    .locals 7

    .prologue
    .line 97
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getActionType(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    move-result-object v6

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {p0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPrimaryAppStart360WorkflowEvent;

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getActionId()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getActionType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getETSStartActionType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher;->getSubtype(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPrimaryAppStart360WorkflowEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSPrimaryAppStart360WorkflowEvent;->endAndTrackEvent()V

    .line 106
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEmbed:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    if-eq v6, v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEmbedN:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    if-ne v6, v0, :cond_1

    .line 108
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$1;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$1;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 142
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$2;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 128
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAppNotFound360WorkflowEvent;

    invoke-direct {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAppNotFound360WorkflowEvent;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAppNotFound360WorkflowEvent;->endAndTrackEvent()V

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 134
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$3;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher$3;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static getSubtype(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 50
    .line 52
    :try_start_0
    const-string/jumbo v0, "360#action"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 53
    const-string/jumbo v2, "action_sub_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "Adobe360WorkflowRequestDispatcher"

    invoke-static {v2, v3, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static isAppInstalled(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;)Z
    .locals 5

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowRequestDispatcher;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 77
    :goto_0
    return v0

    .line 73
    :catch_0
    move-exception v1

    .line 75
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "Adobe360WorkflowRequestDispatcher"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 43
    :catch_0
    move-exception v1

    goto :goto_0
.end method
