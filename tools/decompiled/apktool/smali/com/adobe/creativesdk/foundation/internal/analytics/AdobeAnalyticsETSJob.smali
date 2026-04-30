.class public Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;
.super Lcom/a/a/a/r;
.source "AdobeAnalyticsETSJob.java"


# static fields
.field public static final PRIORITY:I = 0x1


# instance fields
.field private eventJSON:Ljava/lang/String;

.field retryCount:I

.field sendStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/a/a/a/ac;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/a/a/a/ac;-><init>(I)V

    invoke-virtual {v0}, Lcom/a/a/a/ac;->a()Lcom/a/a/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/ac;->b()Lcom/a/a/a/ac;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/a/r;-><init>(Lcom/a/a/a/ac;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->eventJSON:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->sendStatus:I

    .line 46
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->retryCount:I

    .line 52
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->eventJSON:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public onAdded()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected onCancel(ILjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    return-void
.end method

.method public onRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->retryCount:I

    .line 63
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->eventJSON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->sendEvent(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->sendStatus:I

    .line 67
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->sendStatus:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    .line 69
    :try_start_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEvent;

    const-string/jumbo v1, "app.project_error"

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyErrorDescription:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->eventJSON:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEvent;->addEventParam(Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;Ljava/lang/String;)V

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->eventJSON:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v2, "project"

    const-string/jumbo v3, "csdkandroid-service"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v2, "time"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/Util;->getDateTimeForIngest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v2, "ingesttype"

    const-string/jumbo v3, "dunamis"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v2

    .line 76
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentProductionUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    if-ne v2, v3, :cond_1

    .line 77
    const-string/jumbo v2, "environment"

    const-string/jumbo v3, "prod"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :goto_0
    const-string/jumbo v2, "data"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEvent;->data:Ljava/util/Map;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->eventJSON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->sendEvent(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    .line 87
    :cond_0
    :goto_1
    return-void

    .line 79
    :cond_1
    const-string/jumbo v2, "environment"

    const-string/jumbo v3, "stage"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected shouldReRunOnThrowable(Ljava/lang/Throwable;II)Lcom/a/a/a/ae;
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->sendStatus:I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->sendStatus:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;->retryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 97
    new-instance v0, Lcom/a/a/a/ae;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/a/a/a/ae;-><init>(Z)V

    .line 99
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/a/a/a/ae;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/a/ae;-><init>(Z)V

    goto :goto_0
.end method
