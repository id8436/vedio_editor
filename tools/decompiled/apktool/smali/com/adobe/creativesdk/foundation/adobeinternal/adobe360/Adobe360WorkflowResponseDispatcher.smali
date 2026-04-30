.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowResponseDispatcher;
.super Ljava/lang/Object;
.source "Adobe360WorkflowResponseDispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchResponse(Landroid/app/Activity;Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V
    .locals 6

    .prologue
    .line 45
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getActionType(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    move-result-object v0

    .line 46
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getResultCode(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)I

    move-result v1

    .line 49
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSecondaryAppComplete360WorkflowEvent;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->getActionId()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getETSCompleteActionType(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getCallingAppPackageName(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSecondaryAppComplete360WorkflowEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSecondaryAppComplete360WorkflowEvent;->endAndTrackEvent()V

    .line 54
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEmbed:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    if-ne v0, v2, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
