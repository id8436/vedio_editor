.class Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager$1;
.super Ljava/util/TimerTask;
.source "AdobeAnalyticsETSJobManager.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->access$000(Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->access$100(Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;)V

    .line 112
    return-void
.end method
